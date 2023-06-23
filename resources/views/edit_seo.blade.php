
@extends('main')

@section('content')
<div class="container">
    <h1>Editer le SEO </h1>

    <form action="/seo_update" method="POST" class="my-4 form_seo">
        @csrf
    <div class="form-group">
        <label for="seo_accueil" style="color:white">SEO page d'accueil</label>
        <textarea class="form-control" id="seo_accueil" name="seo_accueil" style="height:200px">{{ $seo->html_accueil }}</textarea>
    </div>
    <div class="form-group">
        <label for="seo_ghins" style="color:white"><br>SEO page GHINS</label>
        <textarea class="form-control" id="seo_ghins" name="seo_ghins" style="height:200px">{{ $seo->html_ghins }}</textarea>
    </div>
    <button type="submit" class="btn btn-primary">Enregistrer les modifications</button>
</form>

</div>
@endsection