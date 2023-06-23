<!DOCTYPE html>
<html>

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/e3a31970bb.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/assets/css/style.css">
    <link rel="stylesheet" href="/assets/css/style_index.css">
    <script src="/assets/js/custom.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="{{ asset('ckeditor/ckeditor.js') }}"></script>
    <title>Hackaton</title>
</head>

<body>
<!-- Include your navigation bar or other common elements here -->

@include('_navbar')
@include('_separator')


<div class="container mt-5">
    <h1 class="mb-4">Résumé sur la protection des données et des informations vis-à-vis de la RGPD</h1>
    <div class="card">
        <div class="card-body">
            <h5 class="card-title">Le Règlement général sur la protection des données (RGPD)</h5>
            <p class="card-text">Le RGPD est une réglementation de l'Union européenne (UE) qui vise à renforcer et à harmoniser la protection des données personnelles des individus au sein de l'UE. Il est entré en vigueur le 25 mai 2018 et a un impact significatif sur la manière dont les organisations collectent, traitent et stockent les données personnelles.</p>

            <h5 class="card-title">Principaux points à retenir sur la RGPD :</h5>
            <ol class="card-text">
                <li>Portée et définitions</li>
                <li>Données personnelles</li>
                <li>Principes fondamentaux</li>
                <li>Droits des individus</li>
                <li>Consentement</li>
                <li>Sécurité des données</li>
                <li>Transferts internationaux de données</li>
                <li>Responsabilité et sanctions</li>
            </ol>

            <p class="card-text">La RGPD vise à assurer la protection des données personnelles, renforcer les droits des individus sur leurs données, garantir la sécurité des données et promouvoir la responsabilité des organisations.</p>
        </div>
    </div>
</div>

<!-- Include any other common elements or scripts here -->

@include('_contact')

</body>

</html>
