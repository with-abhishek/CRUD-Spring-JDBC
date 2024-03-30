<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employees List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
     body {
            background-color: #e1f5fe; /* Light gray color */
        }
        /* Add hover effect to table rows */
        table.table-hover tbody tr:hover {
            background-color:#e9ecef  ;
        }
        /* Set background color for the table */
        table {
            background-color: #e0f7fa; /* Light gray color */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="text-center mt-0 mb-3">Employee List</h1>
        <div class="table-responsive">
            <table class="table table-hover table-striped mt-4">
                <thead>
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Name</th>
                        <th scope="col">Salary</th>
                        <th scope="col">Designation</th>
                        <th scope="col">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="emp" items="${list}">
                        <tr>
                            <td>${emp.id}</td>
                            <td>${emp.name}</td>
                            <td>${emp.salary}</td>
                            <td>${emp.designation}</td>
                            <td>
                                <a href="editemp/${emp.id}" class="btn btn-primary btn-sm">Edit</a>
                                <a href="deleteemp/${emp.id}" class="btn btn-danger btn-sm">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="row justify-content-center">
            <div class="text-center">
                <a href="empform" class="btn btn-success mt-3">Add New Employee</a>
                 <button type="button" onclick="goBack()" class="btn btn-success mt-3 ms-2">Back</button>
             </div>
        </div>

    </div>
    <script type="text/javascript">
    	 
    function goBack() {
		window.history.back();
	}
    
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
