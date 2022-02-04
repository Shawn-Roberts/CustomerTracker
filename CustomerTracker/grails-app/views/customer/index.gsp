<!DOCTYPE html>
<html>
<head>
    <title>An Example Page</title>
    <meta name="layout" content="main" />
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-lg-10">
                <h2> Most Recent Customers Activity </h2>
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th scope="col">Customer ID</th>
                        <th scope="col">Customer First Name</th>
                        <th scope="col">Customer Last Name</th>
                        <th scope="col">Actions </th>
                    </tr>
                    </thead>
                    <g:each status="i" in="${customers}" var="customer">
                        <tr class="${(i %2 ==0 ? 'table-primary':'table-secondary')}">
                            <th scope="row"><g:link action="show" id="${customer.getId()}">${customer.getId()}</g:link></th>
                            <td>${customer.getFirstName()}</td>
                            <td>${customer.getLastName()}</td>
                            <td>EDIT DELETE</td>
                        </tr>
                    </g:each>
                </table>
            </div>

        </div>
    </div>
</body>
</html>

