@extends('main')

@section('content')
<div id="fullpage">

    @foreach ($pageGouvernance as $pageGouvernance)
    <div class="section" style="background-image: url('/assets/images/{{ $pageGouvernance->image }}'); background-size: cover; background-repeat: no-repeat; background-position: center;">
        <div class="content ghins_content gouv_content">
            {!! $pageGouvernance->html !!}
            @auth
            @if (Auth::check() && Auth::user()->isAdmin())
            <br>
            <a href="{{ route('edit.pageGouvernance', $pageGouvernance->id) }}" class="btn btn-primary">Edit</a>
            <a href="{{ route('delete.pageGouvernance', $pageGouvernance->id) }}" class="btn btn-danger">Supprimer</a>
            @endif
            @endauth
        </div>
    </div>

    @endforeach
</div>
@auth
@if (Auth::check() && Auth::user()->isAdmin())
<a href="{{ route('create.pageGouvernance') }}" class="btn btn-success sticky-button">Nouvelle Page</a>
@endif
@endauth

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/3.1.2/fullpage.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/3.1.2/fullpage.min.js"></script>

<script>
    $(document).ready(function() {
        new fullpage('#fullpage', {
            navigation: true,
            navigationPosition: 'right',
        });
    });
</script>
@endsection