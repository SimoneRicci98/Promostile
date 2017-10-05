using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    dbHelper help = new dbHelper();
    SqlDataReader rs;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Utente"] == null)
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void gridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = grdArticoli.Rows[e.RowIndex];
        DropDownList drpTaglie = row.Cells[6].FindControl("drpTaglie") as DropDownList;
        if (drpTaglie != null)
        {
            string taglia = drpTaglie.SelectedValue;
            Label qta = (Label)grdArticoli.Rows[e.RowIndex].Cells[4].FindControl("lblQtaMag");
            help.connetti();
            help.assegnaComando("SELECT Qta FROM Taglie WHERE Taglia='"+taglia+"' AND Cod_prod ='"+row.Cells[1].ToString()+"'");
            rs=help.estraiDati();
            rs.Read();
            string Quantità = rs["Qta"].ToString();
            help.disconnetti();
            qta.Text = Quantità;
        }

    }

}