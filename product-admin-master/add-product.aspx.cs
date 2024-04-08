using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AfricasTalkingCS;

namespace MissingKids.product_admin_master
{
    public partial class add_product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var username = "buG";
            var apiKey = "a61c1a32e6654fc32eab2a692e81fae128998acae254b13ae0367be43399872b";
            ViewState["Username"] = username;
            ViewState["ApiKey"] = apiKey;

        }

        protected void calDatePicker_OnSelectionChanged(object sender, EventArgs e)
        {           
            txtSelectedDate.Text = calDatePicker.SelectedDate.ToShortDateString();

        }
        protected void btnAddProduct_OnClick(object sender, EventArgs e)
        {

            using (var context = new Model1())
            {
                string name = txtName.Text;
                int age = Convert.ToInt32(txtAge.Text);
                int contact = Convert.ToInt32(txtContact.Text);
                DateTime lastSeen = Convert.ToDateTime(txtSelectedDate.Text);
                string location = txtLocation.Text;
                string wearing = txtWearing.Text;

               

                 fileImage.SaveAs(Request.PhysicalApplicationPath + "./Image" + fileImage.FileName.ToString());
                 string a;
                a = "./Image" + fileImage.FileName.ToString();

                var missing = new Missing
                {
                    Name = name,
                    Age = age,
                    Wearing = wearing,
                    LastLocation = location,
                    LastSeen = lastSeen,
                    ContactInfo = contact,
                    Gender = dropdownGender.SelectedValue,
                    Image = a

                };
                context.Missings.Add(missing);
                context.SaveChanges();
            }
        }
        protected void btnSendMess_OnClick(object sender, EventArgs e)
        {
            var username = ViewState["Username"].ToString();
            var apiKey = ViewState["ApiKey"].ToString();

            try
            {

                        string name = txtName.Text;
                        string age = txtAge.Text;
                        string contact = txtContact.Text;
                        string lastSeen = txtSelectedDate.Text;
                        string location = txtLocation.Text;
                        string wearing = txtWearing.Text;
                        char gender = dropdownGender.SelectedValue[0];

                        var link = "Index.aspx";

                        if (name != null && age != null && contact != null && lastSeen != null && location != null &&
                            wearing != null)
                        {
                            var msg =
                                $"Name: {name}, Age: {age}, Gender: {gender}, Contact: {contact}, Last Seen: {lastSeen}, Location: {location}, Wearing: {wearing}, link: {link} ";

                            var recep = "+254724373737";

                            var gateway = new AfricasTalkingGateway(username, apiKey);
                            dynamic res = gateway.SendMessage(recep, msg);


                            Response.Write("SMS sent successfully!");
                        }
                        else
                        {
                            Response.Write("Fill in all fields");
                        }

            }
            catch (AfricasTalkingGatewayException exception)
            {
                
                Response.Write("Error sending SMS: " + exception.Message);
            }


        }


    }
}