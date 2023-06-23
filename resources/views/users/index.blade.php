@extends('main')

@section('content')
<div class="container">
    <h2>User Details</h2>

    @if(session('success'))
    <div class="alert alert-success">
        {{ session('success') }}
    </div>
    @endif

    <table class="table">
        <thead>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>{{ $user->name }}</td>
                <td>{{ $user->email }}</td>
                <td>{{ $user->status ? 'Admin' : 'Normal' }}</td>
            </tr>
        </tbody>
    </table>
</div>
@endsection