<!doctype html>
<head>
    <title>Tasks</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <h1>Task Details</h1>
       <a href="/goal/all" class="btn btn-primary">Home</a>
        <div class="card text-center">
            <div class="card-header">
                Task
            </div>
            <div class="card-body">
                <h5 class="card-title">${task.title}</h5>
                <p class="card-text">${(task.detail)!"No details"}</p>
                <a href="/task/update/id=${task.taskId}" class="btn btn-primary">Update</a>
                <a href="/task/delete/id=${task.taskId}" class="btn btn-primary">Delete</a>
            </div>
            <div class="card-footer text-muted">
                ${task.status}
            </div>
        </div>        
    </div>
</body>
</html>



