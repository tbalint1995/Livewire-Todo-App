<div>
    {{-- Header --}}
    <header class="bg-white shadow">
        <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between">
                <h2 class="font-semibold text-xl text-gray-800 leading-tight">{{ __('Todos') }}</h2>

                <button wire:click="create" type="button" class="inline-flex items-center px-4 py-2 bg-gray-800 border border-transparent rounded-md font-semibold text-xs text-white uppercase tracking-widest hover:bg-gray-700 active:bg-gray-900 focus:outline-none focus:border-gray-900 focus:ring focus:ring-gray-300 disabled:opacity-25 transition">New
                    Todo
                </button>

                {{-- Create Modal --}}
                <x-dialog-modal wire:model="modalOpened">
                    <x-slot name="title">
                        New Todo
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
                                <label for="start_date" class="block text-sm font-medium leading-6 text-gray-900 ml-1">Start Date:</label>
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
                        <x-secondary-button wire:click="$toggle('modalOpened')" wire:loading.attr="disabled">
                            Cancel
                        </x-Secondary-button>

                        <x-button class="ml-2" wire:click="store" wire:loading.attr="disabled">
                            Submit
                        </x-button>
                    </x-slot>
                </x-dialog-modal>

            </div>
        </div>
    </header>


    {{-- Search --}}
    <div class="py-12">
        <div class="max-w-4xl mx-auto sm:px-6 lg:px-8">
            <label for="price" class="block text-sm font-medium leading-6 text-gray-900">Filter</label>
            <div class="relative mt-2 rounded-md shadow-sm bg-white ">
                <div class="flex items-center">

                    {{-- Filter --}}

                    {{-- Status --}}
                    <div class="mx-1">
                        <select wire:change="filterList()" wire:model="status" class="h-full rounded-md border-0 bg-transparent py-0 pl-2 pr-7 text-gray-500 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm">
                        <option value="">Status (all)</option>
                            @foreach (Config::get('todo.statuses') as $index => $item)
                            <option value="{{ $index }}">{{ $item }}</option>
                            @endforeach
                        </select>
                    </div>

                    {{-- Priority --}}
                    <div class="mx-1">
                        <select wire:change="filterList()" wire:model="priority" class="h-full rounded-md border-0 bg-transparent py-0 pl-2 pr-7 text-gray-500 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm">
                        <option value="">Priorities (all)</option>
                            @foreach (Config::get('todo.priorities') as $index => $item)
                            <option value="{{ $index }}">{{ $item }}</option>
                            @endforeach
                        </select>
                    </div>

                    {{-- Start Date / End Date --}}
                    <div class="flex rounded-md shadow-sm border-solid border-dashed border-2 border-indigo-600">
                        <div class="mx-1">
                            <select wire:change="filterList()" wire:model="start_date" class="h-full rounded-md border-0 bg-transparent py-0 pl-2 pr-7 text-gray-500 focus:ring-2 focus:ring-inset focus:ring-pink-600 sm:text-sm">
                            <option value="">Start date (all)</option>
                                @foreach (auth()->user()->todos as $todo)
                                @php
                                $start_date = \Carbon\Carbon::parse($todo->start_date);
                                @endphp
                                <option value="{{ $todo->start_date }}">
                                     {{ $start_date->month }} / {{ $start_date->day }} / {{ $start_date->year }} {{ $start_date->format('h:i:s A') }}
                                </option>
                                @endforeach
                            </select>
                        </div>

                        <div class="mx-1">
                            <select wire:change="filterList()" wire:model="end_date" class="h-full rounded-md border-0 bg-transparent py-0 pl-2 pr-7 text-gray-500 focus:ring-2 focus:ring-inset focus:ring-pink-600 sm:text-sm">
                            <option value="">End date (all)</option>
                                @foreach (auth()->user()->todos as $todo)
                                @php
                                $end_date = \Carbon\Carbon::parse($todo->end_date);
                                @endphp
                                <option value="{{ $todo->end_date }}">
                                {{ $end_date->month }} / {{ $end_date->day }} / {{ $end_date->year }} {{ $end_date->format('h:i:s A') }}
                                </option>
                                @endforeach
                            </select>
                        </div>

                    </div>

                    {{-- Category --}}
                    <div class="mx-1">
                        <select wire:change="filterList()" wire:model="category" class="h-full rounded-md border-0 bg-transparent py-0 pl-2 pr-7 text-gray-500 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm">
                        <option value="">Category (all)</option>
                            @foreach (auth()->user()->todos as $todo)
                            <option value="{{ $todo->category }}" @if($todo->category == $category) selected @endif>{{ $todo->category }}</option>
                            @endforeach
                        </select>
                    </div>

                </div>
            </div>
        </div>
    </div>


    <div class="py-12">
        <div class="max-w-6xl mx-auto sm:px-6 lg:px-8">
            @if (session()->has('message'))
            <div wire:poll="clearMessage" class="bg-indigo-100 border-t-4 border-indigo-500 rounded-b text-indigo-900 px-4 py-3 shadow-md text-sm fixed bottom-4 right-4" role="alert">
                {{ session('message') }}
            </div>
            @endif

            @if ($todos->count() > 0)
            @foreach ($todos as $todo)
            <livewire:todos.each-todos :todo="$todo" :wire:key="'each-todo-'.$todo->id">
                @endforeach
                @else
                <div class="text-center">Nothing found</div>
                @endif
        </div>
    </div>
</div>