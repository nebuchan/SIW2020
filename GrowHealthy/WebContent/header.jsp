<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="javascript/chart.js" type="text/javascript"></script>

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
												<strong>Benvenuto ${utente.email}</strong>
											</h1>
											<br>

											<button type="submit" class="btn btn-default"
												formaction="login" formmethod="get"
												style="margin-left: 75px">Logout</button>

										</c:if>
									</form>
							</ul></li>

						<li><a href="#" id="wishlist-total" title="Wish List (0)"><i
								class="fa fa-heart"></i><span>Wish List</span><span> (0)</span></a></li>
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
					class="btn btn-inverse btn-block btn-lg dropdown-toggle cart-dropdown-button">
					<span id="cart-total"><span class="cart-title">Carrello</span><br>
						0 prodotti(s) - €0.00</span>
				</button>
				
				<ul class="dropdown-menu pull-right cart-dropdown-menu" id="productsInChart">
				
					<!--  <li>
						<table class="table table-striped">
							<tbody>
								<tr>
									<td class="text-center"><a href="#"><img
											class="img-thumbnail" title="lorem ippsum dolor dummy"
											alt="lorem ippsum dolor dummy"
											src="image/product/7product50x59.jpg"></a></td>
											
									<td class="text-left"><a href="javascript:void(0);">lorem ippsum dolor
											dummy</a></td>		
									  <td class="text-right">x 1</td>
									<td class="text-right">$254.00</td>
									<td class="text-center"><button
											class="btn btn-danger btn-xs" title="Remove" type="button">
											<i class="fa fa-times"></i>
										</button></td>
								</tr>
							</tbody>
						</table>
					</li>-->
					<li id="subtotal">
						<div>
							<table class="table table-bordered">
								<tbody>
									<tr>
										<td class="text-right"><strong>Sub-Total</strong></td>
										<td class="text-right">$210.00</td>
									</tr>
									<tr>
										<td class="text-right"><strong>Eco Tax (-2.00)</strong></td>
										<td class="text-right">$2.00</td>
									</tr>
									<tr>
										<td class="text-right"><strong>VAT (20%)</strong></td>
										<td class="text-right">$42.00</td>
									</tr>
									<tr>
										<td class="text-right"><strong>Total</strong></td>
										<td class="text-right">$254.00</td>
									</tr>
								</tbody>
							</table>
							<p class="text-right">
								<span class="btn-viewcart"><a href="cart.html"><strong><i
											class="fa fa-shopping-cart"></i> View Cart</strong></a></span> <span
									class="btn-checkout"><a href="checkout.html"><strong><i
											class="fa fa-share"></i> Checkout</strong></a></span>
							</p>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
