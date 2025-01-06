<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="WebApplication1.HomePage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>LLENZOS Plumbing - Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #F5F5F5;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
        }
        .header {
            text-align: center;
            background-color: #D4AF37;
            color: #FFFFFF;
            padding: 30px 10px;
        }
        .header img {
            max-width: 120px;
            margin-bottom: 10px;
        }
        .header h1 {
            font-family: 'Times New Roman', serif;
            font-size: 36px;
            margin: 0;
        }
        .header p {
            font-size: 18px;
            margin-top: 10px;
        }
        .section {
            padding: 40px 20px;
            text-align: center;
        }
        .section h2 {
            color: #555555;
            margin-bottom: 20px;
        }
        .section p, .section ul {
            color: #333333;
            font-size: 16px;
        }
        .services-images .row {
            margin-top: 20px;
        }
        .services-images img {
            width: 100%;
            height: auto;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .btn-learn-more {
            background-color: #D4AF37;
            color: #FFFFFF;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .btn-learn-more:hover {
            background-color: #B58F2C;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <div class="header">
            <img src="<%= ResolveUrl("~/Images/IMG-20241209-WA0009.jpg") %>" alt="LLENZOS Logo" />
            <h1>LLENZOS Plumbing AND Projects</h1>
            <p>Delivering professional plumbing solutions with excellence and reliability since 2017.</p>
        </div>

        
        <div class="section">
            <h2>About Us</h2>
            <p>
                LLENZOS Plumbing AND Projects (PTY) LTD is a 100% black-owned enterprise, committed to delivering
                exceptional plumbing services and contributing to community growth. Established and led by 
                Mr. Masombuka Sehlaela Collen, our mission is to exceed client expectations with professional service and reliable products.
            </p>
        </div>

       
        <div class="section">
            <h2>Our Products</h2>
            <p>We supply top-quality plumbing materials, safety equipment, industrial hoses, and more:</p>
            <ul class="list-unstyled text-left d-inline-block">
                <li>- Plumbing Materials: Pipes, fittings, seals, and valves.</li>
                <li>- Safety Equipment: PPE, fire extinguishers, and safety signs.</li>
                <li>- Industrial Hoses: Thermoplastic and metallic hoses.</li>
                <li>- Water Pumps and Filters: Inline, tank-mounted, and off-line options.</li>
                <li>- Valves, Fittings, Couplings, and Clamps.</li>
            </ul>
        </div>

       
        <div class="section">
            <h2>Our Services</h2>
            <p>We specialize in tailored plumbing solutions and related services:</p>
            <ul class="list-unstyled text-left d-inline-block">
                <li>- Skilled Labour Hire</li>
                <li>- Office and Site Supply</li>
                <li>- On-site Plumbing Maintenance</li>
                <li>- Infrastructure Cleaning</li>
            </ul>
            
            
            <div class="services-images">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3">
                            <img src="<%= ResolveUrl("~/Images/IMG-20250105-WA0002.jpg") %>" alt="Labour Hire in Action" />
                        </div>
                        <div class="col-md-3">
                            <img src="<%= ResolveUrl("~/Images/IMG-20250105-WA0003.jpg") %>" alt="Office and Site Supply" />
                        </div>
                        <div class="col-md-3">
                            <img src="<%= ResolveUrl("~/Images/IMG-20250105-WA0004.jpg") %>" alt="Plumbing Maintenance Work" />
                        </div>
                        <div class="col-md-3">
                            <img src="<%= ResolveUrl("~/Images/IMG-20250105-WA0005.jpg") %>" alt="Infrastructure Cleaning" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        
        <div class="section">
            <h2>Our Mission and Vision</h2>
            <p>
                <strong>Mission:</strong> Deliver highly professional services and reliable product availability
                to meet and exceed client needs. <br />
                <strong>Vision:</strong> Become South Africa’s leading plumbing supplier and service provider,
                known for quality and innovation.
            </p>
        </div>

       
        <div class="section">
            <asp:Button ID="btnLearnMore" runat="server" CssClass="btn-learn-more" Text="Book Now" OnClick="NavigateToBooking" />
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
