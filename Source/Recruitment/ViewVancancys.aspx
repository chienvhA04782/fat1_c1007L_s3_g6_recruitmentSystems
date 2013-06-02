<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="ViewVancancys.aspx.cs" Inherits="Recruitment.ViewVancancys" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <style>
        table tr.info td {
            font-size: 13px;
            font-weight: normal;
        }
    </style>
    <div style="background: none repeat scroll 0 0 #F8F8F8; margin: 0 auto; padding-left: 15px; width: 70%;">
        <fieldset>
            <legend>
                <table>
                    <asp:ListView ID="LtrViewVacancys" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td colspan="2"><%#Eval("Vacancy_Name") %>
                                </td>
                            </tr>
                            <tr class="info">
                                <td style="width: 80px">Address</td>
                                <td><%#Eval("Vacancy_WorkAddress") %></td>
                            </tr>
                            <tr class="info">
                                <td style="width: 80px">TypeTime</td>
                                <td><%#Eval("Vacancy_TypeTime") %></td>
                            </tr>
                            <tr class="info">
                                <td style="width: 80px">N.People</td>
                                <td><%#Eval("Vacancy_NumberPeople") %></td>
                            </tr>
                            <tr class="info">
                                <td style="width: 80px">Salary</td>
                                <td><%#Eval("Vacancy_Salary") %></td>
                            </tr>
                            <tr class="info">
                                <td style="width: 80px">Positions</td>
                                <td><%#Eval("Vacancy_Positions") %></td>
                            </tr>
                            <tr class="info">
                                <td style="width: 80px">Exp</td>
                                <td><%#Eval("Vacancy_Exp") %></td>
                            </tr>
                            <tr class="info">
                                <td style="width: 80px">Gender</td>
                                <td><%#Eval("Vacancy_Gender") %></td>
                            </tr>
                            <tr class="info">
                                <td style="width: 80px">Age</td>
                                <td><%#Eval("Vacancy_Age") %></td>
                            </tr>
                            <tr class="info">
                                <td style="width: 80px">Skill</td>
                                <td><%#Eval("Vacancy_Skill") %></td>
                            </tr>
                            <tr class="info">
                                <td style="width: 80px">Descript</td>
                                <td><%#Eval("Vacancy_Description") %></td>
                            </tr>
                        </ItemTemplate>
                    </asp:ListView>
                </table>
            </legend>
        </fieldset>
        <div style="text-align: right; margin-bottom: 10px; padding-bottom: 10px">
            <a class="btn" href="FillApply.aspx?vacancysId=<%=Request.QueryString["appId"]%>">Apply</a>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
