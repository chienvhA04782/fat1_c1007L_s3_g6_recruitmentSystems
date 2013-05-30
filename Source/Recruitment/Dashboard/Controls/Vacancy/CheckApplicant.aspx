<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Index.Master" AutoEventWireup="true" CodeBehind="CheckApplicant.aspx.cs" Inherits="Recruitment.Dashboard.Controls.Vacancy.CheckApplicant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3><a href="Index.aspx">Vacancys</a> - View Applicant</h3>
    <div style="">
        <telerik:RadGrid ID="rdGridApplicant" runat="server" AutoGenerateColumns="False" CellSpacing="0" GridLines="None">

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
                    <telerik:GridTemplateColumn FilterControlAltText="Filter TemplateColumn column" HeaderText="Applicant Name" UniqueName="TemplateColumn">
                        <ItemTemplate>
                            <%#Eval("Applicant_FullName")%>&nbsp;
                               <asp:LinkButton ID="LinkButton1" CssClass="btn" runat="server">View CV</asp:LinkButton>

                        </ItemTemplate>
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn FilterControlAltText="Filter TemplateColumn column" HeaderText="Fone Number" UniqueName="TemplateColumn">
                        <ItemTemplate>
                            <%#Eval("Applicant_FoneNumber")%>
                        </ItemTemplate>
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn FilterControlAltText="Filter TemplateColumn column" HeaderText="Email" UniqueName="TemplateColumn">
                        <ItemTemplate>
                            <%#Eval("Applicant_Email")%>
                        </ItemTemplate>
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn FilterControlAltText="Filter TemplateColumn column" HeaderText="Address" UniqueName="TemplateColumn">
                        <ItemTemplate>
                            <%#Eval("Applicant_Address")%>
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
    </div>
</asp:Content>
