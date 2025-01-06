using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string logoUrl = ResolveUrl("~/Images/IMG-20241209-WA0009.jpg");
        }

        protected void NavigateToBooking(object sender, EventArgs e)
        {
            Response.Redirect("~/WebForm1.aspx"); 
        }
    }
}