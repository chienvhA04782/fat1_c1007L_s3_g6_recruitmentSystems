using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;
using Share;

namespace Recruitment.Dashboard.Controls.Schedule
{
    /// <summary>
    /// 
    /// </summary>
    public partial class ViewsVacancys : System.Web.UI.Page
    {
        private readonly Action.Vacancys _vacancy = new Action.Vacancys();
        private readonly Action.Applicant _applicant = new Action.Applicant();

        protected int CountApplicant = 1;
        protected int Count = 1;

        private static int _viewsId;
        /// <summary>
        /// Handles the Load event of the Page control.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The <see cref="EventArgs" /> instance containing the event data.</param>
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Action.Admin.RoleAdmin.Trim().Equals("Interview"))
            {
                RdBridViewVacancyss.DataSource = FetchVacancysByInterviewerId();
                RdBridViewVacancyss.DataBind();
            }
            else if (Action.Admin.RoleAdmin.Trim().Equals("Admin"))
            {
                if (Request.QueryString["ViewsId"] != null)
                {
                    try
                    {
                        _viewsId = Convert.ToInt32(Request.QueryString["ViewsId"]);
                        DisplayAllVacancysBySchedule(_viewsId);
                        // set date
                        Label_DateVacancys.Text = FetchDateScheduleByScheduleId(_viewsId);
                    }
                    catch (Exception ex)
                    {
                        Console.Write(ex);
                    }
                }
            }
        }

        /// <summary>
        /// Fetches the vacancys by interviewer id.
        /// </summary>
        /// <returns></returns>
        public List<Share.Vacancy> FetchVacancysByInterviewerId()
        {
            return _vacancy.FetchVacancysByInterviewerId();
        }

        /// <summary>
        /// Displays all vacancys by schedule.
        /// </summary>
        /// <param name="viewId">The view id.</param>
        private void DisplayAllVacancysBySchedule(int viewId)
        {
            RdBridViewVacancyss.DataSource =
                _vacancy.FetchListVacanvysBySchedule(viewId);
            RdBridViewVacancyss.DataBind();
        }

        /// <summary>
        /// Fetches the status vacancys by vacancys id.
        /// </summary>
        /// <param name="vacancysId">The vacancys id.</param>
        /// <returns></returns>
        public string FetchStatusVacancysByVacancysId(int vacancysId)
        {
            string status = _vacancy.FetchStatusVacancysByVacancysId(vacancysId);
            if (status == "Done")
            {
                return "<span class='label label-success'>" + status + "</span>";
            }
            return "<span class='label label-warning'>" + status + "</span>";
        }

        /// <summary>
        /// Fetches the count applicant by vacancys id.
        /// </summary>
        /// <param name="vacancysId">The vacancys id.</param>
        /// <returns></returns>
        public int FetchCountApplicantByVacancysId(int vacancysId)
        {
            return _applicant.FetchCountApplicantByVacancysId(vacancysId);
        }

        /// <summary>
        /// Fetches the vacancy details by vacancys id.
        /// </summary>
        /// <param name="id">The id.</param>
        public void FetchVacancyDetailsByVacancysId(int id)
        {
            Repeater1.DataSource = Action.Vacancys.FetchVacancyDetailsByVacancysId(id);
            Repeater1.DataBind();
        }

        /// <summary>
        /// Fetches the date schedule by schedule id.
        /// </summary>
        /// <param name="scheduleId">The schedule id.</param>
        /// <returns></returns>
        public String FetchDateScheduleByScheduleId(int scheduleId)
        {
            var schedule = new Action.Schedule();
            return schedule.FetchDateScheduleByScheduleId(scheduleId);
        }

        /// <summary>
        /// Handles the Click event of the ViewDetailsVacancys control.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
        protected void ViewDetailsVacancys_Click(object sender, EventArgs e)
        {
            PnlViewUpdateApplicant.Visible = false;

            Panel_DetailsVacancys.Visible = true;
            var lbt = (LinkButton)sender;
            int id = Convert.ToInt32(lbt.CommandArgument);
            FetchVacancyDetailsByVacancysId(id);
        }

        /// <summary>
        /// Handles the Click event of the ViewApplicant control.
        /// </summary>
        private static int _idVacancys;

        public static int IdVacancys;
        public void ViewApplicant_Click(object sender, EventArgs e)
        {
            Panel_DetailsVacancys.Visible = false;
            PnlViewUpdateApplicant.Visible = true;

            var lbtn = (LinkButton)sender;
            IdVacancys = Convert.ToInt32(lbtn.CommandArgument);
            BinApplicantByApplicantId(Convert.ToInt32(lbtn.CommandArgument));
            _idVacancys = Convert.ToInt32(lbtn.CommandArgument);

            pn_updateToDoneVacancys.Visible = false;
            if (_vacancy.FetchStatusVacancysByVacancysId(Convert.ToInt32(lbtn.CommandArgument)) == "Waiting")
            {
                pn_updateToDoneVacancys.Visible = true;
            }
        }

        /// <summary>
        /// Bins the applicant by applicant id.
        /// </summary>
        private void BinApplicantByApplicantId(int id)
        {
            Repeater2.DataSource = FetchListApplicantBySchedule(id);
            Repeater2.DataBind();
        }

        /// <summary>
        /// Fetches the list applicant by schedule.
        /// </summary>
        /// <param name="vacancyId">The vacancy id.</param>
        /// <returns></returns>
        public List<Applicant> FetchListApplicantBySchedule(int vacancyId)
        {
            return _applicant.FetchListApplicantBySchedule(vacancyId);
        }

        /// <summary>
        /// Filters the result applicant by applicant result.
        /// </summary>
        /// <param name="applicantResult">The applicant result.</param>
        /// <returns></returns>
        public string FilterResultApplicantByApplicantResult(string applicantResult)
        {
            switch (applicantResult.Trim())
            {
                case "Good":
                    return "<span class='label label-info'>" + "Good</span>";
                case "Normal":
                    return "<span class='label'>" + "Normal</span>";
                case "Bad":
                    return "<span class='label label-inverse'>" + "Bad</span>";
                default:
                    return "<span>notUpdate" + "</span>";
            }
        }

        /// <summary>
        /// Handles the Click event of the lbtUpdateApplicant control.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
        protected void lbtUpdateApplicant_Click(object sender, EventArgs e)
        {
            var lbtn = (LinkButton)sender;
            string[] arr = lbtn.CommandArgument.Split('|');
            UpdateApplicantResultByApplicantId(Convert.ToInt32(arr[0]), arr[1]);

            // reload
            BinApplicantByApplicantId(IdVacancys);
        }

        /// <summary>
        /// Updates the applicant result by applicant id.
        /// </summary>
        /// <param name="applicantId">The applicant id.</param>
        /// <param name="result">The result.</param>
        public void UpdateApplicantResultByApplicantId(int applicantId, string result)
        {
            _applicant.UpdateApplicantResultByApplicantId(applicantId, result);
        }

        /// <summary>
        /// Handles the Click event of the lbtnUpdateDoneVacancys control.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
        protected void lbtnUpdateDoneVacancys_Click(object sender, EventArgs e)
        {
            if (_vacancy.UpdateVacancysStatusByVacancsyId(_idVacancys))
            {
                pn_updateToDoneVacancys.Visible = false;
            }
            DisplayAllVacancysBySchedule(_viewsId);
        }
    }
}