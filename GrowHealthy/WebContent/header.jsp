<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="javascript/cart.js" type="text/javascript"></script>
<script src="javascript/js.cookie.js" type="text/javascript"></script>

<div class="header-top">
	<div class="container">
		<div class="row">
			<div class="top-right pull-right">
				<div id="top-links" class="nav pull-right">
					<ul class="list-inline">
						<li class="dropdown"><a href="#" title="My Account"
							class="dropdown-toggle" data-toggle="dropdown"> <i
								class="fa fa-user"></i><span>My Account</span> <span
								class="caret"></span></a>

							<ul class="dropdown-menu dropdown-menu-right">
								<li>

									<form class="form-horizontal" action="login" method="post">
										<c:if test="${utente == null}">
											<div class="form-group">
												<label>Email</label> <input type="text" class="form-control"
													name="email">
											</div>
											<div class="form-group">
												<label class="loginForm">Password</label> <input
													type="password" class="form-control " name="password">
											</div>

											<div class="form-group">
												<input type="radio" name="tipo" value="Cliente" checked>
												Cliente <input type="radio" name="tipo" value="Azienda">
												Azienda
											</div>

											<div class="form-group">
												<button type="submit" class="btn btn-default">Accedi</button>
											</div>
											<div class="form-group">
												<button type="submit" class="btn btn-default"
													formaction="userRegistration.jsp">Registrati</button>
											</div>
										</c:if>
										<c:if test="${utente != null}">
											<h1>
												<strong>Ciao ${utente.email}</strong> <input type="hidden"
													id="emailUtente" value="${utente.email}" />
											</h1>

											<c:if test="${ragioneSociale!=null}">

												<div class="form-group">
													<button type="submit" class="btn-link" formmethod="get"
														formaction="mycategories.jsp">I miei Prodotti</button>
													<br>
													<button type="submit" class="btn-link"
														formaction=userRegistration.jsp>Gestione Profilo</button>
												</div>
												<br>

											</c:if>

											<button type="submit" class="btn btn-warning"
												formaction="login" formmethod="get"
												style="margin-left: 85px">Logout</button>

										</c:if>
									</form>
							</ul></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<br>
<div class="container">
	<div class="header-inner">
		<div class="col-sm-4 col-xs-6 header-left">
			<div class="shipping">
				<div class="shipping-img"></div>
				<div class="shipping-text">
					+39 096284925 <br> <span class="shipping-detail">Lun-Ven
						8:00 - 19:00</span>
				</div>
			</div>
		</div>
		<div class="col-sm-4 col-xs-12 header-middle">
			<div class="header-middle-top">
				<div id="logo">
					<a href="index.jsp"><img src="image/Logo.jpg
            "
						title="E-Commerce" alt="E-Commerce" class="img-responsive"
						style="margin-left: 35 px" /></a>
				</div>
			</div>
		</div>

		<div class="col-sm-4 col-xs-12 header-right">

			<div id="cart" class="btn-group btn-block">

				<button type="button"
					class="btn btn-inverse btn-block btn-lg dropdown-toggle cart-dropdown-button"
					onclick="showCart()">
					<span id="cart-total"><span class="cart-title">Carrello</span><br>
						<span id="totalCart">0 prodotto(i)</span></span>
				</button>

				<ul class="dropdown-menu pull-right cart-dropdown-menu">

					<li>

						<table class="table table-striped" id="productsincart">

							<tbody>

							</tbody>

						</table>

					</li>
					<c:if test="${utente != null }">

						<li id="subtotal">

							<div>

								<table class="table table-bordered">

									<tbody>
										<tr>
											<td class="text-right"><strong>Parziale</strong></td>
											<td class="text-right" id="parziale"></td>
										</tr>
										<tr>
											<td class="text-right"><strong>TAX (3%)</strong></td>
											<td class="text-right" id="tax"></td>
										</tr>
										<tr>
											<td class="text-right"><strong>Totale</strong></td>
											<td class="text-right" id="totale"></td>
										</tr>
									</tbody>

								</table>


								<p class="text-right">
									<span class="btn-viewcart"><a href="cart.jsp"><strong><i
												class="fa fa-shopping-cart"></i> Vai al carrello</strong></a></span>
								</p>

							</div>
						</li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
</div>
