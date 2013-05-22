<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Index.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Recruitment.Dashboard.Controls.Interviewer.Index" %>
<%@ Register Src="~/Dashboard/Controls/Interviewer/Update.ascx" TagPrefix="uc1" TagName="Update" %>
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
                    
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <div id="updateControls">
            <uc1:Update runat="server" ID="Update" />
        </div>
    </div>
</asp:Content>
