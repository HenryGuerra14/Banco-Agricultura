<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

            <!-- Card: Payment Card -->
            <div class="card payment-card">
                <!-- Card Body -->
                <div class="card-body">
                    <!-- Payment Form -->
                    <form action="/transact/payment" method="POST">

<!-- Form Group -->
                    <div class="form-group mb-2">
                        <label for=""> Titular de la cuenta / Beneficiario</label>
                        <input type="text" name="beneficiary" class="form-control" placeholder="Ingrese Titular de la cuenta/Beneficiario">
                    </div>
                    <!-- End Of Form Group -->

                    <!-- Form Group -->
                    <div class="form-group mb-2">
                        <label for=""> Numero de cuenta de beneficiario</label>
                        <input type="text" name="account_number"class="form-control" placeholder="Ingrese Numero de cuenta de beneficiario">
                    </div>
                    <!-- End Of Form Group -->

                    <!-- Form Group -->
                    <div class="form-group">
                        <label for="">Seleccione cuenta</label>
                        <!-- Select Account Option -->
                        <select name="account_id" class="form-control" id="">
                            <option value="">-- Seleccione cuenta --</option>
                            <c:if test="${userAccounts != null}">
                                <c:forEach items="${userAccounts}" var="selectAccount">
                                    <option value="${selectAccount.account_id}">${selectAccount.account_name}</option>
                                </c:forEach>
                            </c:if>
                        </select>
                        <!-- End Select Account Option -->
                    </div>
                    <!-- End Of Group -->

                    <!-- Form Group -->
                    <div class="form-group mb-2">
                        <label for=""> Referencia</label>
                        <input type="text" name="reference" class="form-control" placeholder="Ingrese Referencia">
                    </div>
                    <!-- End Of Form Group -->

                    <!-- Form Group -->
                    <div class="form-group mb-2">
                        <label for=""> Monto del pago</label>
                        <input type="text" name="payment_amount"class="form-control" placeholder="Monto del pago">
                    </div>
                    <!-- End Of Form Group -->

                    <!-- Form Group -->
                    <div class="form-group mb-2">
                        <button id="" class="btn btn-md transact-btn">Pagar</button>
                    </div>
                    <!-- End Of Form Group -->

                    </form>
                    <!-- End Of Payment Form -->
                </div>
                <!-- End Of Card Body -->

            </div>
            <!-- End Of Card: Payment Card -->