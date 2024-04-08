<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="MissingKids.Index" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Missing Kids</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .card-img-top {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }
    </style>
</head>
<body>
    <div class="container my-5">
        <h1 class="text-center mb-5">Missing Kids</h1>
        <div class="row">
            <asp:Repeater ID="repeaterVictims" runat="server">
                <ItemTemplate>
                    <div class="col-md-4 mb-4">
                        <div class="card">
                            <img src="<%# Eval("Image") %>" class="card-img-top" alt="Victim Image">
                            <div class="card-body">
                                <h5 class="card-title"><%# Eval("Name") %></h5>
                                <p class="card-text"><strong>Age:</strong> <%# Eval("Age") %></p>
                                <p class="card-text"><strong>Gender:</strong> <%# Eval("Gender") %></p>
                                <p class="card-text"><strong>Last Seen:</strong> <%# Eval("LastSeen", "{0:dd/MM/yyyy}") %></p>
                                <p class="card-text"><strong>Last Location:</strong> <%# Eval("LastLocation") %></p>
                                <p class="card-text"><strong>Wearing:</strong> <%# Eval("Wearing") %></p>
                                <p class="card-text"><strong>Contact:</strong> <%# Eval("ContactInfo") %></p>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
