    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

    <!-- Container: No Accounts  -->
    <div class="container">
        <!-- Card: No Accounts -->
        <div class="card no-accounts-card">
            <!-- Card Body -->
            <div class="card-body">
                <!-- Card Title -->
                <h1 class="card-title">
                    <i class="fas fa-ban text-danger"></i> No hay cuentas registradas
                </h1>
                 <!-- End Of Card Title -->
                <hr>
                 <!-- Card Text -->
                 <div class="card-text">
                     No tenemos registro que posea una cuenta. <br>
                     haz click para registrar una en el boton agregar nueva cuenta.
                 </div>
                 <!-- End Of Card Text -->
                 <br>
                 <button id="" class="btn btn-primary btn-lg shadow" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">
                    <i class="fa fa-credit-card"></i> Agregar cuenta nueva
                 </button>

            </div>
            <!-- End Of Card Body -->
        </div>
        <!-- End Of Card: No Accounts -->

    </div>
    <!-- End Of Container: No Accounts  -->