    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>


<!-- Start Of Transact OffCanvas -->
    <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title text-white" id="offcanvasExampleLabel">Transaccion</h5>
            <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <!-- Offcanvas: Transact Body -->
        <div class="offcanvas-body">
            <small class="card-text text-white">
                Elige una opion para realizar una transaccion
            </small>
            <!-- Transaction Type Drop Down List -->
            <select name="transact-type" class="form-control my-3" id="transact-type">
                <option value="">-- Selecciona el tipo de transaccion --</option>
                <option value="payment">Pagar</option>
                <option value="transfer">Transferir</option>
                <option value="deposit">Depositar</option>
                <option value="withdraw">Retirar</option>
            </select>
            <!-- End Of Transaction Type Drop Down List -->


            <!-- Payments Form Card -->
            <c:import url="components/transact_forms/payment_form.jsp"/>
            <!-- Transfer Form Card -->
            <c:import url="components/transact_forms/transfer_form.jsp"/>
            <!-- Deposit Form Card -->
            <c:import url="components/transact_forms/deposit_form.jsp"/>
            <!-- Withdraw Form Card -->
            <c:import url="components/transact_forms/withdraw_form.jsp"/>


        </div>
        <!-- End Of Offcanvas: Transact Body -->
    </div>
    <!-- End Of Start Of Transact OffCanvas -->