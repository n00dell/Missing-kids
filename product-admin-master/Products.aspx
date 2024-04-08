<%@ Page Title="" Language="C#" MasterPageFile="~/product-admin-master/Dash.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="MissingKids.product_admin_master.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<!DOCTYPE html>
<html lang="en">
  <head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="X-UA-Compatible" content="ie=edge" />
	<title>Product Page - Admin HTML Template</title>
	<link
	  rel="stylesheet"
	  href="https://fonts.googleapis.com/css?family=Roboto:400,700"
	/>
	<!-- https://fonts.google.com/specimen/Roboto -->
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

  <body id="reportsPage">
	
	<div class="container mt-5">
	  <div class="row tm-content-row">
		<div class="col-sm-12 col-md-12 col-lg-8 col-xl-8 tm-block-col">
		  <div class="tm-bg-primary-dark tm-block tm-block-products">
			<div class="tm-product-table-container">
			  <table class="table table-hover tm-table-small tm-product-table">
				<thead>
				  <tr>
					<th scope="col">&nbsp;</th>
					<th scope="col">VICTIM NAME</th>
					<th scope="col">AGE</th>
					<th scope="col">GENDER</th>
					<th scope="col">LAST SEEN (DATE)</th>
					 <th scope="col">LAST SEEN (LOCATION)</th>
					  <th scope="col">CONTACT</th>

					<th scope="col">&nbsp;</th>
				  </tr>
				</thead>
				  <tbody>
				  <asp:Repeater ID="repeaterAddVictims" runat="server">
					  <ItemTemplate>
						  <tr>
							  <td>
								  <asp:CheckBox ID="chkSelect" runat="server" />
							  </td>

							  <td class="tm-product-name"><%# Eval("Name") %></td>
							  <td><%# Eval("Age") %></td>
							  <td><%# Eval("Gender") %></td>
							  <td><%# Eval("LastSeen", "{0:dd/MM/yyyy}") %></td>
							  <td><%# Eval("LastLocation") %></td>
							  <td><%# Eval("ContactInfo") %></td>
							  <td>
								   <asp:HiddenField ID="hdnVictimId" runat="server" Value='<%# Eval("Id") %>' />
								  <asp:LinkButton ID="btnDelete" runat="server" CssClass="tm-product-delete-link" OnClick="btnDelete_OnClick" OnClientClick="return confirm('Are you sure you want to delete this victim?');">
									  <i class="far fa-trash-alt tm-product-delete-icon"></i>
									 
								  </asp:LinkButton>
							  </td>
						  </tr>
					  </ItemTemplate>
				  </asp:Repeater>
				  </tbody>
			  </table>
			</div>
			<!-- table container -->
			<a
			  href="add-product.aspx"
			  class="btn btn-primary btn-block text-uppercase mb-3">Add new product</a>
		   
			  <asp:Button ID="btnDeleteAll" CssClass="btn btn-primary btn-block text-uppercase" runat="server" OnClick="btnDeleteAll_OnClick" Text="Delete selected Entries" />
		  </div>
		</div>
	  </div>
	</div>


	<script src="js/jquery-3.3.1.min.js"></script>
	<!-- https://jquery.com/download/ -->
	<script src="js/bootstrap.min.js"></script>
	<!-- https://getbootstrap.com/ -->
  <script>
	$(function () {
		$(".tm-product-name").on("click", function () {
			var victimId = $(this).closest("tr").find("input[type='hidden']").val();
			window.location.href = "edit-product.aspx?id=" + victimId;
		});
	});
	</script>
  </body>
</html>
</asp:Content>
