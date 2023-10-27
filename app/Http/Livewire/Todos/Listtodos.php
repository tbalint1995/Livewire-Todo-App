<?php

namespace App\Http\Livewire\Todos;

use Livewire\Component;
use App\Models\User;
use Illuminate\Support\Facades\Config;

class ListTodos extends Component
{

    public $todos, $title, $category, $start_date, $end_date,  $status, $priority, $user, $modalOpened = false;

    protected $listeners = ['notify'];

    function __construct()
    {
        $this->user = User::find(auth()->user()->id);
    }

    public function filterList()
    {

        return $this->user->todos()->where(function ($query) {
            //status
            if (is_numeric($this->status)) {
                $query->where('status', $this->status);
            }

            //priority
            if (is_numeric($this->priority)) {
                $query->where('priority', $this->priority);
            }

            //category
            if (strlen($this->category) > 0) {
                $query->where('category', $this->category);
            }

            //start_date
            if ($this->start_date)
                $query->where('start_date', '>=', $this->start_date);
            //end_date
            if ($this->end_date)
                $query->where('end_date', '<=', $this->end_date);
        })->get();
    }

    public function render()
    {
        $this->todos = $this->filterList();
        return view('livewire.todos.listtodos');
    }

    public function create()
    {

        $this->resetInputFields();
        $this->openModal();
    }

    public function openModal()
    {
        $this->modalOpened = true;
    }

    public function closeModal()
    {
        $this->modalOpened = false;
    }

    private function resetInputFields()
    {
        $this->title = '';
        $this->category = '';
        $this->start_date = '';
        $this->end_date = '';
    }

    public function store()
    {

        $validated = $this->validate(Config::get('todo.rules'));

        $this->user->todos()->create($validated);

        session()->flash('message', __('Todo Created Successfully.'));

        $this->closeModal();
        $this->resetInputFields();
    }

    public function notify($message)
    {
        session()->flash("message", $message);
    }

    public function clearMessage()
    {
        session()->forget('message');
    }
}
