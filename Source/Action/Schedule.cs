using System;
using System.Collections.Generic;
using System.Linq;
using Share;

namespace Action
{
    public class Schedule
    {
        /// <summary>
        /// Fetches the list schedule.
        /// </summary>
        /// <returns></returns>
        public List<Share.Schedule> FetchListSchedule()
        {
            try
            {
                var db = new RecruitmentEntities();
                List<Share.Schedule> listSchedule = (from c in db.Schedules select c).ToList();
                return listSchedule;
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
        public String FetchDateScheduleByScheduleId(int scheduleId)
        {
            try
            {
                var db = new RecruitmentEntities();
                return
                    (from c in db.Schedules where c.Schedule_Id == scheduleId select c.Schedule_Date).FirstOrDefault();
            }
            catch (Exception e)
            {
                Console.Write(e);
                return string.Empty;
            }
        }
    }
}
