using System;

namespace Recruitment.Dashboard.Controls.Interviewer
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var interView = new Action.Interviewer();
            RadGrid_Interviewer.DataSource = interView.Admin_FetchAllInterViewer();
            RadGrid_Interviewer.DataBind();
        }

        /// <summary>
        /// Fetches the name applicant by applicant id.
        /// </summary>
        /// <param name="applicantId">The applicant id.</param>
        /// <returns></returns>
        public string FetchNameApplicantByApplicantId(int applicantId)
        {
            var applicant = new Action.Applicant();
            return applicant.FetchNameApplicantByApplicantId(applicantId);
        }

        /// <summary>
        /// Fetches the type status interviewer by status code.
        /// </summary>
        /// <param name="codeStr">The code STR.</param>
        /// <returns></returns>
        public string FetchTypeStatusInterviewerByStatusCode(string codeStr)
        {
            switch (codeStr)
            {
                case "WaitingConfirm":
                    return "<span class='label'>Waiting Confirm</span>";
                case "Confirmed":
                    return "<span class='label label-success'>Confirmed</span>";
                case "Done":
                    return "<span class='label label-info'>Done</span>";
                default:
                    return "";
            }
        }

        /// <summary>
        /// Fetches the result inter viewer by result code.
        /// </summary>
        /// <returns></returns>
        public string FetchResultInterViewerByResultCode(string result)
        {
            switch (result)
            {
                case "Good":
                    return "<span class='label label-success'>Good</span>";
                case "Normal":
                    return "<span class='label label-warning'>Normal</span>";
                case "Bad":
                    return "<span class='label label-important'>Bad</span>";
                default:
                    return "Not Update";
            }
        }
    }
}