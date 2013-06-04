using System;
using System.Web.UI.WebControls;

namespace Recruitment.Dashboard.Controls.Vacancy
{
    public partial class CheckApplicant : System.Web.UI.Page
    {
        private readonly Action.Applicant _applicant = new Action.Applicant();
        protected int Count = 1;
        private static int _appId;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["AppliId"]))
            {
                _appId = Convert.ToInt32(Request.QueryString["AppliId"]);
                rdGridApplicant.DataSource = _applicant.FetchApplicantByScheduleNotFilter(_appId);
                rdGridApplicant.DataBind();
            }
        }

        /// <summary>
        /// Fetches the status applicant by applicant id.
        /// </summary>
        /// <param name="applicantId">The applicant id.</param>
        /// <returns></returns>
        public bool FetchStatusApplicantByApplicantId(int applicantId)
        {
            if (_applicant.FetchStatusApplicantByApplicantId(applicantId).Trim().Equals("false"))
            {
                return true;
            }
            return false;
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

        /// <summary>
        /// Handles the Click event of the lbtnAdminConfirm control.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
        protected void lbtnAdminConfirm_Click(object sender, EventArgs e)
        {
            var lbtn = (LinkButton) sender;
            ConfirmApplicantByApplicantId(Convert.ToInt32(lbtn.CommandArgument));
            // reload
            rdGridApplicant.DataSource = _applicant.FetchApplicantByScheduleNotFilter(_appId);
            rdGridApplicant.DataBind();
        }

        /// <summary>
        /// Confirms the applicant by applicant id.
        /// </summary>
        /// <param name="applicantId">The applicant id.</param>
        public void ConfirmApplicantByApplicantId(int applicantId)
        {
            _applicant.ConfirmApplicantByApplicantId(applicantId);
        }
    }
}