<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Index.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Recruitment.Dashboard.Controls.Interviewer.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        function UpdateResult(id) {
            alert('update result' + id);
            return false;
        }
    </script>
    <h3 class="">Interviewer</h3>
    <div class="row-fluid">
        <div class="span12">
            <div class="span5">
                <table class="table overTable">
                    <tr>
                        <td>
                            <telerik:RadDatePicker ID="RadDatePicker1" runat="server" ToolTip="Date From" SelectedDate="2013-05-19">
                            </telerik:RadDatePicker>
                        </td>
                        <td>
                            <telerik:RadDatePicker ID="RadDatePicker2" runat="server" ToolTip="Date To" SelectedDate="2013-05-19">
                            </telerik:RadDatePicker>
                        </td>
                        <td style="width: 10%">
                            <telerik:RadButton ID="RadButton1" runat="server" Text="Search"></telerik:RadButton>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="span7">
                
            </div>
        </div>
    </div>
    <div class="row-fluid">
        <div class="span12">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
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
                                <telerik:GridTemplateColumn FilterControlAltText="Filter TemplateColumn column" UniqueName="Interviewer_Id" HeaderText="Code">
                                    <ItemTemplate>
                                        <%#Eval("Interviewer_Id")%>
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>
                            </Columns>
                            <Columns>
                                <telerik:GridTemplateColumn FilterControlAltText="Filter TemplateColumn column" UniqueName="NameApllicant" HeaderText="Name Apllicant">
                                    <ItemTemplate>
                                        <%#FetchNameApplicantByApplicantId(Convert.ToInt32(Eval("Applicant_Id"))) %>
                                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="/Dashboard/Css/Icon/view_details_icon.gif" Width="13px" />
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>
                            </Columns>
                            <Columns>
                                <telerik:GridTemplateColumn FilterControlAltText="Filter TemplateColumn column" HeaderText="Date">
                                    <ItemTemplate>
                                        <%#Eval("Interviewer_Date")%>
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>
                            </Columns>
                            <Columns>
                                <telerik:GridTemplateColumn FilterControlAltText="Filter TemplateColumn column" HeaderText="Time">
                                    <ItemTemplate>
                                        <%#Eval("Interviewer_Time")%>
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>
                            </Columns>
                            <Columns>
                                <telerik:GridTemplateColumn FilterControlAltText="Filter TemplateColumn column" HeaderText="Status">
                                    <ItemTemplate>
                                        <%#FetchTypeStatusInterviewerByStatusCode(Convert.ToString(Eval("Interviewer_Status"))) %>
                                    </ItemTemplate>
                                </telerik:GridTemplateColumn>
                            </Columns>
                            <Columns>
                                <telerik:GridTemplateColumn FilterControlAltText="Filter TemplateColumn column" HeaderText="Result">
                                    <ItemTemplate>
                                        <%#FetchResultInterViewerByResultCode(Convert.ToString(Eval("Interviewer_Result"))) %>
                                        <span class="RadButton RadButton_Default rbSkinnedButton">
                                            <input class="rbDecorated" type="submit" value="Update" onclick='UpdateResult(<%#Eval("Interviewer_Id")%>)' />
                                        </span>
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
        </div>
    </div>
</asp:Content>
