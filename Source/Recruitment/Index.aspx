<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Recruitment.Index1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <div style="border-left: 1px solid #D1D0D1; float: left; height: 435px; margin-left: 500px; padding-left: 10px; position: absolute; top: 0;">
        <h2 style="color: #404040">Vacancys Avaiable</h2>
        <div style="margin-top: 10px">
            <ul class="vacancysList">
                <asp:ListView ID="ltv_AllVacancys" runat="server">
                    <ItemTemplate>
                        <li><a href="#"><%#Eval("Vacancy_Name") %></a></li>
                    </ItemTemplate>
                </asp:ListView>
            </ul>
        </div>
    </div>
</asp:Content>

