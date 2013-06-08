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

        public static int IdAmin = 0;
        public static string RoleAdmin = "";

        /// <summary>
        /// Fetches the list role interviewer.
        /// </summary>
        /// <returns></returns>
        public List<Share.Admin> FetchListRoleInterviewer()
        {
            try
            {
                var db = new Share.RecruitmentEntities();
                return (from c in db.Admins where c.Admin_Role.Trim().Equals("Interview") select c).ToList();
            }
            catch (Exception e)
            {
                Console.Write(e);
                return null;
            }
        }

        /// <summary>
        /// Logins the specified admins.
        /// </summary>
        /// <param name="admins">The admins.</param>
        /// <returns></returns>
        public string Login(Share.Admin admins)
        {
            try
            {
                var db = new Share.RecruitmentEntities();
                Share.Admin admin =
                    (from c in db.Admins
                     where c.Admin_Account == admins.Admin_Account & c.Admin_Password == admins.Admin_Password
                     select c).FirstOrDefault();
                if (admin != null)
                {
                    IdAmin = admin.Admin_Id;
                    RoleAdmin = admin.Admin_Role;
                    return admin.Admin_Role;
                }
                return string.Empty;
            }
            catch (Exception e)
            {
                Console.Write(e);
                return string.Empty;
            }
        }
    }
}
