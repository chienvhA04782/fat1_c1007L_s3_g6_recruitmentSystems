<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="FillApply.aspx.cs" Inherits="Recruitment.FillApply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server"></asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
        table tr.info td {
            font-size: 13px;
            font-weight: normal;
        }
    </style>
    <div style="background: none repeat scroll 0 0 #F8F8F8; margin: 0 auto; padding-left: 15px; width: 70%;">
        <h2 style="font-weight: normal; font-size: 22px">Infor Applicant</h2>
        <table style="width: 600px">
            <tr>
                <td>FullName
                </td>
                <td>
                    <asp:TextBox ID="txtFullname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ForeColor="red" ErrorMessage="(*)" ControlToValidate="txtFullname">
                    </asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Fone Number
                </td>
                <td>
                    <asp:TextBox ID="txtNumber" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="red" runat="server" ErrorMessage="(*)" ControlToValidate="txtNumber">
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ForeColor="red" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Number not valid" ControlToValidate="txtNumber"
                        ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Email
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="red" runat="server" ErrorMessage="(*)" ControlToValidate="txtEmail">
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ForeColor="red" ID="RegularExpressionValidator2" runat="server" ErrorMessage="Email not valid"
                        ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>CV
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="red" ErrorMessage="(*)" ControlToValidate="FileUpload1">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <div style="text-align: right; padding-bottom: 10px; padding-right: 10px">
            <asp:Button ID="btnCreateApplicant" CssClass="btn" runat="server" Text="Submit" OnClick="btnCreateApplicant_Click" />
        </div>
    </div>
</asp:Content>
