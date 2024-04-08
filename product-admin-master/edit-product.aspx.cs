using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MissingKids.product_admin_master
{
    public partial class edit_product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int victimId = GetVictimIdFromQueryString();
                if (victimId != 0)
                {
                    LoadVictimDetails(victimId);
                }
                else
                {
                    Response.Redirect("Products.aspx");
                }
            }   

        }
        protected void calDatePicker_OnSelectionChanged(object sender, EventArgs e)
        {
            txtSelectedDate.Text = calDatePicker.SelectedDate.ToShortDateString();

        }
        private int GetVictimIdFromQueryString()
        {
            int victimId = 0;
            string queryString = Request.QueryString["id"];
            if (!string.IsNullOrEmpty(queryString))
            {
                int.TryParse(queryString, out victimId);
            }
            return victimId;
        }
        private void LoadVictimDetails(int victimId)
        {
            using (var context = new Model1())
            {
                var victim = context.Missings.Find(victimId);
                if (victim != null)
                {
                    // Populate the form fields with the victim's details
                    txtName.Text = victim.Name;
                    txtAge.Text = victim.Age.ToString();
                    txtContact.Text = victim.ContactInfo.ToString();
                    txtSelectedDate.Text = victim.LastSeen.ToString();
                    txtLocation.Text = victim.LastLocation;
                    txtWearing.Text = victim.Wearing;
                    dropdownGender.SelectedValue = victim.Gender;
                    // Set the image or handle it as per your requirements
                }
                else
                {
                    // Handle the case when the victim is not found
                    Response.Redirect("Products.aspx");
                }
            }
        }
        protected void btnUpdate_OnClick(object sender, EventArgs e)
        {
            using (var context = new Model1())
            {
                int victimId = GetVictimIdFromQueryString();

                if (victimId != 0)
                { 
                    var missing = context.Missings.Find(victimId);
                    // Handle the case when the victim ID is not found
                    if (ID != null)
                    {
                       
                        missing.Name = txtName.Text;
                        missing.Age = Convert.ToInt32(txtAge.Text);
                        missing.ContactInfo = Convert.ToInt32(txtContact.Text);
                        missing.LastSeen = Convert.ToDateTime(txtSelectedDate.Text);
                        missing.LastLocation = txtLocation.Text;
                        missing.Wearing = txtWearing.Text;

                        if (fileImage.HasFile)
                        {
                            fileImage.SaveAs(
                                Request.PhysicalApplicationPath + "./Image" + fileImage.FileName.ToString());
                            string a;
                            a = "./Image" + fileImage.FileName.ToString();
                            missing.Image = a;
                        }

                        context.SaveChanges();
                    }
                    else
                    {
                        Response.Redirect("Products.aspx");
                    }
                }
                else
                {
                    Response.Redirect("Products.aspx");
                }

            }
        }
    }
}