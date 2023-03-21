<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<title>ELVADMS FORM</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css"/>
		
		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css/style.css"/>
        <script src="http://ajax.aspnetcdn.com/ajax/4.5.1/1/WebParts.js"></script>
        
    <script>
    function callFunction(){
    $.ajax({
        type: "POST",
        url: "Default.aspx/Button1_Click",
        data: "{}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            
            return true;
        },
        failure: function (response) {
            return false;
        }
    });
}
                   </script>
	    <style type="text/css">
            .auto-style1 {
                width: 340px;
                height: 64px;
            }
            .auto-style3 {
                height: 41px;
            }
            .auto-style5 {
                height: 20px;
            }
            .auto-style7 {
                height: 55px;
            }
            .auto-style8 {
                height: 64px;
            }
            .auto-style9 {
                width: 340px;
                height: 49px;
            }
            .auto-style10 {
                height: 49px;
            }
            .auto-style11 {
                margin-bottom: 0px;
            }
            .auto-style13 {
                height: 533px;
            }
        </style>
	</head>

	<body>

		<div class="wrapper">
			<div class="inner">
				<form id="form1" runat="server" class="auto-style13">
					<h3>ELVA DMS FORM</h3>
					<p>Merci de remplir ce formulaire, cela nous aidera à concevoir des technologies conformes à vos besoins.</p>
					
					<table class="auto-style11">
            <tr>
                <td style="width: 340px; height: 41px">Civilité</td>
                <td style="height: 41px">
                    <asp:DropDownList ID="DropDownList1" runat="server" BackColor="White" CssClass="border" ForeColor="Black" Height="23px" Width="404px">
                        <asp:ListItem>Femme</asp:ListItem>
                        <asp:ListItem>Homme</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style9">Nom</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox1" runat="server" Width="405px" ForeColor="Black"></asp:TextBox>
                </td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td style="height: 20px; width: 340px">Prénom</td>
                <td style="height: 20px">
                    <asp:TextBox ID="TextBox2" runat="server" Width="406px" ForeColor="Black"></asp:TextBox>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style1">Email</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBoxMail" runat="server" TextMode="Email" Width="407px" ForeColor="Black"></asp:TextBox>
                </td>
                <td class="auto-style8"></td> 
            </tr>
            <tr>
                <td style="width: 340px; height: 55px">Qu&#39;elles options attendez vous d&#39;une voiture de luxe</td>
                <td style="height: 55px">
                    <asp:TextBox ID="TextBox4" runat="server" Height="119px" Width="409px" ForeColor="Black"></asp:TextBox>
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td style="width: 340px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
                    <asp:button ID="Button2" runat="server" Text="Submit" CssClass="zmdi zmdi-arrow-right" OnClick="Button1_Click" BackColor="#39459B" BorderColor="White" BorderStyle="Solid" Font-Names="Arial" Font-Size="X-Large" Height="60px" style="margin-left: 232px; margin-top: 0px" Width="146px"/>
                    
                   
				</form>
			</div>
		</div>
		
	</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>