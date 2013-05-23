
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
                    (from c in db.Vacancys where c.Schedule_Id == scheduleId & c.Vacancy_Status == "Pending" select c)
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
    }
}
