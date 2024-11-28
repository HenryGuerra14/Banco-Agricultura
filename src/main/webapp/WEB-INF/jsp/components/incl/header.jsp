    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

    <!-- Main Page Header -->
    <header class="main-page-header mb-3 bg-primary">
        <!-- Container -->
        <div class="container d-flex align-items-center">
            <!-- Company Name -->
            <div class="company-name">
                Banco de Agricultura
            </div>
            <!-- Company Name -->

            <!-- Navigation -->
            <nav class="navigation">
                <li><a href="/app/dashboard">Dashboard</a></li>
                <li><a href="/app/payment_history">Historial de pago</a></li>
                <li><a href="/app/transact_history">Historial de transaccion</a></li>
            </nav>
            <!-- End Of Navigation -->

            <!-- Display Name -->
            <div class="display-name ms-auto text-white">
                <i class="fa fa-circle text-success me-2"></i> Bienvenido: <span>${user.first_name}  ${user.last_name}</span>
            </div>
            <!-- End Of Display Name -->

            <!-- Log Out BUtton -->
            <a href="/logout" class="btn btn-sm text-white ms-2">
                <i class="fas fa-sign-out-alt " aria-hidden="true"></i> Desconectarme
            </a>
            <!-- End Of Log Out BUtton -->
        </div>
        <!-- End Of Container -->
    </header>
    <!-- End Of Main Page Header -->