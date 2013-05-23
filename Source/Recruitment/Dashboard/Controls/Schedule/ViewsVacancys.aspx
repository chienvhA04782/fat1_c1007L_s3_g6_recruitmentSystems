<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Index.Master" AutoEventWireup="true" CodeBehind="ViewsVacancys.aspx.cs" Inherits="Recruitment.Dashboard.Controls.Schedule.ViewsVacancys" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3><a href="Index.aspx">Schedule Interviewer</a> - View Vacanvys</h3>
    <telerik:RadGrid ID="RdBridViewVacancyss" runat="server" AutoGenerateColumns="False" CellSpacing="0" GridLines="None">
        <MasterTableView>
            <CommandItemSettings ExportToPdfText="Export to PDF"></CommandItemSettings>

            <RowIndicatorColumn Visible="True" FilterControlAltText="Filter RowIndicator column">
                <HeaderStyle Width="20px"></HeaderStyle>
            </RowIndicatorColumn>

            <ExpandCollapseColumn Visible="True" FilterControlAltText="Filter ExpandColumn column">
                <HeaderStyle Width="20px"></HeaderStyle>
            </ExpandCollapseColumn>

            <Columns>
                <telerik:GridTemplateColumn FilterControlAltText="Filter TemplateColumn column" 
                    HeaderText="Vacancy Code" UniqueName="TemplateColumn">
                    <ItemStyle Width="60px"></ItemStyle>
                    <ItemTemplate>
                        <%=Count++ %>
                    </ItemTemplate>
                </telerik:GridTemplateColumn>
            </Columns>
            <Columns>
                <telerik:GridTemplateColumn FilterControlAltText="Filter TemplateColumn column" HeaderText="Vacancy Name" UniqueName="TemplateColumn">
                    <ItemTemplate>
                        <%#Eval("Vacancy_Name") %>
                        <a style="margin-left: 10px" class="btn" href="#">View</a>
                    </ItemTemplate>
                </telerik:GridTemplateColumn>
            </Columns>
            <Columns>
                <telerik:GridTemplateColumn FilterControlAltText="Filter TemplateColumn column" HeaderText="Number Applicant" UniqueName="TemplateColumn">
                    <ItemTemplate>
                        <span class="label label-info"><%#FetchCountApplicantByVacancysId(Convert.ToInt32(Eval("Vacancy_Id"))) %></span>
                        <a style="margin-left: 10px" class="btn" href="#">View</a>
                    </ItemTemplate>
                </telerik:GridTemplateColumn>
            </Columns>
            <Columns>
                <telerik:GridTemplateColumn FilterControlAltText="Filter TemplateColumn column" HeaderText="Time Interviewer" UniqueName="TemplateColumn">
                    <ItemTemplate>
                        <%#Eval("Vacancy_TimeInterViewer") %>
                    </ItemTemplate>
                </telerik:GridTemplateColumn>
            </Columns>
            <Columns>
                <telerik:GridTemplateColumn FilterControlAltText="Filter TemplateColumn column" HeaderText="DateUp" UniqueName="TemplateColumn">
                    <ItemTemplate>
                        <%#Eval("Vacancy_DateUp") %>
                    </ItemTemplate>
                </telerik:GridTemplateColumn>
            </Columns>
            <Columns>
                <telerik:GridTemplateColumn FilterControlAltText="Filter TemplateColumn column" HeaderText="DateEnd" UniqueName="TemplateColumn">
                    <ItemTemplate>
                        <%#Eval("Vacancy_DateEnd") %>
                    </ItemTemplate>
                </telerik:GridTemplateColumn>
            </Columns>
            <Columns>
                <telerik:GridTemplateColumn FilterControlAltText="Filter TemplateColumn column" HeaderText="Status" UniqueName="TemplateColumn">
                    <ItemTemplate>
                        <%#FetchStatusVacancysByVacancysId(Convert.ToInt32(Eval("Vacancy_Id"))) %>
                    </ItemTemplate>
                </telerik:GridTemplateColumn>
            </Columns>
             <Columns>
                <telerik:GridTemplateColumn FilterControlAltText="Filter TemplateColumn column" HeaderText="" UniqueName="TemplateColumn">
                    <ItemTemplate>
                        <a class="btn">Update Score</a>
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
</asp:Content>
