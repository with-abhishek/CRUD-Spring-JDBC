<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
     body {
            background-color: #f5f5dc; /* Light gray color */
        }
    </style>
    
</head>
<body >
    <div class="container py-5">
        <h1 class="text-center">Edit Employee</h1>
        <div class="row justify-content-center">
            <div class="col-md-6">
                <form:form method="post" action="/Employee_Management_System/editsave" class="bg-success p-4 rounded" onsubmit="return validateForm()">
                    <form:hidden path="id"/>
                    <div class="mb-3">
                        <label for="name" class="form-label">Name:</label>
                        <form:input path="name" id="name" class="form-control" />
                    </div>
                    <div class="mb-3">
                        <label for="salary" class="form-label">Salary:</label>
                        <form:input path="salary" id="salary" class="form-control" />
                    </div>
                    <div class="mb-3">
                        <label for="designation" class="form-label">Designation:</label>
                        <form:input path="designation" id="designation" class="form-control" />
                    </div>
                    <div class="text-center">
                        <input type="submit" value="Edit Save" class="btn btn-primary" />
                        <button type="button" onclick="goBack()" class="btn btn-secondary ms-2">Back</button>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
    
    
     <script>
        function validateForm() {
            var name = document.getElementById("name").value;
            var salary = document.getElementById("salary").value;
            var designation = document.getElementById("designation").value;

            if (name === "" || salary === "" || designation === "") {
                alert("Please fill out all fields.");
                return false;
            }
            
            return true;
        }
        function goBack() {
            window.history.back();
        }
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
 
 