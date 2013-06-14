<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Index.Master" AutoEventWireup="true" CodeBehind="Vacancys.aspx.cs" Inherits="Recruitment.Dashboard.Controls.Schedule.ViewsVacancys" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h3><a href="Index.aspx">Schedule Interview</a> - View Vacancys [<asp:Label ID="Label_DateVacancys" runat="server" Text="Label"></asp:Label>]</h3>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
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
                                    <span style="margin-left: 10px">
                                        <asp:LinkButton ID="ViewDetailsVacancys" OnClick="ViewDetailsVacancys_Click"
                                            CommandArgument='<%#Eval("Vacancy_Id")%>'
                                            CssClass="btn" runat="server"
                                            OnClientClick="ViewDetailsVacancysInInterViewer(); return true;">View</asp:LinkButton></span>
                                </ItemTemplate>
                            </telerik:GridTemplateColumn>
                        </Columns>
                        <Columns>
                            <telerik:GridTemplateColumn FilterControlAltText="Filter TemplateColumn column" HeaderText="Number Applicant" UniqueName="TemplateColumn">
                                <ItemTemplate>
                                    <span class="label label-info"><%#FetchCountApplicantByVacancysId(Convert.ToInt32(Eval("Vacancy_Id"))) %></span>
                                </ItemTemplate>
                            </telerik:GridTemplateColumn>
                        </Columns>
                        <Columns>
                            <telerik:GridTemplateColumn FilterControlAltText="Filter TemplateColumn column" HeaderText="Time Interview" UniqueName="TemplateColumn">
                                <ItemTemplate>
                                    <%#Eval("Vacancy_TimeInterViewer") %>
                                </ItemTemplate>
                            </telerik:GridTemplateColumn>
                        </Columns>
                        <Columns>
                            <telerik:GridTemplateColumn FilterControlAltText="Filter TemplateColumn column" HeaderText="Interviewer" UniqueName="TemplateColumn">
                                <ItemTemplate>
                                    <%#FetchUserNameAdminByAdminId(Convert.ToInt32(Eval("Admin_Id"))) %>
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
                                    <asp:LinkButton ID="ViewApplicant_Click" runat="server"
                                        CssClass="btn" OnClick="ViewApplicant_Click"
                                        OnClientClick="ViewApplicantInInterViewer(); return true;" CommandArgument='<%#Eval("Vacancy_Id")%>'>
                                        View/Update Result
                                    </asp:LinkButton>
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
    <!--Details Vacancys-->
    <style>
        table#tbdtVacancys tr td {
            border-bottom: 1px solid #CCCCCC;
            padding-bottom: 5px;
            padding-left: 10px !important;
            padding-top: 8px;
        }

            table#tbdtVacancys tr td:first-child {
                padding-left: 0 !important;
            }

        .tdEdit {
            font-weight: normal;
        }
    </style>
    <asp:UpdatePanel ID="UpPanelDetailsVacancys" runat="server">
        <ContentTemplate>
            <asp:Panel ID="Panel_DetailsVacancys" runat="server" Visible="False" ClientIDMode="Static">
                <div class="popup_Bar" style="width: 400px; min-height: 400px; margin-left: 300px; top: 50px">
                    <div class="topBar">
                        <strong>View Vacancys Details</strong>
                        <div class="setting-Close" onclick="CloseDetailsVacancysInInterverer();">
                            <span></span>
                        </div>
                    </div>
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <div style="padding: 10px; padding-left: 20px" class="popup_BarContent">
                                <table style="width: 100%" id="tbdtVacancys">
                                    <tr>
                                        <td colspan="2">
                                            <span class="badge"><%#FetchDateScheduleByScheduleId(Convert.ToInt32(Eval("Schedule_Id")))%></span>
                                            Created: 27-05-2013&nbsp;
                                        End: 30-05-2013
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="background: none repeat scroll 0 0 #C9C8C9; color: #DC2606; padding-left: 30px !important">Date InterViewer
                                        </td>
                                        <td>
                                            <%#Eval("Vacancy_DateInterViewer")%>
                                        &nbsp;<%#Eval("Vacancy_TimeInterViewer") %></td>
                                    </tr>
                                    <tr>
                                        <td>Name Vacancys:</td>
                                        <td>
                                            <span class="badge badge-important"><%#Eval("Vacancy_Name") %></span>
                                    </tr>
                                    <tr>
                                        <td>WorkAddress:</td>
                                        <td><%#Eval("Vacancy_WorkAddress") %></td>
                                    </tr>
                                    <tr>
                                        <td>Type Time:</td>
                                        <td>
                                            <%#Eval("Vacancy_TypeTime") %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Salary:</td>
                                        <td>
                                            <%#Eval("Vacancy_Salary") %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Position:</td>
                                        <td>
                                            <%#Eval("Vacancy_Positions") %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Number people Request:</td>
                                        <td>
                                            <%#Eval("Vacancy_NumberPeople") %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Skills:</td>
                                        <td>Temp
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Experience:</td>
                                        <td>
                                            <%#Eval("Vacancy_Exp") %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Gender:</td>
                                        <td>
                                            <%#Eval("Vacancy_Gender") %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Age:</td>
                                        <td>
                                            <%#Eval("Vacancy_Age") %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Description</td>
                                        <td>
                                            <%#Eval("Vacancy_Description") %>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </asp:Panel>
        </ContentTemplate>
    </asp:UpdatePanel>
    <!--View/Update Applicant Vacancys-->
    <asp:UpdatePanel ID="UpnViewUpdateApplicant" runat="server">
        <ContentTemplate>
            <asp:Panel ID="PnlViewUpdateApplicant" runat="server" ClientIDMode="Static" Visible="False">
                <div class="popup_Bar" style="width: 600px; min-height: 400px; margin-left: 300px; top: 50px">
                    <div class="topBar">
                        <strong>Applicant Result</strong>
                        <div class="setting-Close" onclick="CloseViewApplicantInInterviewer();">
                            <span></span>
                        </div>
                    </div>
                    <div class="boxApplicantUpdate">
                        <asp:Panel ID="pn_updateToDoneVacancys" runat="server" Visible="False">
                            <div style="display: block; font-size: 18px; margin-bottom: 12px; padding-right: 10px; padding-top: 2px; text-align: right;">
                                <span class="label label-important">Finish This Vacancys</span>
                                <asp:LinkButton ID="lbtnUpdateDoneVacancys" runat="server" CssClass="btn" OnClick="lbtnUpdateDoneVacancys_Click"
                                    OnClientClick="if (confirm('are you sure?'))return true;return false;">Done</asp:LinkButton>
                            </div>
                        </asp:Panel>
                        <table style="width: 100%">
                            <tr>
                                <th style="width: 30px">#
                                </th>

                                <th style="width: 120px">Full Name
                                </th>

                                <th style="width: 200px">Email
                                </th>

                                <th style="width: 100px">Result
                                </th>
                            </tr>
                            <asp:Repeater ID="Repeater2" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td style="width: 30px"><%#Eval("Applicant_Id")%></td>
                                        <td style="width: 120px"><a href="#"><%#Eval("Applicant_FullName")%></a></td>
                                        <td style="width: 200px"><%#Eval("Applicant_Email") %></td>
                                        <td style="width: 150px;" class="tdEdit"
                                            title="CLick to upgrade">
                                            <%#FilterResultApplicantByApplicantResult(Convert.ToString(Eval("Applicant_Result")))%>
                                            <asp:LinkButton ID="lbtUpdateApplicant"
                                                runat="server" OnClick="lbtUpdateApplicant_Click" CssClass="btn-small"
                                                CommandArgument='<%#Eval("Applicant_Id") + "|" + Eval("Applicant_Result")%>'>
                                                  Update
                                            </asp:LinkButton>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </table>
                    </div>
                </div>
            </asp:Panel>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
