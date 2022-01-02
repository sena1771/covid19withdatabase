using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace covid19
{
    public partial class yenihastalık : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlDataSource1.Insert();
                Label1.Text = "Kayıt Başarıyla Eklendi";
                Label1.ForeColor = System.Drawing.Color.Green;
            }
            catch (Exception)
            {
                Label1.Text = "Kayıt Başarısız. HATA!!";
                Label1.ForeColor = System.Drawing.Color.Green;
                throw;
            }

            }
    }
}