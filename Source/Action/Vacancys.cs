
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
    }
}
