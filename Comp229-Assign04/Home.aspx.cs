using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign04
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string path = @"C:\Users\sushm\Dropbox\COMP229\Comp229-TeamAssign\Comp229-TeamAssign\Scripts\Assign04.json";
            //string path = @"~\Scripts\Assign04.json";
            string data = File.ReadAllText(path);
            var collection = JsonConvert.DeserializeObject<List<Json>>(data);

            MainGridView.DataSource = collection;
            MainGridView.DataBind();
        }
    }
}