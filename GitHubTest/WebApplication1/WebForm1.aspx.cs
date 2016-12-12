using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // hakan 1
            //frtbs
        }

        protected void LinqServerModeDataSource1_Selecting(object sender, DevExpress.Data.Linq.LinqServerModeDataSourceSelectEventArgs e)
        {
            
        }

        protected void ASPxGridView1_CellEditorInitialize(object sender, DevExpress.Web.ASPxGridViewEditorEventArgs e)
        {
            if (e.Column.Name == "x")
            {
                e.Editor.ReadOnly = true;
                e.Editor.ClientEnabled = false;
            }

        }
    }
}