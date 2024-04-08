using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MissingKids.product_admin_master
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (var context = new Model1())
            {
                var missings = context.Missings.ToList();
                repeaterAddVictims.DataSource = missings;
                repeaterAddVictims.DataBind();
            }
        }

        protected void btnDelete_OnClick(object sender, EventArgs e)
        {

            LinkButton btn = (LinkButton)sender;
            RepeaterItem item = (RepeaterItem)btn.NamingContainer;

            HiddenField hdnVictimId = (HiddenField)item.FindControl("hdnVictimId");
            int victimId = Convert.ToInt32(hdnVictimId.Value);

            using (var context = new Model1())
            {
                var victim = context.Missings.Find(victimId);
                if (victim != null)
                {
                    context.Missings.Remove(victim);
                    context.SaveChanges();
                    // Optionally, you can reload the data source or show a success message
                    // repeaterAddVictims.DataBind();
                    // Response.Write("<script>alert('Victim deleted successfully.');</script>");
                }
                else
                {
                    // Handle the case where the victim is not found
                    Response.Write("<script>alert('Victim not found.');</script>");
                }
            }
        }

        protected void btnDeleteAll_OnClick(object sender, EventArgs e)
        {
            using (var context = new Model1())
            {
                var victims = context.Missings.ToList();
                context.Missings.RemoveRange(victims);
                context.SaveChanges();
                // Optionally, you can reload the data source or show a success message
                // repeaterAddVictims.DataBind();
                // Response.Write("<script>alert('All victims deleted successfully.');</script>");
            }
            
        }
    }
}