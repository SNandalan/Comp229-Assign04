using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign04
{
    public partial class Model : Page
    {

        DataTable collection = new DataTable();
        string fileName = HttpContext.Current.Server.MapPath("~/Assets/updatedJson.json");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void deleteBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }
    }
}