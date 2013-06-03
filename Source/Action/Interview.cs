using System;
using System.Linq;
using Share;

namespace Action
{
    public class Interview
    {
        /// <summary>
        /// Creates the inter viewer.
        /// </summary>
        public void CreateInterViewer(Vacancy vacancys, string dateInterViewer)
        {
            try
            {
                var db = new RecruitmentEntities();
                Share.Schedule schedule =
                    (from c in db.Schedules where c.Schedule_Date.Equals(dateInterViewer) select c).FirstOrDefault();
                if (schedule != null)
                {
                    var va =
                        (from c in db.Vacancys where c.Vacancy_Id == vacancys.Vacancy_Id select c).FirstOrDefault();
                    if (va != null)
                    {
                        // update vacancys

                        va.Schedule_Id = schedule.Schedule_Id;
                        va.Vacancy_TimeInterViewer = vacancys.Vacancy_TimeInterViewer;
                        va.Vacancy_Status = "Waiting";
                        db.SaveChanges();
                    }
                }
                else
                {
                    var va = (from c in db.Vacancys where c.Vacancy_Id == vacancys.Vacancy_Id select c).FirstOrDefault();

                    // create new schedule
                    var newschedule = new Share.Schedule();
                    newschedule.Schedule_Date = dateInterViewer;
                    newschedule.DateTime_Create = DateTime.Now.ToString();
                    db.Schedules.Add(newschedule);
                    db.SaveChanges();

                    if (va != null)
                    {
                        va.Schedule_Id = newschedule.Schedule_Id;
                        va.Vacancy_TimeInterViewer = vacancys.Vacancy_TimeInterViewer;
                        va.Vacancy_Status = "Waiting";
                    }
                    db.SaveChanges();
                    // update vacancys
                }
            }
            catch (Exception e)
            {
                Console.Write(e);
            }
        }
    }
}
