<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="order_complete_page.aspx.cs" Inherits="UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM.order_complete_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
    <link href="../../Content/bootstrap.css" rel="stylesheet" />
    
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css"
    integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A=="
    crossorigin=""/>
    
    <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"
        integrity="sha512-XQoYMqMTK8LvdxXYG3nZ448hOEQiglfqkJs1NOQV44cWnUrBc8PkAOcXy20w0vlaXaVUearIOBhiXZ5V3ynxwA=="
        crossorigin="">
    </script>
    <link href="order_complete_page.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <h1 class="text-center">&nbsp; Thank Your For Your Order</h1>
            <h2 class="text-center">&nbsp;For the colletion of your order, please go to the address shown below</h2>
            <br />
            <hr />        
            <br />
                <center>               
                    <div id="map"></div>
                    <script>
                        var map = L.map('map').setView([51.34240, -0.24415], 17);
                        var marker = L.marker([51.34240, -0.24415]).addTo(map);
                        marker.bindPopup("Pick-up Here");
                        L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
                        attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
                        maxZoom: 18,
                        id: 'mapbox/streets-v11',
                        tileSize: 512,
                        zoomOffset: -1,
                        accessToken: 'pk.eyJ1IjoiamFtaWVib3kyMyIsImEiOiJja3prazVyMTAyNWpnMnlucjYxanFuMjF3In0.nrmZyUW9kC5PGs2xPeh_Jw'
                        }).addTo(map);
                    </script>
                </center>
            <center>
                <hr />
                <br />
                    <asp:Button ID="btn_home" runat="server" OnClick="btn_home_Click" Text="Return Home" CssClass="btn btn-dark" Height="50px" Width="150px" />
            </center>
            <br />           
        </div>
    </form>
</body>
</html>
