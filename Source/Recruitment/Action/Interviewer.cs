using System.Collections.Generic;
using System.Linq;
using Share;

namespace Action
{
    public class Interviewer
    {
        public Interviewer()
        {
            
        }

        /// <summary>
        /// Admin_s the fetch all inter viewer.
        /// </summary>
        /// <returns></returns>
        public List<Share.Interviewer> Admin_FetchAllInterViewer()
        {
            var db = new RecruitmentEntities();
            List<Share.Interviewer> listInterView = (from c in db.Interviewers select c).ToList();
            return listInterView;
        }
    }
}
