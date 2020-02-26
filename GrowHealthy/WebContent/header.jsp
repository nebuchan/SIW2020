<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="javascript/cart.js" type="text/javascript"></script>
<script src="javascript/js.cookie.js" type="text/javascript"></script>
<script src="javascript/clientProfile.js" type="text/javascript"></script>

<header>
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
									<li><c:if test="${utente == null}">
											<form class="form-horizontal" action="login" method="post">
												<div class="form-group">
													<label>Email</label> <input type="text"
														class="form-control" name="email">
												</div>
												<div class="form-group">
													<label class="loginForm">Password</label> <input
														type="password" class="form-control " name="password">
												</div>

												<div class="form-group">
													<input type="radio" name="tipo" value="Cliente" checked>
													Cliente <input type="radio" name="tipo" value="Azienda"
														style="margin-left: 15px;"> Azienda
												</div>

												<div class="form-group">
													<button type="submit" class="btn btn-default"
														style="margin-left: 40px;">Accedi</button>
												</div>
												<div class="form-group">
													<button type="submit" class="btn btn-default"
														formaction="userRegistration.jsp"
														style="margin-left: 30px;">Registrati</button>
												</div>
											</form>
										</c:if> <c:if test="${utente != null}">

											<c:if test="${ragioneSociale==null}">

												<h1 align="center">
													<strong>Benvenuto <span>${utente.nome}</span></strong> <input
														type="hidden" id="emailUtente" value="${utente.email}" />
												</h1>

											</c:if>

											<c:if test="${ragioneSociale!=null}">

												<h1>
													<strong style="padding-left: 53px;">Benvenuto <span>${utente.email}</span></strong>
													<input type="hidden" id="emailUtente"
														value="${utente.email}" />
												</h1>

											</c:if>

											<c:if test="${ragioneSociale==null}">

												<li><a type="button" href="clientProfile.jsp#divMyData"
													style="margin-left: 14px;"> <strong>I Miei
															Dati</strong>

												</a></li>

												<li><a type="button"
													href="clientProfile.jsp#divMyData1"
													style="margin-left: 2px;"> <strong>Il Mio
															Indirizzo</strong>

												</a></li>

												<li><a type="button"
													href="clientProfile.jsp#divMyData2"
													style="margin-left: 2px;"> <strong>I Miei
															Acquisti</strong>

												</a></li>

											</c:if>

											<c:if test="${ragioneSociale!=null}">

												<div class="form-group">
												<form class="form-horizontal">
													<button type="submit" class="btn-link" formmethod="get"
														formaction="mycategories.jsp">I miei Prodotti</button>
													<br>
													<button type="submit" class="btn-link"
														formaction=companyManagement.jsp>Gestione Profilo</button>
												</form>
												</div>
												<br>
											</c:if>

											<a type="submit" class="btn btn-warning"
												href="login"
												style="margin-left: 25px;">Logout</a>

										</c:if></li>

								</ul></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<div class="container" style="padding-top: 15px; padding-bottom: 10px;">
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
						<a href="/GrowHealthy/"><img src="image/newlogo.png"
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
</header>