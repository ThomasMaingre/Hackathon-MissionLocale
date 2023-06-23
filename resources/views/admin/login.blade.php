@extends('main')

@section('content')
<div class="container">
    <h2>Connexion au pannel d'administration</h2>

    @if(session('success'))
    <div class="alert alert-success">
        {{ session('success') }}
    </div>
    @endif

    <form action="{{ route('admin.login.submit') }}" method="POST">
        @csrf

        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" name=" email">
        </div>

        <div class="mb-3">
            <label for="password" class="form-label">Mot de passe</label>
            <input type="password" class="form-control" id="password" name="password">
        </div>

        <!-- Add form fields here -->

        <button type="submit" class="btn btn-primary">Se connecter</button>
    </form>
</div>
@endsection