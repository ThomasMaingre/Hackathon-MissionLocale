<!DOCTYPE html>
<html>

<head>
@include("_seo_ghins")
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/e3a31970bb.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/assets/css/style.css">
    <link rel="stylesheet" href="/assets/css/style_ghins.css">
    <script src="/assets/js/custom.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="{{ asset('ckeditor/ckeditor.js') }}"></script>
    <title>Hackaton</title>
</head>

<body>
    <!-- Include your navigation bar or other common elements here -->
    <div class="sticky-top">
        @include('_navbar_ghins')
        @include('_separator')
    </div>


    @yield('content')

    <!-- Include any other common elements or scripts here -->

    @include('_contact')

</body>

</html>