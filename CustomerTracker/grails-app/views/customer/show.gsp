<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="customer" value="${customer}" />
    </head>
    <body>


    <form>
        <fieldset>
            <legend>${"${customer.getFirstName()} ${customer.getLastName()}"}</legend>
            <div class="form-group row">
                <label for="firstName" class="col-sm-2 col-form-label">First Name</label>
                <div class="col-sm-10">
                    <input type="text" readonly="" class="form-control-plaintext" id="firstName" value="${customer.getFirstName()}">
                </div>
            </div>
            <div class="form-group row">
                <label for="lastName" class="col-sm-2 col-form-label">Last Name</label>
                <div class="col-sm-10">
                    <input type="text" readonly="" class="form-control-plaintext" id="lastName" value="${customer.getLastName()}">
                </div>
            </div>
        </fieldset>
    </form>
    </body>
</html>
