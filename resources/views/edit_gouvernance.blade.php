@extends('main')

@section('content')
<div class="container">
    <h1>Edit Page Ghin -> {{$pageGouvernance->id}}</h1>

    <form action="{{ route('update.pageGouvernance', $pageGouvernance->id) }}" method="POST">
        @csrf
        @method('PUT')

        <!-- Other form fields -->
        <div class="mb-3">
            <label for="image" class="form-label">Image (à mettre dans le dossier /assets/images) </label>
            <input type="text" class="form-control" id="image" name="image" value="{{ $pageGouvernance->image }}">
        </div>
        <div class="mb-3">
            <label for="position" class="form-label">Position (0 est la première)</label>
            <input type="text" class="form-control" id="position" name="position" value="{{ $pageGouvernance->position }}">
        </div>
        <div class="mb-3">
            <label for="html" class="form-label">Html</label>
            <textarea class="form-control ckeditor" id="html" name="html">{{ $pageGouvernance->html }}</textarea>
        </div>

        <!-- Other form fields -->

        <button type="submit" class="btn btn-primary">Update</button>
    </form>

</div>
@endsection