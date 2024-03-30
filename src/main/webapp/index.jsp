 <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Employee Web Application</title>
  <!-- Bootstrap CSS -->
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom CSS -->
  <style>
    /* Custom styling for buttons */
    .btn-custom {
      background-color: #FF5733; /* Orange background */
      color: #fff; /* White text */
      border-color: #FF5733; /* Orange border */
    }
    .btn-custom:hover {
      background-color: #FF5733; /* Darker orange on hover */
      border-color: #FF5733; /* Darker orange border on hover */
    }
   
    body {
      background-color: #e6f2ff; /* Light gray color */
    }
  </style>
</head>
<body>

<header>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
      <!-- Logo or Application Name -->
      <a class="navbar-brand" href="#">Employee Web App</a>
      
      <!-- Toggle button for mobile navigation -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      
      <!-- Navigation Menu -->      
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
          <!-- Search Form -->
          <li class="nav-item">
            <form class="form-inline my-2 my-lg-0" action="search" method="post" required>
              <input class="form-control mr-sm-2" type="search" placeholder="Search by ID" aria-label="Search" name="id" required>
              <button class="btn btn-outline-success my-2 my-sm-0" type="submit" required >Search</button>
            </form>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</header>

<!-- Main Content Area -->
<div class="container py-5">
  <h1 class="text-center mt-5 mb-5">Employee Data</h1>
  <div class="row">
    <!-- Add Employee Button -->
    <div class="col-lg-6 mb-4">
      <div class="text-center">
        <a href="empform" class="btn btn-primary btn-block">Add Employee</a>
      </div>
    </div>
    <!-- View Employees Button -->
    <div class="col-lg-6 mb-4">
      <div class="text-center">
        <a href="viewemp" class="btn btn-primary btn-block">View Employees</a>
      </div>
    </div>
  </div>
</div>

<!-- Footer Section -->
<footer class="footer mt-auto py-3 bg-light">
  <div class="container text-center">
    <span class="text-muted">© 2024 Employee Web Application. All rights reserved.</span>
  </div>
</footer>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
 