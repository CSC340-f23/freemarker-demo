<!doctype html>
<head>
    <title>Task</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <h1>
            <#if !isUpdate>Create</#if>
            <#if isUpdate>Update</#if>
            Task
        </h1>
        <div>
            <form action="<#if isUpdate>/task/update/id=${task.taskId}</#if>
                  <#if !isUpdate>/task/create</#if>" name="task" method="post">
                <table class="table">
                    <tbody>
                    <thead>
                        <tr>
                            <th>Field</th>
                            <th>Value</th>
                        </tr>
                    </thead>
                    <tbody>
                        <#if isUpdate>
                        <tr>
                            <th>ID</th>
                            <td><input type="text" value="${task.taskId}" readonly /></td>
                        </tr>
                        </#if>
                        <tr>
                            <th>Title</th>
                            <td><input type="text" name="title" value="<#if task.title??>${task.title}</#if>" /></td>
                        </tr>
                        <tr>
                            <th>Details</th>
                            <td><input type="text" name="detail" value="<#if task.detail??>${task.detail}</#if>" /></td>
                        </tr>
                        <tr>
                            <th>Status</th>
                            <td> <select id="status" name="status">
                                    <option value="pending">Pending</option>
                                    <option value="in-progress">In Progress</option>
                                    <option value="done">Done</option>
                                </select></td>
                        </tr>
                        <tr>
                            <th>Goal</th>
                            <td> <select id="goalNumber" name="goalNumber">
                                    <#list goalList as goal>                                    
                                    <option value=${goal.goalId}>${goal.title}</option>
                                    </#list>
                                </select>
                            </td>                           
                        </tr>


                    </tbody>
                </table>
                <button type="submit" class="btn btn-primary">Save</button>
            </form>
        </div>
    </div>
</body>
</html>
