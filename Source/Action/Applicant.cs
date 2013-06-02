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
                var db = new RecruitmentEntities();
                return (from c in db.Applicants
                        where c.Vacancy_Id == vacancysId &
                            c.Applicant_Admin_Accept == "true" & c.Applicant_Client_Confirm == "true"
                        select c).Count();
            }
            catch (Exception e)
            {
                Console.Write(e);
                return 0;
            }
        }

        /// <summary>
        /// Fetches the list applicant by schedule.
        /// </summary>
        /// <returns></returns>
        public List<Share.Applicant> FetchListApplicantBySchedule(int vacancyId)
        {
            try
            {
                var db = new RecruitmentEntities();
                return (from c in db.Applicants
                        where c.Vacancy_Id == vacancyId &
                            c.Applicant_Admin_Accept == "true"
                        select c).ToList();
            }
            catch (Exception e)
            {
                Console.Write(e);
                return null;
            }
        }

        /// <summary>
        /// Updates the applicant result by applicant id.
        /// </summary>
        /// <param name="applicantId">The applicant id.</param>
        /// <param name="result"></param>
        public void UpdateApplicantResultByApplicantId(int applicantId, string result)
        {
            try
            {
                var db = new RecruitmentEntities();
                Share.Applicant applicant =
                    (from c in db.Applicants where c.Applicant_Id == applicantId select c).FirstOrDefault();
                switch (result.Trim())
                {
                    case "Good":
                        if (applicant != null) applicant.Applicant_Result = "Normal";
                        break;
                    case "Normal":
                        if (applicant != null) applicant.Applicant_Result = "Bad";
                        break;
                    case "Bad":
                        if (applicant != null) applicant.Applicant_Result = "Good";
                        break;
                    default:
                        if (applicant != null) applicant.Applicant_Result = "Good";
                        break;
                }
                db.SaveChanges();
            }
            catch (Exception e)
            {
                Console.Write(e);
            }
        }

        /// <summary>
        /// Fetches the count applicant admin confirm.
        /// </summary>
        /// <param name="vacancysId">The vacancys id.</param>
        /// <returns></returns>
        public int FetchCountApplicantAdminConfirm(int vacancysId)
        {
            try
            {
                var db = new RecruitmentEntities();
                return (from c in db.Applicants where vacancysId == c.Vacancy_Id & c.Applicant_Admin_Accept == "true" select c).Count();
            }
            catch (Exception e)
            {
                Console.Write(e);
                return 0;
            }
        }

        /// <summary>
        /// Fetches the count applicant admin not confirm.
        /// </summary>
        /// <param name="vacancysId">The vacancys id.</param>
        /// <returns></returns>
        public int FetchCountApplicantAdminNotConfirm(int vacancysId)
        {
            try
            {
                var db = new RecruitmentEntities();
                return (from c in db.Applicants where vacancysId == c.Vacancy_Id & c.Applicant_Admin_Accept == "false" select c).Count();
            }
            catch (Exception e)
            {
                Console.Write(e);
                return 0;
            }
        }

        /// <summary>
        /// Fetches the applicant by schedule.
        /// </summary>
        /// <param name="vacancysId">The vacancys id.</param>
        /// <returns></returns>
        public List<Share.Applicant> FetchApplicantByScheduleNotFilter(int vacancysId)
        {
            try
            {
                var db = new RecruitmentEntities();
                return (from c in db.Applicants where c.Vacancy_Id == vacancysId select c).ToList();
            }
            catch (Exception e)
            {
                Console.Write(e);
                return null;
            }
        }

        /// <summary>
        /// Fetches the status applicant by applicant id.
        /// </summary>
        /// <param name="applicantId">The applicant id.</param>
        /// <returns></returns>
        public string FetchStatusApplicantByApplicantId(int applicantId)
        {
            try
            {
                var db = new RecruitmentEntities();
                return (from c in db.Applicants where c.Applicant_Id == applicantId select c.Applicant_Admin_Accept)
                        .FirstOrDefault();
            }
            catch (Exception e)
            {
                Console.Write(e);
                return "false";
            }
        }

        /// <summary>
        /// Creates the applicant by vacancys id.
        /// </summary>
        /// <param name="applicants"></param>
        /// <returns></returns>
        public bool CreateApplicantByVacancysId(Share.Applicant applicants)
        {
            try
            {
                var db = new RecruitmentEntities();
                db.Applicants.Add(applicants);
                return true;
            }
            catch (Exception e)
            {

                Console.Write(e);
                return false;
            }
        }
    }
}
