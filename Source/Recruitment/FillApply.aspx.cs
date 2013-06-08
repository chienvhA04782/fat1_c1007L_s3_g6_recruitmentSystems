using System;
using Action;

namespace Recruitment
{
    public partial class FillApply : System.Web.UI.Page
    {
        readonly Applicant _applicant = new Applicant();
        private static int _idva;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["vacancysId"] != null)
            {
                _idva = Convert.ToInt32(Request.QueryString["vacancysId"]);
            }
            if (!string.IsNullOrEmpty(Request.QueryString["status"]))
            {
                if (Request.QueryString["status"].Trim().Equals("3"))
                {
                    lblStatus.Text = "<script>alert('SUCESSFULLY! thank you for apply you cv. well contact through you email');" +
          "</script>";
                }
                else
                {
                    lblStatus.Text = "<Script>alert('ERROR' Please try again!);" + "</script>";
                }
            }
        }

        /// <summary>
        /// Creates the applicant by vacancys id.
        /// </summary>
        /// <param name="applicants">The applicants.</param>
        /// <returns></returns>
        public bool CreateApplicantByVacancysId(Share.Applicant applicants)
        {
            return _applicant.CreateApplicantByVacancysId(applicants);
        }

        protected void btnCreateApplicant_Click(object sender, EventArgs e)
        {

            var applicantCreate = new Share.Applicant
                {
                    Applicant_FullName = txtFullname.Text,
                    Applicant_FoneNumber = txtNumber.Text,
                    Applicant_Email = txtEmail.Text,
                    Applicant_Address = txtaddress.Text,
                    Vacancy_Id = _idva,
                    Applicant_Admin_Accept = "false",
                    Applicant_Client_Confirm = "false",
                    Skill = txtSkill.Text,
                    PositionApply = txtPositionApply.Text,
                    certificate = txtCertificate.Text,
                    suggestSalary = txtSalary.Text
                };

            // create
            if (CreateApplicantByVacancysId(applicantCreate))
            {
                Response.Redirect("FillApply.aspx?status=3");
            }
            else
            {
                Response.Redirect("FillApply.aspx?status=1"); 
            }
        }
    }
}