<?php

return [
    'rules' => [
        'title' => 'required|string|max:500',
        'category' => 'required|string|max:500',
        'start_date' => 'required|date',
        'end_date' => 'required|date|after:start_date',
    ],

    'statuses' => [
        'Active',  // 0 => 'Active'
        'Completed', // 1 => 'Completed'
        'Postponed', // 2 => 'Postponed'
    ],

    'priorities' => [
        'Low', // 0 => 'Low'
        'Medium', // 1 => 'Medium'
        'High' // 2 => 'High'
    ]
];
