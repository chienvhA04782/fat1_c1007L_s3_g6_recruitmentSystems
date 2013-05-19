using System;
using System.Linq;
using Share;

namespace Action
{
    public class Applicant
    {
        /// <summary>
        /// Fetches the name applicant by applicant id.
        /// </summary>
        /// <param name="applicantId">The applicant id.</param>
        /// <returns></returns>
        public string FetchNameApplicantByApplicantId(int applicantId)
        {
            try
            {
                var db = new RecruitmentEntities();
                Share.Applicant appName = (from c in db.Applicants where c.Applicant_Id == applicantId select c).FirstOrDefault();
                if (appName != null)
                    return appName.Applicant_FullName;
                return "underfine";
            }
            catch (Exception e)
            {
                Console.Write(e);
                return "underfine";
            }
        }
    }
}
