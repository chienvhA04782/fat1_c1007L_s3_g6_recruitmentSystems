using System;

namespace Recruitment.Dashboard.Controls.Schedule
{
    public partial class ViewsVacancys : System.Web.UI.Page
    {
        private readonly Action.Vacancys _vacancy = new Action.Vacancys();
        private readonly Action.Applicant _applicant = new Action.Applicant();

        protected int Count = 1;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["ViewsId"] != null)
            {
                try
                {
                    RdBridViewVacancyss.DataSource =
                        _vacancy.FetchListVacanvysBySchedule(Convert.ToInt32(Request.QueryString["ViewsId"]));
                    RdBridViewVacancyss.DataBind();
                }
                catch (Exception ex)
                {
                    Console.Write(ex);
                }
            }
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
    }
}