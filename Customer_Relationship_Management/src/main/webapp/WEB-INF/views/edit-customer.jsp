<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>

<head>
  <meta charset="utf-8">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>

<body>
  <div class="container">
    <nav class="navbar navbar-dark bg-success">
      <h1 class="text-light">CUSTOMER RELATIONSHIP MANAGEMENT</h1>
      <hr>
    </nav>
    <h2>
      <c:out value="${newCustomer ? 'Add a new customer' : 'Update customer'}" />
    </h2>
    <form action="/Customer_Relationship_Management/customer/save" method="post">
      <div class="mb-3">
        <input type="hidden" class="form-control" name="id" value="${customer.id}">
      </div>
      <div class="mb-3">
        <label for="firstname" class="form-label">First Name</label>
        <input type="text" class="form-control" id="firstName" name="firstName" value="${customer.firstName}">
      </div>
      <div class="mb-3">
        <label for="lastname" class="form-label">Last Name</label>
        <input type="text" class="form-control" id="lastName" name="lastName" value="${customer.lastName}">
      </div>
      <div class="mb-3">
        <label for="email" class="form-label">Email</label>
        <input type="text" class="form-control" id="emailaddress" name="emailaddress" value="${customer.emailaddress}">
      </div>
      <button type="submit" class="btn btn-primary">Save</button>
      <a href="/Customer_Relationship_Management/customer/list" class="btn btn-danger">Back to List</a>
    </form>
  </div>
</body>

</html>
