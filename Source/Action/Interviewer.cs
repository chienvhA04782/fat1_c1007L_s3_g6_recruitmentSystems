using System;
using System.Collections.Generic;
using System.Linq;
using Share;

namespace Action
{
    public class Interviewer
    {
        /// <summary>
        /// Admin_s the fetch all inter viewer.
        /// </summary>
        /// <returns></returns>
        public List<Share.Interviewer> Admin_FetchAllInterViewer()
        {
            try
            {
                var db = new RecruitmentEntities();
                List<Share.Interviewer> listInterView = (from c in db.Interviewers orderby c.Interviewer_Id descending select c).ToList();
                return listInterView;
            }
            catch (Exception e)
            {
                Console.Write(e);
                return null;
            }
        }
    }
}
