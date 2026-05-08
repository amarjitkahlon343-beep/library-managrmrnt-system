using System;
using System.Web;
using static System.Net.Mime.MediaTypeNames;

namespace Library_managemant_Amar
{

    public class Global : HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
        }

        protected void Application_Error(object sender, EventArgs e)
        {
            Exception ex = Server.GetLastError();
            Server.ClearError();

            if (ex.InnerException != null)
            {
                Response.Redirect(
                    "~/ErrorPage.aspx?ErrorMessage=" +
                    Server.UrlEncode(ex.InnerException.Message)
                );
            }
            else
            {
                Response.Redirect(
                    "~/ErrorPage.aspx?ErrorMessage=" +
                    Server.UrlEncode(ex.Message)
                );
            }
        }
    }
}