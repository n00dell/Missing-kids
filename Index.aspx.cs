using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MissingKids
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (var context = new Model1())
            {
                var missings = context.Missings.ToList();
                repeaterVictims.DataSource = missings;
                repeaterVictims.DataBind();
            }
        }
    }
}