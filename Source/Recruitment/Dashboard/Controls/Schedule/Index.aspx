<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Index.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Recruitment.Dashboard.Controls.Schedule.Index" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .scheduleDate {
            font-weight: bold;
        }

        .scheduleTime {
        }

        a.vacancys {
        }

        .Schedule_Tooltip {
            background: none repeat scroll 0 0 #FFFFFF;
            border: 1px solid #404040;
            -webkit-box-shadow: 10px 10px 5px #756f6f;
            box-shadow: 10px 10px 5px #756f6f;
            font-size: 13px;
            line-height: 1.3em;
            margin-left: 30px;
            padding-bottom: 15px;
            padding-left: 10px;
            padding-top: 15px;
            position: absolute;
            display: none;
            z-index: 2;
        }

            .Schedule_Tooltip span.close {
                color: #DC2606 !important;
                opacity: 1;
                padding-left: 10px;
                padding-right: 1px;
                position: absolute;
                right: -4px;
                top: -12px;
                width: 10px;
            }

        ul.vacancys_ul {
            min-width: 300px;
        }

            ul.vacancys_ul li {
                list-style-type: none;
                padding-bottom: 10px;
                padding-right: 10px;
                line-height: 0px !important;
            }

                ul.vacancys_ul li a {
                    border-bottom: 1px solid #D1D0D1;
                    display: block;
                    padding-bottom: 15px;
                }
    </style>
    <script type="text/javascript">
        function DisplayTooltip(id) {
            $('.Schedule_Tooltip').hide();
            $('.Container-' + id).toggle();
        }
    </script>
    <h3 class="">Schedule Interviewer</h3>
    <telerik:RadGrid ID="DataGridSchedule" runat="server" AllowPaging="True" Width="100%" CellSpacing="0" GridLines="None" AutoGenerateColumns="False">
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
                    <ItemStyle Width="50px" />
                </telerik:GridTemplateColumn>
                <telerik:GridTemplateColumn HeaderText="Schedule Date" UniqueName="TemplateColumn" FilterControlAltText="Filter TemplateColumn column">
                    <ItemTemplate>
                        <span class="scheduleDate"><%#Eval("Schedule_Date")%></span>
                    </ItemTemplate>
                </telerik:GridTemplateColumn>
                <telerik:GridTemplateColumn HeaderText="Vacancys Number" UniqueName="TemplateColumn" FilterControlAltText="Filter TemplateColumn column">
                    <ItemTemplate>
                        <a class="vacancys" href="#" style="padding-left: 10px; padding-right: 10px"
                            onclick="DisplayTooltip(<%#Eval("Schedule_Id")%>)">
                            <span class="label label-info"><%#FetchCountScheduleByDateSchedule(Convert.ToInt32(Eval("Schedule_Id")))%></span>
                            [Status]
                        </a>
                        <div class="Schedule_Tooltip Container-<%#Eval("Schedule_Id")%>">
                            <span class="close" onclick="$('.Schedule_Tooltip').hide();" title="Close this box">x</span>
                            <ul class="vacancys_ul">
                                <%#FetchNameVacancysByScheduleId(Convert.ToInt32(Eval("Schedule_Id")))%>
                            </ul>
                        </div>
                        <telerik:RadButton ID="RadButton1" runat="server" Text="View"></telerik:RadButton>
                    </ItemTemplate>
                </telerik:GridTemplateColumn>
                <telerik:GridTemplateColumn HeaderText="Author" UniqueName="TemplateColumn" FilterControlAltText="Filter TemplateColumn column">
                    <ItemTemplate>
                        <%#FetchUserNameAdminByAdminId(Convert.ToInt32(Eval("Admin_Id"))) %>
                    </ItemTemplate>
                </telerik:GridTemplateColumn>
                  <telerik:GridTemplateColumn HeaderText="Date/Time Create" UniqueName="TemplateColumn" FilterControlAltText="Filter TemplateColumn column">
                    <ItemTemplate>
                        <%#Eval("DateTime_Create") %>
                    </ItemTemplate>
                </telerik:GridTemplateColumn>
            </Columns>

            <EditFormSettings>
                <EditColumn FilterControlAltText="Filter EditCommandColumn column"></EditColumn>
            </EditFormSettings>

            <PagerStyle PageSizeControlType="RadComboBox"></PagerStyle>
        </MasterTableView>

        <HeaderStyle Font-Bold="False" />

        <PagerStyle PageSizeControlType="RadComboBox"></PagerStyle>

        <FilterMenu EnableImageSprites="False"></FilterMenu>

    </telerik:RadGrid>
</asp:Content>
