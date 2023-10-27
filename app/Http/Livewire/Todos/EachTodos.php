<?php

namespace App\Http\Livewire\Todos;

use Livewire\Component;
use App\Models\Todo;
use App\Models\User;
use Illuminate\Support\Facades\Config;

class EachTodos extends Component
{
    public Todo $todo;
    public $title, $category, $start_date, $end_date, $status, $priority, $user, $id, $editModal = false, $deleteModal = false;

    function __construct()
    {
        $this->user = User::find(auth()->user()->id);
    }

    public function mount($todo)
    {
        $this->id = $todo->id;
        $this->title = $todo->title;
        $this->category = $todo->category;
        $this->start_date = $todo->start_date;
        $this->end_date = $todo->end_date;
        $this->status = $todo->status;
        $this->priority = $todo->priority;
    }

    public function render()
    {
        $todo = $this->user->todos()->find($this->id);

        if ($todo) {
            $this->todo = $todo;
        }

        return view('livewire.todos.each-todos');
    }

    public function update()
    {
        $validated = $this->validate(Config::get('todo.rules'));

        $this->user->todos()->find($this->id)->update($validated);

        $this->todo->update([
            'title' => $this->title,
            'category' => $this->category,
            'start_date' => $this->start_date,
            'end_date' => $this->end_date,
        ]);
        $this->editModal = false;
        $this->dispatch('notify', __('Todo Updated Successfully.'));
    }

    public function delete()
    {
        $this->todo->delete();
        $this->dispatch('notify', __('Todo Deleted Successfully.'));
    }

    public function changePriority()
    {
        in_array(
            $this->priority,
            array_keys(Config::get('todo.priorities'))
        ) and call_user_func(function () {
            $item = $this->user->todos()->find($this->id);
            $item->priority = $this->priority;
            $item->save();

            $this->dispatch('notify', __('Todo priority changed Successfully.'));
        });
    }
    
    public function changeStatus()
    {
        in_array(
            $this->status,
            array_keys(Config::get('todo.statuses'))
        ) or abort(403);
        $item = $this->user->todos()->find($this->id);
        $item->status = $this->status;
        $item->save();

        $this->dispatch('notify', __('Todo status changed Successfully.'));
    }
}
