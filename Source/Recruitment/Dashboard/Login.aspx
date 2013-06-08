<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Recruitment.Dashboard.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/Plugin/Bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="/Plugin/style.css" rel="stylesheet" />
</head>
<body class="login_body" style="background-color: #404040">
    <form id="form1" runat="server">
        <div class="wrap">
            <h2>Recruiment Sytem</h2>
            <h4>Welcome to the login page</h4>
            <div class="login">
                <div class="email">
                    <label for="user">Account</label><div class="email-input">
                        <div class="input-prepend">
                            <span class="add-on"><i class="icon-envelope"></i></span>
                            <asp:TextBox ID="txtAccount" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="pw">
                    <label for="pw">Password</label><div class="pw-input">
                        <div class="input-prepend">
                            <span class="add-on"><i class="icon-lock"></i></span>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="remember">
                    <label class="checkbox">
                        <input type="checkbox" value="1" name="remember">
                        Remember me on this computer
                    </label>
                </div>
            </div>
            <div class="submit" style="text-align: right; margin-right: 10px">
                <asp:Button ID="btnLogin" CssClass="btn btn-red5" runat="server" Text="Login" OnClick="btnLogin_Click" />
            </div>
        </div>
    </form>
</body>
</html>
