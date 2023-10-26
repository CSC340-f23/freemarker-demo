
<!doctype html>
<head>
    <title>Goals</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <h1>Goal List</h1>
        <a class="btn btn-primary" href="/goal/create">Create New Goal</a>
        <a class="btn btn-primary" href="/task/create">Create New Task</a>

        <div id="accordion">
            <#list goalList as goal>
            <div class="card">
                <div class="card-header" id="headingOne">
                    <h5 class="mb-0">
                        <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne${goal.goalId}" aria-expanded="true" aria-controls="collapseOne">
                            ${goal.title}
                        </button>
                        <a data-toggle="tooltip" data-placement="top" title="Delete Goal. Edit tasks later" href="/goal/delete/id=${goal.goalId}" class="btn btn-secondary btn-sm float-right">Lazy Delete</a>
                        <a data-toggle="tooltip" data-placement="top" title="Delete With Associated Tasks" href="/goal/delete/eager/id=${goal.goalId}" class="btn btn-secondary btn-sm float-right">Eager Delete</a>
                        <a class="btn btn-secondary btn-sm float-right" href="/goal/update/id=${goal.goalId}">Update</a>
                    </h5>
                </div>

                <div id="collapseOne${goal.goalId}" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                    <h5 class="mb-0">${goal.detail}</h5>    
                    <h5 class="mb-0">Status: ${goal.status}</h5>    
                     <#if goal.status=="pending">
                     <a href="/goal/update-status/id=${goal.goalId}&status=in-progress" class="btn btn-secondary btn-sm float-right">Start Progress</a>
                    </#if>
                        <#if goal.status=="in-progress">
                     <a href="/goal/update-status/id=${goal.goalId}&status=done" class="btn btn-secondary btn-sm float-right">Mark As Done</a>
                    </#if>
                     <#list goal.tasks as task >
                    <div class="card-body">
                        <a href="/task/id=${task.taskId}">${task.title}</a>
                    </div>
                    </#list>
                </div>
            </div>
            </#list>
        </div>
    </div>
</body>
</html>