﻿using System;
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
    }
}
