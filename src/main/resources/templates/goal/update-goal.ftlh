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
        <h1>
            <#if !isUpdate>Create</#if>
            <#if isUpdate>Update</#if>
            Goal
        </h1>
        <div>
            <form action="<#if isUpdate>/goal/update/id=${goal.goalId}</#if>
                  <#if !isUpdate>/goal/create</#if>" name="goal" method="post">
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
                            <td><input type="text" value="${goal.goalId}" readonly /></td>
                        </tr>
                        </#if>
                        <tr>
                            <th>Title</th>
                            <td><input type="text" name="title" value="<#if goal.title??>${goal.title}</#if>" /></td>
                        </tr>
                        <tr>
                            <th>Details</th>
                            <td><input type="text" name="detail" value="<#if goal.detail??>${goal.detail}</#if>" /></td>
                        </tr>
                        <tr>
                            <th>Status</th>
                            <td> <select id="status" name="status">
                                    <option value="pending">Pending</option>
                                    <option value="in-progress">In Progress</option>
                                    <option value="done">Done</option>
                                </select></td>

                        </tr>

                    </tbody>
                </table>
                <button type="submit" class="btn btn-primary">Save</button>
            </form>
        </div>
    </div>
</body>
</html>
