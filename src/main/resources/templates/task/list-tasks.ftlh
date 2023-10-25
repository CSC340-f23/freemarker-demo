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
        <h1>CRUD operations with Freemarker Template</h1>
        <a class="btn btn-primary" href="/task/create">Create New Task</a>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Title</th>
                    <th scope="col">Status</th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                </tr>
            </thead>
            <tbody>
                <#list taskList as task>
                <tr>
                    <th scope="row"><a href="/task/id=${task.taskId}">${task.taskId}</a></th>
                    <td>${task.title}</td>
                    <td>${task.status}</td>
                    <td><a class="btn btn-primary" href="/task/update/id=${task.taskId}">Update</a></td>
                    <td><a class="btn btn-primary" href="/task/delete/id=${task.taskId}">Delete</a></td>
                </tr>
                </#list>
            </tbody>
        </table>
    </div>
</body>
</html>
