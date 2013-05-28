<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Index.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Recruitment.Dashboard.Controls.Vacancy.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <h3>Vacancys</h3>
    <asp:UpdatePanel ID="upnVacancyBarTop" runat="server">
        <ContentTemplate>
              <asp:Literal ID="Ltr_action" runat="server"></asp:Literal>
            <div style="margin-bottom: 10px">
                <asp:LinkButton ID="lbtn_Addnew" runat="server" OnClick="lbtn_Addnew_Click"
                    CssClass="btn" OnClientClick="return AddNewVacancys();">Add New</asp:LinkButton>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <telerik:RadGrid ID="RadGridListVacancys" runat="server" AutoGenerateColumns="False">
                <MasterTableView>
                    <CommandItemSettings ExportToPdfText="Export to PDF"></CommandItemSettings>
                    <RowIndicatorColumn Visible="True" FilterControlAltText="Filter RowIndicator column">
                        <HeaderStyle Width="20px"></HeaderStyle>
                    </RowIndicatorColumn>
                    <ExpandCollapseColumn Visible="True" FilterControlAltText="Filter ExpandColumn column">
                        <HeaderStyle Width="20px"></HeaderStyle>
                    </ExpandCollapseColumn>
                    <Columns>
                        <telerik:GridTemplateColumn FilterControlAltText="Filter TemplateColumn column" HeaderText="#" UniqueName="TemplateColumn">
                            <ItemTemplate>
                                <%=Count++ %>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn FilterControlAltText="Filter TemplateColumn column" HeaderText="Name">
                            <ItemTemplate>
                                <%#Eval("Vacancy_Name")%>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn FilterControlAltText="Filter TemplateColumn column" HeaderText="Time Type">
                            <ItemTemplate>
                                <%#Eval("Vacancy_TypeTime")%>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn FilterControlAltText="Filter TemplateColumn column" HeaderText="Address">
                            <ItemTemplate>
                                <%#Eval("Vacancy_WorkAddress")%>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn FilterControlAltText="Filter TemplateColumn column" HeaderText="Date Start">
                            <ItemTemplate>
                                <%#Eval("Vacancy_DateStart")%>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn FilterControlAltText="Filter TemplateColumn column" HeaderText="Date End">
                            <ItemTemplate>
                                <%#Eval("Vacancy_DateEnd")%>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn FilterControlAltText="Filter TemplateColumn column" HeaderText="Applicant">
                            <ItemTemplate>
                                <span class="label label-success">3</span>
                                <span class="label label-warning">10</span>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn FilterControlAltText="Filter TemplateColumn column" HeaderText="Action">
                            <ItemTemplate>
                                <div class="btn-group">
                                    <button class="btn dropdown-toggle" data-toggle="dropdown">
                                        Action
                                <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Interviewer this vacancys</a></li>
                                        <li><a href="#">Attach new applicant</a></li>
                                        <li><a href="#">Edit</a></li>
                                        <li><a href="#">Remove</a></li>
                                    </ul>
                                </div>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                    <EditFormSettings>
                        <EditColumn FilterControlAltText="Filter EditCommandColumn column"></EditColumn>
                    </EditFormSettings>
                    <PagerStyle PageSizeControlType="RadComboBox"></PagerStyle>
                </MasterTableView>
                <PagerStyle PageSizeControlType="RadComboBox"></PagerStyle>
                <FilterMenu EnableImageSprites="False"></FilterMenu>
            </telerik:RadGrid>
        </ContentTemplate>
    </asp:UpdatePanel>
    <%--Add new--%>
    <asp:UpdatePanel ID="upnContenAddnew" runat="server">
        <ContentTemplate>
            <asp:Panel ID="Panel_ContentAddnew" runat="server" ClientIDMode="Static" Visible="False">
                <div class="popup_Bar" style="width: 500px; min-height: 500px; margin-left: 300px; top: -2px">
                    <div class="topBar">
                        <strong>Add new vacancys</strong>
                        <div class="setting-Close" onclick="CloseAddnewVacancys();">
                            <span></span>
                        </div>
                    </div>
                    <div style="padding: 10px; padding-left: 20px" class="popup_BarContent">
                        <table style="width: 100%; font-size: 13px; margin-bottom: 5px; background-color: #d1d0d1;">
                            <tr>
                                <td style="padding-left: 5px">Date Start</td>
                                <td style="padding-top: 5px">
                                    <telerik:RadDatePicker ID="rdDate_Start" runat="server"></telerik:RadDatePicker>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="#dc2606" ErrorMessage="(*)" ControlToValidate="rdDate_Start">
                                    </asp:RequiredFieldValidator>
                                </td>
                                <td>Date End
                                </td>
                                <td style="padding-top: 5px">
                                    <telerik:RadDatePicker ID="rdDate_End" runat="server"></telerik:RadDatePicker>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="#dc2606" runat="server" ErrorMessage="(*)" ControlToValidate="rdDate_End">
                                    </asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>
                        <table style="width: 100%; font-size: 13px">
                            <tr>
                                <td>Name<span class="requiment">*</span>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtName" runat="server" ClientIDMode="Static"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Address<span class="requiment">*</span>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtAddress" runat="server" ClientIDMode="Static"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Salary<span class="requiment">*</span>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtsalary" runat="server" ClientIDMode="Static"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Position<span class="requiment">*</span>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtposition" runat="server" ClientIDMode="Static"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Number people<span class="requiment">*</span>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtnumberpeople" runat="server" MaxLength="2" ClientIDMode="Static"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Skill
                                </td>
                                <td>
                                    <asp:TextBox ID="txtskill" runat="server" TextMode="MultiLine" ClientIDMode="Static"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Exp
                                </td>
                                <td>
                                    <asp:TextBox ID="txtxexp" runat="server" MaxLength="10" ClientIDMode="Static"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Type Time
                                </td>
                                <td>
                                    <asp:DropDownList ID="dropTypeTime" runat="server">
                                        <asp:ListItem Value="FullTime">FullTime</asp:ListItem>
                                        <asp:ListItem Value="PartTime">PartTime</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>Gender
                                </td>
                                <td>
                                    <asp:DropDownList ID="dropGender" runat="server">
                                        <asp:ListItem Value="Male">Male</asp:ListItem>
                                        <asp:ListItem Value="Female">Female</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>Age
                                </td>
                                <td>
                                    <asp:TextBox ID="txtage" runat="server" MaxLength="2"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Description
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align: right">
                                    <asp:LinkButton ID="lbtnSubmitAddnew" runat="server" CssClass="btn"
                                        OnClick="lbtnSubmitAddnew_Click" OnClientClick="return validateAddnewVacancys();">Submit</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </asp:Panel>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
