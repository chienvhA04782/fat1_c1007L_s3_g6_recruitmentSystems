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
            /*background: none repeat scroll 0 0 #FFFFFF;
            border: 1px solid #d1d0d1;
            border-radius: 5px 5px 5px 5px;
            -webkit-box-shadow: 10px 10px 5px #756f6f;
            box-shadow: 10px 10px 5px #756f6f;
            font-size: 13px;
            line-height: 1.3em;
            margin-left: 30px;
            padding-bottom: 15px;
            padding-left: 10px;
            padding-top: 15px;*/
            position: absolute;
            display: none;
            border: 1px solid #CCCCCC;
            border-radius: 5px 5px 5px 5px;
            color: #707070;
            padding: 15px;
            z-index: 2;
            background: #fdfdfd;
            margin-left: 80px;
        }

            .Schedule_Tooltip span.close {
                background: url("../../Css/Icon/top-bar-icons.png") no-repeat scroll 0 0px transparent;
                color: #A2A2A2 !important;
                height: 17px;
                margin-right: 6px;
                margin-top: 6px;
                opacity: 1;
                position: absolute;
                right: -4px;
                top: -4px;
                width: 20px;
            }

                .Schedule_Tooltip span.close:hover {
                    background: url("../../Css/Icon/top-bar-icons.png") no-repeat scroll 0 -140px transparent;
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
                    <ItemTemplate>
                        <%=Count++ %>
                    </ItemTemplate>
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
                            <%-- Done Status--%>
                            [<%#FetchCountDoneVavancysByShedule(Convert.ToInt32(Eval("Schedule_Id")))%>
                            <%-- Pending Status--%>
                            <%#FetchCountPendingVacancysBySchedule(Convert.ToInt32(Eval("Schedule_Id")))%>]
                        </a>
                        <div class="Schedule_Tooltip Container-<%#Eval("Schedule_Id")%>">
                            <span class="close" onclick="$('.Schedule_Tooltip').hide();" title="Close this box"></span>
                            <ul class="vacancys_ul">
                                <%#FetchNameVacancysByScheduleId(Convert.ToInt32(Eval("Schedule_Id")))%>
                            </ul>
                        </div>
                        <a class="btn" href="ViewsVacancys.aspx?ViewsId=<%#Eval("Schedule_Id")%>">View</a>
                    </ItemTemplate>
                </telerik:GridTemplateColumn>
                <telerik:GridTemplateColumn HeaderText="Result" UniqueName="TemplateColumn" FilterControlAltText="Filter TemplateColumn column">
                    <ItemTemplate>
                        <%--Result status--%>
                        <%#FetchResultInterviewerDayBySchedule(Convert.ToInt32(Eval("Schedule_Id"))) %>
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
