<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Detail</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <!-- Custom CSS -->
    <style>
        body {
            background-color: #e3f2fd; /* Light gray background */
        }
        .card {
            border-radius: 15px; /* Rounded corners for the card */
            background-color: #fce4ec; /* Soft blue background color */
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1); /* Soft shadow effect */
        }
        /* Custom styles for smaller screens */
        @media (max-width: 575.98px) {
            .card {
                margin-top: 1rem;
            }
            h1 {
                font-size: 1.5rem;
            }
        }
    </style>
</head>
<body>

<div class="container">
    <h1 class="mt-5 mb-3 text-center">Welcome to the Corporate World</h1>
    <div class="row justify-content-center">
        <div class="col-lg-6 col-md-8 col-sm-10">
            <div class="card border-0">
                <div class="card-body">
                    <h2 class="card-title text-center">Employee Information</h2>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item"><strong>ID:</strong> ${employee.id}</li>
                        <li class="list-group-item"><strong>Name:</strong> ${employee.name}</li>
                        <li class="list-group-item"><strong>Salary:</strong> ${employee.salary}</li>
                        <li class="list-group-item"><strong>Designation:</strong> ${employee.designation}</li>
                    </ul>
                    <div class="text-center">
                        <button type="button" onclick="goBack()" class="btn btn-success mt-3">Back</button>
                    </div>
                </div>
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