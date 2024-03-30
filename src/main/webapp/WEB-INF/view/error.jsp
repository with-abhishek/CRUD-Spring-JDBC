<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>ID Not Found</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <!-- Custom CSS -->
    <style>
    body {
        background-color: #e3f2fd; /* Light gray background */
    }
    </style>
</head>
<body>

<div class="container-fluid">
    <div class="row">
        <div class="col-12 text-left mt-3">
            <button type="button" onclick="goBack()" class="btn btn-success">Back</button>
        </div>
    </div>
    <div class="row justify-content-center">
        <div class="col-md-6 col-lg-4 col-xl-3">
            <div class="text-center mt-5">
                <h1>
                    Sorry !! <span id="id">${id}</span> ID is not present in my Database....
                </h1>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    function goBack() {
        window.history.back();
    }
</script>

<!-- Bootstrap JS and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>