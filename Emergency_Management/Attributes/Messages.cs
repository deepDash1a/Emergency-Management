using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Emergency_Management.Attributes
{
    internal class Content
    {
        public string Message { set; get; }

        public string MessageDetails { set; get; }
    }

    struct Messages
    {
        static Content content = new Content();


        /// <summary>
        /// Reason : In case Insert row into table.
        /// <para>T_NAME : Table Name <para>
        /// </summary>
        public static Content Inserted_Successfully(string T_NAME)
        {
            content.Message = "Inserted Successfully";
            content.MessageDetails = "inserted one row to " + T_NAME + " table";

            return content;
        }

        /// <summary>
        /// Reason : In case Insert row into table and return inserted id.
        /// <para>T_NAME : Table Name <para>
        /// <para>ID : Inserted ID <para>
        /// </summary>
        public static Content Inserted_Successfully(string T_NAME, int ID)
        {
            content.Message = ID.ToString();
            content.MessageDetails = "inserted one row to " + T_NAME + " table";

            return content;
        }

        /// <summary>
        /// Reason : In case update row in a table.
        /// <para>T_NAME : Table Name <para>
        /// </summary>
        public static Content Updated_Successfully(string T_NAME)
        {
            content.Message = "Updated Successfully";
            content.MessageDetails = T_NAME + " values updated";

            return content;
        }

        /// <summary>
        /// Reason : In case delete row from a table.
        /// <para>T_NAME : Table Name <para>
        /// </summary>
        public static Content Deleted_Successfully(string T_NAME)
        {
            content.Message = "Deleted Successfully";
            content.MessageDetails = "the row was deleted from " + T_NAME + " table";

            return content;
        }

        /// <summary>
        /// Reason : In case function return null or zero.
        /// </summary>
        public static Content Not_Found()
        {
            content.Message = "Warning";
            content.MessageDetails = "now date found";

            return content;
        }

        /// <summary>
        /// Reason : In case Exception has accoured.
        /// <para>ex : Exception object  <para>
        /// </summary>
        public static Content Exception(Exception ex)
        {
            content.Message = "Exception";
            content.MessageDetails = ex.Message;

            return content;
        }

        /// <summary>
        /// Reason : In case token expired.
        /// </summary>
        public static Content TokenExpired()
        {
            content.Message = "Unauthorized";
            content.MessageDetails = "The access token has been revoked.";

            return content;
        }

        /// <summary>
        /// Reason : In case user logout.
        /// </summary>
        public static Content Logout()
        {
            content.Message = "Logged out Successfully";
            content.MessageDetails = "User has logged out.";

            return content;
        }
    }
}