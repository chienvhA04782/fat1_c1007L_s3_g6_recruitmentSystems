
using System;
using System.Collections.Generic;
using System.Linq;

namespace Action
{
    public class Vacancys
    {
        /// <summary>
        /// Fetches the count schedule by date schedule.
        /// </summary>
        /// <param name="scheduleId">
        ///     The schedule id.
        /// </param>
        /// <returns></returns>
        public int FetchCountScheduleByDateSchedule(int scheduleId)
        {
            try
            {
                var db = new Share.RecruitmentEntities();
                int count = (from c in db.Vacancys where c.Schedule_Id == scheduleId select c).Count();
                return count;
            }
            catch (Exception e)
            {
                Console.Write(e);
                return 0;
            }
        }

        /// <summary>
        /// Fetches the name vacancys by schedule id.
        /// </summary>
        /// <param name="scheduleId">The schedule id.</param>
        /// <returns></returns>
        public List<Share.Vacancy> FetchNameVacancysByScheduleId(int scheduleId)
        {
            try
            {
                var db = new Share.RecruitmentEntities();
                List<Share.Vacancy> listNameVacancys =
                    (from c in db.Vacancys where c.Schedule_Id == scheduleId select c).ToList();
                return listNameVacancys;
            }
            catch (Exception e)
            {
                Console.Write(e);
                return null;
            }
        }

        /// <summary>
        /// Fetches the count done vavancys by shedule.
        /// </summary>
        /// <param name="scheduleId">The schedule id.</param>
        /// <returns></returns>
        public int FetchCountDoneVavancysByShedule(int scheduleId)
        {
            try
            {
                var db = new Share.RecruitmentEntities();
                return (from c in db.Vacancys where c.Schedule_Id == scheduleId & c.Vacancy_Status == "Done" select c).Count();
            }
            catch (Exception e)
            {
                Console.Write(e);
                return 0;
            }
        }

        /// <summary>
        /// Fetches the count pending vacancys by schedule.
        /// </summary>
        /// <param name="scheduleId">The schedule id.</param>
        /// <returns></returns>
        public int FetchCountPendingVacancysBySchedule(int scheduleId)
        {
            try
            {
                var db = new Share.RecruitmentEntities();
                return
                    (from c in db.Vacancys where c.Schedule_Id == scheduleId & c.Vacancy_Status == "Waiting" select c)
                        .Count();
            }
            catch (Exception e)
            {
                Console.Write(e);
                return 0;
            }
        }

        /// <summary>
        /// Fetches the list vacanvys by schedule.
        /// </summary>
        /// <returns></returns>
        public List<Share.Vacancy> FetchListVacanvysBySchedule(int scheduleId)
        {
            try
            {
                var db = new Share.RecruitmentEntities();
                List<Share.Vacancy> listVancacys =
                    (from c in db.Vacancys where c.Schedule_Id == scheduleId select c).ToList();
                return listVancacys;
            }
            catch (Exception e)
            {
                Console.Write(e);
                return null;
            }
        }

        /// <summary>
        /// Fetches the status vacancys by vacancys id.
        /// </summary>
        /// <param name="vacancysId">The vacancys id.</param>
        /// <returns></returns>
        public string FetchStatusVacancysByVacancysId(int vacancysId)
        {
            try
            {
                var db = new Share.RecruitmentEntities();
                return (from c in db.Vacancys where c.Vacancy_Id == vacancysId select c.Vacancy_Status).FirstOrDefault();
            }
            catch (Exception e)
            {
                Console.Write(e);
                return string.Empty;
            }
        }

        /// <summary>
        /// Fetches the vacancy details by vacancys id.
        /// </summary>
        /// <param name="id">The id.</param>
        /// <returns></returns>
        public static List<Share.Vacancy> FetchVacancyDetailsByVacancysId(int id)
        {
            try
            {
                var db = new Share.RecruitmentEntities();
                List<Share.Vacancy> vacancysDetails =
                    (from c in db.Vacancys where c.Vacancy_Id == id select c).ToList();
                return vacancysDetails;
            }
            catch (Exception e)
            {
                Console.Write(e);
                return null;
            }
        }

        /// <summary>
        /// Fetches the date schedule by schedule id.
        /// </summary>
        /// <param name="scheduleId">The schedule id.</param>
        /// <returns></returns>
        public string FetchDateScheduleByScheduleId(int scheduleId)
        {
            try
            {
                var db = new Share.RecruitmentEntities();
                return
                    (from c in db.Schedules where c.Schedule_Id == scheduleId select c.Schedule_Date).FirstOrDefault();
            }
            catch (Exception e)
            {
                Console.Write(e);
                return string.Empty;
            }
        }

        /// <summary>
        /// Updates the vacancys status by vacancsy id.
        /// </summary>
        /// <returns></returns>
        public bool UpdateVacancysStatusByVacancsyId(int cacancysId)
        {
            try
            {
                var db = new Share.RecruitmentEntities();
                Share.Vacancy vacancys =
                    (from c in db.Vacancys where c.Vacancy_Id == cacancysId select c).FirstOrDefault();
                if (vacancys != null) vacancys.Vacancy_Status = "Done";
                db.SaveChanges();
                return true;
            }
            catch (Exception e)
            {
                Console.Write(e);
                return false;
            }
        }

        /// <summary>
        /// Fetches all list vancancys.
        /// </summary>
        /// <returns></returns>
        public List<Share.Vacancy> FetchAllListVancancys()
        {
            try
            {
                var db = new Share.RecruitmentEntities();
                return (from c in db.Vacancys orderby c.Vacancy_Id descending select c ).ToList();
            }
            catch (Exception e)
            {
                Console.Write(e);
                return null;
            }
        }

        /// <summary>
        /// Creates the new vacancys.
        /// </summary>
        /// <param name="vacancys">The vacancys.</param>
        public void CreateNewVacancys(Share.Vacancy vacancys)
        {
            try
            {
                var db = new Share.RecruitmentEntities();
                db.Vacancys.Add(vacancys);
                db.SaveChanges();
            }
            catch (Exception e)
            {
                Console.Write(e);
            }
        }
    }
}
