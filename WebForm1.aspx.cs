using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Net.NetworkInformation;
using System.Runtime.Remoting.Contexts;
using System.Security.Policy;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using static System.Net.Mime.MediaTypeNames;


namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                string logoUrl = ResolveUrl("~/Images/IMG-20241209-WA0009.jpg");

                
                string css = $@"
                <style>
                    body {{
                        font-family: Arial, sans-serif; 
                        margin: 0; 
                        padding: 0; 
                        background-image: url('{logoUrl}'); 
                        background-repeat: repeat; 
                        background-size: 150px 150px; 
                        background-color: #f4f4f9; 
                    }}
                    .container {{
                        width: 60%; 
                        margin: auto; 
                        padding: 20px; 
                        background: rgba(255, 255, 255, 0.9); 
                        border-radius: 8px; 
                        box-shadow: 0px 0px 10px rgba(0,0,0,0.1); 
                        margin-top: 50px;
                    }}
                    .header {{
                        text-align: center; 
                        margin-bottom: 20px;
                    }}
                    .form-group {{
                        margin-bottom: 15px; 
                    }}
                    .form-group label {{
                        display: block; 
                        margin-bottom: 5px; 
                    }}
                    .form-group input, .form-group select {{
                        width: 100%; 
                        padding: 8px; 
                        border: 1px solid #ccc; 
                        border-radius: 4px; 
                    }}
                    .btn {{
                        background-color: #4CAF50; 
                        color: white; 
                        padding: 10px 15px; 
                        border: none; 
                        border-radius: 5px; 
                        cursor: pointer; 
                    }}
                    .btn:hover {{
                        background-color: #45a049; 
                    }}
                </style>";

               
                Page.Header.Controls.Add(new LiteralControl(css));
            }
        }

        protected void SubmitBooking_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string email = txtEmail.Text;
            string phone = txtPhone.Text;
            string service = ddlService.SelectedValue;
            string date = txtDate.Text;

            if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(phone) || string.IsNullOrEmpty(service) || string.IsNullOrEmpty(date))
            {
                lblMessage.Text = "All fields are required.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                lblMessage.Text = "Thank you for your booking! We will contact you soon.";
                lblMessage.ForeColor = System.Drawing.Color.Green;

                txtName.Text = "";
                txtEmail.Text = "";
                txtPhone.Text = "";
                txtDate.Text = "";
                ddlService.SelectedIndex = 0;
            }
        }
    }
}

