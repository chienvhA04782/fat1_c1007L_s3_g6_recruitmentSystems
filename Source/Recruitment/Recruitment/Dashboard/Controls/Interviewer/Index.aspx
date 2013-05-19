<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Index.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Recruitment.Dashboard.Controls.Interviewer.Index" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="titleModule">Interviewer</h3>
    <telerik:RadGrid ID="RadGrid_Interviewer" runat="server" AutoGenerateColumns="False" CellSpacing="0" GridLines="None">

        <MasterTableView>
            <CommandItemSettings ExportToPdfText="Export to PDF"></CommandItemSettings>

            <RowIndicatorColumn Visible="True" FilterControlAltText="Filter RowIndicator column">
                <HeaderStyle Width="20px"></HeaderStyle>
            </RowIndicatorColumn>

            <ExpandCollapseColumn Visible="True" FilterControlAltText="Filter ExpandColumn column">
                <HeaderStyle Width="20px"></HeaderStyle>
            </ExpandCollapseColumn>

            <Columns>
                <telerik:GridTemplateColumn FilterControlAltText="Filter TemplateColumn column" UniqueName="TemplateColumn" HeaderText="Status">
                    <ItemTemplate>
                        <%#Eval("Interviewer_Status")%>
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
