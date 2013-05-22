using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
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
            var db = new Share.RecruitmentEntities();
            List<Share.Schedule> listSchedule = (from c in db.Schedules select c).ToList();
            return listSchedule;
        } 
    }
}
