
<!doctype html>
<head>
    <title>Goal</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <h1>Goal Details</h1>
        <a href="/goal/all" class="btn btn-primary">Goal List</a>
        <div class="card text-center">
            <div class="card-header">
                Goal
            </div>
            <div class="card-body">
                <h5 class="card-title">${goal.title}</h5>
                <p class="card-text">${(goal.detail)!"No details"}</p>
                <a href="/goal/update/id=${goal.taskId}" class="btn btn-primary">Update</a>
                <a href="/goal/delete/id=${goal.taskId}" class="btn btn-primary">Lazy Delete</a>
                <a data-toggle="tooltip" data-placement="top" title="Delete With Associated Tasks" href="/goal/delete/eager/id=${goal.taskId}" class="btn btn-primary">Eager Delete</a>
            </div>
            <div class="card-footer text-muted">
                ${goal.status}
            </div>
        </div>        
    </div>
</body>
</html>


