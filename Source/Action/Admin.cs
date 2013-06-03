using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Action
{
    public class Admin
    {
        /// <summary>
        /// Fetches the user name admin by admin id.
        /// </summary>
        /// <param name="adminId">The admin id.</param>
        /// <returns></returns>
        public string FetchUserNameAdminByAdminId(int adminId)
        {
            try
            {
                var db = new Share.RecruitmentEntities();
                string userName = (from c in db.Admins where c.Admin_Id == adminId select c.Admin_Account).FirstOrDefault();
                return userName;
            }
            catch (Exception e)
            {
                Console.Write(e);
                return string.Empty;
            }
        }

        public static int IdAmin = 1;
    }
}
