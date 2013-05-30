<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Recruitment.Index1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <div style="padding-left: 10px; top: 0; width: 70%;">
        <h2 style="color: #404040">Vacancys Avaiable</h2>
        <div style="margin-top: 10px">
            <table>
                <tr>
                    <th style="width: 300px; text-align: left">Name
                    </th>
                    <th>Address
                    </th>
                </tr>

            </table>
            <ul class="vacancysList">
                <asp:ListView ID="ltv_AllVacancys" runat="server">
                    <ItemTemplate>
                        <li>
                            <table>
                                <tr>
                                    <td style="width: 300px">
                                        <a href="#"><%#Eval("Vacancy_Name") %></a>
                                    </td>
                                    <td>
                                        <%#Eval("Vacancy_WorkAddress") %>
                                    </td>
                                </tr>

                            </table>
                        </li>
                    </ItemTemplate>
                </asp:ListView>
            </ul>
        </div>
    </div>
</asp:Content>

