<!DOCTYPE html>
<html>
    <head>
        <Title> Customer Management Portal</Title>
        <meta charset="utf-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


<body>
<div class="main">
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Customer Manager</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarColor01">
                <ul class="navbar-nav me-auto">

                    <li class="nav-item active">
                        <a class="nav-link" href="#">Customers
                            <span class="visually-hidden">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Reporting</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">API</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About</a>
                    </li>
                </ul>
                <form class="d-flex">
                    <input class="form-control me-sm-2" type="text" placeholder="Search">
                    <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
</div>
<div class="container">
    <div class="row">
        <div class="col-lg-10">
            <p> Most Recent Customers Activity </p>
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
