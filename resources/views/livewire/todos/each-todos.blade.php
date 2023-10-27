<div class="bg-white overflow-hidden shadow-xl sm:rounded-lg mb-4 flex px-8 py-8 items-center cursor-pointer justify-between">

    {{-- Each Todo -> changeStatus / changePriority --}}
    <div class="flex items-center">
        <div class="mx-1">
            <label for="status" class="block text-sm font-medium leading-6 text-gray-900">Status</label>

            <select wire:change="changeStatus({{ $todo->id }})" wire:model="status" class="relative cursor-default rounded-md bg-white py-1.5 pl-3 pr-10 text-left text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 focus:outline-none focus:ring-2 focus:ring-indigo-500 sm:text-sm sm:leading-6 mx-1">
                @foreach (Config::get('todo.statuses') as $index=>$item)
                <option value="{{$index}}">{{$item}}</option>
                @endforeach
            </select>
        </div>

        <div class="mx-1">
            <label for="priority" class="block text-sm font-medium leading-6 text-gray-900">Priority</label>

            <select wire:change="changePriority({{ $todo->id }})" wire:model="priority" class="relative cursor-default rounded-md bg-white py-1.5 pl-3 pr-10 text-left text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 focus:outline-none focus:ring-2 focus:ring-indigo-500 sm:text-sm sm:leading-6 mx-1">
                @foreach (Config::get('todo.priorities') as $index=>$item)
                <option value="{{$index}}">{{$item}}</option>
                @endforeach
            </select>
        </div>
    </div>

    {{-- Each Todo -> Datum --}}
    <div class="max-w-md">
        <div class="mt-7 mb-1">
            <label for="start_date" class="block text-sm font-medium leading-6 text-gray-900 ml-1 underline underline-offset-2 decoration-indigo-500 decoration-dashed decoration-2">Start Date:</label>
            <div class="select-none rounded-md bg-white py-1.5 pl-3 pr-1 text-left text-gray-900 drop-shadow-md sm:text-sm sm:leading-6 shadow-inner">
            <span>
                {{ \Carbon\Carbon::parse($todo->start_date)->format('m / d / Y h:i:s A') }}
            </span>
            </div>
        </div>
        <div class="mt-7 mb-1">
            <label for="end_date" class="block text-sm font-medium leading-6 text-gray-900 ml-1 underline underline-offset-2 decoration-indigo-500 decoration-dashed decoration-2">End Date:</label>
            <div class="select-none rounded-md bg-white py-1.5 pl-3 pr-1 text-left text-gray-900 drop-shadow-md sm:text-sm sm:leading-6 shadow-inner">
            <span>
                {{ \Carbon\Carbon::parse($todo->end_date)->format('m / d / Y h:i:s A') }}
            </span>
            </div>
        </div>
    </div>

    {{-- Each Todo -> Title --}}
    <div class="m-2">
        <label for="title" class="block text-sm font-medium leading-6 text-gray-900 ml-1">Title</label>
        <div class="select-none cursor-default rounded-md bg-white py-1.5 pl-3 pr-10 text-gray-900 shadow-sm sm:text-sm sm:leading-6 border-solid border-2 border-indigo-600">{{ $todo->title }}</div>
    </div>

    {{-- Each Todo -> Category --}}
    <div class="m-2">
        <label for="category" class="block text-sm font-medium leading-6 text-gray-900 ml-1">Category</label>
        <div class="select-none cursor-default rounded-md bg-white py-1.5 pl-3 pr-10 text-gray-900 shadow-sm sm:text-sm sm:leading-6 border-solid border-2 border-pink-600">{{ $todo->category }}</div>
    </div>

    {{-- Each Todo - Edit -> Delete --}}
    <div class="flex space-x-4 text-sm ml-4">
        <button wire:click="$set('editModal', true)">Edit</button>
        <button wire:click="$set('deleteModal', true)" class="text-red-600">Delete</button>
    </div>

    {{-- Edit Modal --}}
    <x-dialog-modal wire:model="editModal">
        <x-slot name="title">
            Edit Todo
        </x-slot>

        <x-slot name="content">

            {{-- Title --}}
            <div class="mb-4">
                <label class="block text-gray-700 text-sm font-bold mb-2">Title:</label>
                <input type="text" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" placeholder="Enter title" wire:model="title">
                @error('title')
                <span class="text-red-500">{{ $message }}</span>
                @enderror
            </div>

            {{-- Category --}}
            <div class="mb-4">
                <label class="block text-gray-700 text-sm font-bold mb-2">Category:</label>
                <input type="text" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" placeholder="Enter category" wire:model="category">
                @error('category')
                <span class="text-red-500">{{ $message }}</span>
                @enderror
            </div>

            {{-- Datum --}}
            <div class="max-w-lg">
                <div class="mt-1 mb-7">
                    <label for="start_date" class="block text-sm font-medium leading-6 text-gray-900 ml-1">Start Date:hello</label>
                    <input type="datetime-local" wire:model="start_date">
                    @error('start_date')
                    <span class="text-red-500">{{ $message }}</span>
                    @enderror
                </div>
                <div class="mt-7 mb-1">
                    <label for="end_date" class="block text-sm font-medium leading-6 text-gray-900 ml-1">End Date:</label>
                    <input type="datetime-local" wire:model="end_date">
                    @error('end_date')
                    <span class="text-red-500">{{ $message }}</span>
                    @enderror
                </div>
            </div>
        </x-slot>


        <x-slot name="footer">
            <x-secondary-button wire:click="$toggle('editModal')" wire:loading.attr="disabled">
                Cancel
            </x-Secondary-button>

            <x-button class="ml-2" wire:click="update" wire:loading.attr="disabled">
                Submit
            </x-button>
        </x-slot>
    </x-dialog-modal>

    {{-- Delete Modal --}}
    <x-dialog-modal wire:model="deleteModal">
        <x-slot name="title">
            Delete Modal
        </x-slot>

        <x-slot name="content">
            <div>Are you sure you want to delete <strong class="ring-2 ring-blue-500/50 m-1 p-1 rounded-full">{{$todo->title}}</strong>? </div>
        </x-slot>

        <x-slot name="footer">
            <x-secondary-button wire:click="$toggle('deleteModal')" wire:loading.attr="disabled">
                Cancel
            </x-secondary-button>

            <x-danger-button class="ml-3" wire:click="delete" wire:loading.attr="disabled">
                Delete Todo
            </x-danger-button>
        </x-slot>
    </x-dialog-modal>
</div>