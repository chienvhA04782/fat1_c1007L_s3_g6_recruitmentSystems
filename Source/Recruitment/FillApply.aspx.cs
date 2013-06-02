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
        }

        /// <summary>
        /// Creates the applicant by vacancys id.
        /// </summary>
        /// <param name="applicants">The applicants.</param>
        /// <returns></returns>
        public int CreateApplicantByVacancysId(Share.Applicant applicants)
        {
            return _applicant.CreateApplicantByVacancysId(applicants);
        }

        protected void btnCreateApplicant_Click(object sender, EventArgs e)
        {
            try
            {


                if (FileUpload1.HasFile)
                {
                    var applicantCreate = new Share.Applicant
                        {
                            Applicant_FullName = txtFullname.Text,
                            Applicant_FoneNumber = txtNumber.Text,
                            Applicant_Email = txtEmail.Text,
                            Applicant_Address = txtaddress.Text,
                            Vacancy_Id = _idva,
                            Applicant_Admin_Accept = "false",
                            Applicant_Client_Confirm = "false"
                        };

                    // create
                    int idnew = CreateApplicantByVacancysId(applicantCreate);

                    string path = Server.MapPath("~/Data_CV/" + idnew + "_" + FileUpload1.FileName);
                    FileUpload1.SaveAs(path);

                    var appliUpdate = new Share.Applicant();
                    appliUpdate.Applicant_CVPath = "~/Data_CV/" + idnew + "_" + FileUpload1.FileName;

                    // update
                    _applicant.UpdateApplicantAfterCreate(idnew, appliUpdate);
                    Console.Write(
                        "<Script>alert('thank you ! we will check and send schedule interviewer to you email provider');" +
                        "</script>");
                }
            }
            catch (Exception ex)
            {
                Console.Write(
                       "<Script>alert('ERROR' Please try again!);" +
                       "</script>");
            }
        }
    }
}