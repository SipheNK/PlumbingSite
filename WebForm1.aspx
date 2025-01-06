<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>LLENZOS Plumbing Booking</title>
   
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #F5F5F5;
            font-family: 'Arial', sans-serif;
        }
        .container {
            max-width: 600px;
            margin: 20px auto;
            background-color: #FFFFFF;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }
        .header {
            text-align: center;
            padding-bottom: 20px;
            border-bottom: 2px solid #D4AF37;
        }
        .header img {
            max-width: 100px;
            margin-bottom: 15px;
        }
        .header h1 {
            font-family: 'Times New Roman', serif;
            color: #D4AF37;
        }
        .header p {
            font-size: 16px;
            color: #555555;
        }
        .btn {
            background-color: #D4AF37;
            color: #FFFFFF;
            border: none;
        }
        .btn:hover {
            background-color: #B58F2C;
        }
        .form-group label {
            font-weight: bold;
            color: #555555;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <img src="<%= ResolveUrl("~/Images/IMG-20241209-WA0009.jpg") %>" alt="LLENZOS Logo" />
            <h1>Welcome to LLENZOS Plumbing Projects</h1>
            <p>Book your plumbing services online with ease!</p>
        </div>
        <form id="bookingForm" runat="server">
            <div class="form-group">
                <label for="txtName">Full Name:</label>
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter your full name" />
            </div>
            <div class="form-group">
                <label for="txtEmail">Email:</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="Enter your email" />
            </div>
            <div class="form-group">
                <label for="txtPhone">Phone Number:</label>
                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="Enter your phone number" />
            </div>
            <div class="form-group">
                <label for="txtAddress">Address:</label>
                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" placeholder="Enter your address" />
            </div>
            <div class="form-group">
                <label for="ddlService">Select a Service:</label>
                <asp:DropDownList ID="ddlService" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Select a service" Value="" />
                    <asp:ListItem Text="Pipe Repair" Value="Pipe Repair" />
                    <asp:ListItem Text="Leak Detection" Value="Leak Detection" />
                    <asp:ListItem Text="Drain Cleaning" Value="Drain Cleaning" />
                    <asp:ListItem Text="Jojo Tank Installation" Value="Jojo Tank Installation" />
                    <asp:ListItem Text="Water Heater Installation" Value="Water Heater Installation" />
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label for="txtDate">Preferred Date:</label>
                <asp:TextBox ID="txtDate" runat="server" CssClass="form-control" TextMode="Date" />
            </div>
            <asp:Label ID="lblMessage" runat="server" CssClass="text-danger" />
            <br />
            <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary w-100" Text="Submit Booking" OnClick="SubmitBooking_Click" />
        </form>
    </div>
   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
