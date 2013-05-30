using System;

namespace Recruitment.Dashboard.Controls.Vacancy
{
    public partial class CheckApplicant : System.Web.UI.Page
    {
        private readonly Action.Applicant _applicant = new Action.Applicant();
        protected int Count = 1;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["AppliId"]))
            {
                rdGridApplicant.DataSource = _applicant.FetchApplicantByScheduleNotFilter(Convert.ToInt32(Request.QueryString["AppliId"]));
                rdGridApplicant.DataBind();
            }
        }

        /// <summary>
        /// Fetches the status applicant by applicant id.
        /// </summary>
        /// <param name="applicantId">The applicant id.</param>
        /// <returns></returns>
        public string FetchStatusApplicantByApplicantId(int applicantId)
        {
            return _applicant.FetchStatusApplicantByApplicantId(applicantId);
        }

        public string FilterStatusForApplicant(int applicantId)
        {
            var st = _applicant.FetchStatusApplicantByApplicantId(applicantId);
            if (st.Trim().Equals("true"))
            {
                return "";
            }
            return "";
        }
    }
}