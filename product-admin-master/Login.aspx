<%@ Page Title="" Language="C#" MasterPageFile="~/product-admin-master/Dash.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MissingKids.product_admin_master.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<!DOCTYPE html>
<html lang="en">
  <head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="X-UA-Compatible" content="ie=edge" />
	<title>Login Page - Product Admin Template</title>
	<link
	  rel="stylesheet"
	  href="https://fonts.googleapis.com/css?family=Roboto:400,700"
	/>
	<!-- https://fonts.google.com/specimen/Open+Sans -->
	<link rel="stylesheet" href="css/fontawesome.min.css" />
	<!-- https://fontawesome.com/ -->
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<!-- https://getbootstrap.com/ -->
	<link rel="stylesheet" href="css/templatemo-style.css">
	<!--
	Product Admin CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
  </head>

  <body>


	<div class="container tm-mt-big tm-mb-big">
	  <div class="row">
		<div class="col-12 mx-auto tm-login-col">
		  <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
			<div class="row">
			  <div class="col-12 text-center">
				<h2 class="tm-block-title mb-4">Welcome to Dashboard, Login</h2>
			  </div>
			</div>
			<div class="row mt-2">
			  <div class="col-12">
				  <div class="form-group">
					<label for="username">Username</label>
					  <asp:TextBox ID="txtUsername" CssClass="form-control validate" runat="server"></asp:TextBox>

				  </div>
				  <div class="form-group mt-3">
					<label for="password">Password</label>
					  <asp:TextBox ID="txtPassword" TextMode="Password" CssClass="form-control validate" runat="server"></asp:TextBox>

				  </div>
				  <div class="form-group mt-4">
					<button
					  type="submit"
					  class="btn btn-primary btn-block text-uppercase"
					>
					  Login
					</button>
				  </div>
				  <button class="mt-5 btn btn-primary btn-block text-uppercase">
					Forgot your password?
				  </button>
				
			  </div>
			</div>
		  </div>
		</div>
	  </div>
	</div>

	<script src="js/jquery-3.3.1.min.js"></script>
	<!-- https://jquery.com/download/ -->
	<script src="js/bootstrap.min.js"></script>
	<!-- https://getbootstrap.com/ -->
  </body>
</html>
</asp:Content>
