<%@ Page Title="" Language="C#" MasterPageFile="~/product-admin-master/Dash.Master" AutoEventWireup="true" CodeBehind="add-product.aspx.cs" Inherits="MissingKids.product_admin_master.add_product" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<!DOCTYPE html>
<html lang="en">
  <head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="X-UA-Compatible" content="ie=edge" />
	
	<link
	  rel="stylesheet"
	  href="https://fonts.googleapis.com/css?family=Roboto:400,700"
	/>
	<!-- https://fonts.google.com/specimen/Roboto -->
	<link rel="stylesheet" href="css/fontawesome.min.css" />
	<!-- https://fontawesome.com/ -->
	<link rel="stylesheet" href="jquery-ui-datepicker/jquery-ui.min.css" type="text/css" />
	<!-- http://api.jqueryui.com/datepicker/ -->
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
		<div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
		  <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
			<div class="row">
			  <div class="col-12">
				<h2 class="tm-block-title d-inline-block">Add Product</h2>
			  </div>
			</div>
			<div class="row tm-edit-product-row">
			  <div class="col-xl-6 col-lg-6 col-md-12">
				<div class="tm-edit-product-form">
				  <div class="form-group mb-3">

<asp:Label ID="lblName" runat="server" CssClass="text-light" Text="Label">Name</asp:Label>
<asp:TextBox ID="txtName" CssClass="form-control validate" runat="server"></asp:TextBox>
				  </div>
				  <div class="form-group mb-3">
					
					  <asp:Label ID="Label1" runat="server" CssClass="text-light" Text="Label">Last Seen Wearing</asp:Label>
					
<asp:TextBox ID="txtWearing" CssClass="form-control validate" runat="server" Rows="3"></asp:TextBox>
				  </div>
				  <div class="form-group mb-3">
					  <asp:Label ID="Label2" runat="server" CssClass="text-light" Text="Label">Gender</asp:Label>

<asp:DropDownList ID="dropdownGender" CssClass="custom-select tm-select-accounts" runat="server">
	<asp:ListItem Value="M">M</asp:ListItem>
<asp:ListItem Value="F">F</asp:ListItem>
</asp:DropDownList>
				  </div>
				  <div class="row">
					  <div class="form-group mb-3 col-xs-12 col-sm-6">
<asp:Label ID="Label3" runat="server" CssClass="text-light" Text="Label">Last seen on date</asp:Label>

						  <asp:TextBox ID="txtSelectedDate" CssClass="form-control validate"  runat="server" ReadOnly="True"></asp:TextBox>
						  <asp:Calendar ID="calDatePicker" runat="server" OnSelectionChanged="calDatePicker_OnSelectionChanged"></asp:Calendar>
						</div>
						<div class="form-group mb-3 col-xs-12 col-sm-6">
							<asp:Label ID="Label4" runat="server" CssClass="text-light" Text="Label">Age</asp:Label>
							<asp:TextBox ID="txtAge" CssClass="form-control validate"  runat="server" ></asp:TextBox>


						</div>
					  <div class="form-group mb-3 col-xs-12 col-sm-6">
						  <asp:Label ID="Label5" runat="server" CssClass="text-light" Text="Label">Contact Info</asp:Label>
						  <asp:TextBox ID="txtContact" CssClass="form-control validate"  runat="server" ></asp:TextBox>


					  </div>
					  <div class="form-group mb-3 col-xs-12 col-sm-6">
						  <asp:Label ID="Label6" runat="server" CssClass="text-light" Text="Label">Last seen around</asp:Label>
						  <asp:TextBox ID="txtLocation" CssClass="form-control validate"  runat="server" ></asp:TextBox>


					  </div>
				  </div>
				  
			  </div>
			  <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
				<div class="tm-product-img-dummy mx-auto">
				  <i
					class="fas fa-cloud-upload-alt tm-upload-icon"
				  ></i>
				</div>
				<div class="custom-file mt-3 mb-3">
				  <input id="fileInput" type="file" style="display:none;" />
				<asp:FileUpload ID="fileImage" runat="server" />
				</div>
			  </div>
			  <div class="col-12">
			<asp:Button ID="btnAddProduct" CssClass="btn btn-primary btn-block text-uppercase" runat="server" OnClick="btnAddProduct_OnClick" Text="Add Entry" />
			  </div><br/>
				  <div class="col-12">
					  <asp:Button ID="btnSendMess" CssClass="btn btn-primary btn-block text-uppercase" runat="server" OnClick="btnSendMess_OnClick" Text="Send Message" />
				  </div>
			</div>
			</div>
		  </div>
		</div>
	  </div>
	</div>


	<script src="js/jquery-3.3.1.min.js"></script>
	<!-- https://jquery.com/download/ -->
	<script src="jquery-ui-datepicker/jquery-ui.min.js"></script>
	<!-- https://jqueryui.com/download/ -->
	<script src="js/bootstrap.min.js"></script>
	<!-- https://getbootstrap.com/ -->
	<script>
	  $(function() {
		$("#expire_date").datepicker();
	  });
	</script>
  </body>
</html>

</asp:Content>
