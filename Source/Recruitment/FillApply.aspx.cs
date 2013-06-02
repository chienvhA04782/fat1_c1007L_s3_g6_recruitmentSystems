using System;
using Action;

namespace Recruitment
{
    public partial class FillApply : System.Web.UI.Page
    {
        Applicant _applicant;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// Creates the applicant by vacancys id.
        /// </summary>
        /// <param name="applicants">The applicants.</param>
        /// <returns></returns>
        public bool CreateApplicantByVacancysId(Share.Applicant applicants)
        {
            _applicant = new Applicant();
            return _applicant.CreateApplicantByVacancysId(applicants);
        }

        protected void btnCreateApplicant_Click(object sender, EventArgs e)
        {
            var applicantCreate = new Share.Applicant();
        }
    }
}