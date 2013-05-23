using System;
using System.Collections.Generic;
using System.Linq;
using Share;

namespace Action
{
    public class Applicant
    {
        /// <summary>
        /// Fetches the count applicant by vacancys id.
        /// </summary>
        /// <param name="vacancysId">The vacancys id.</param>
        /// <returns></returns>
        public int FetchCountApplicantByVacancysId(int vacancysId)
        {
            try
            {
                var db = new Share.RecruitmentEntities();
                return (from c in db.Applicants
                        where c.Vacancy_Id == vacancysId &
                            c.Applicant_Admin_Accept == "true"
                        select c).Count();
            }
            catch (Exception e)
            {
                Console.Write(e);
                return 0;
            }
        }
    }
}
