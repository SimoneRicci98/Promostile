﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    dbHelper help = new dbHelper();
    SqlDataReader rs;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string email;
        string password;
        email = TxtEmail.Text;
        password = TxtPass.Text;
        try
        {
            if (email == "marco.romano@libero.it")
            {
                help.connetti();
                help.assegnaComando("SELECT ID_Utente FROM Utenti WHERE Email='" + email + "' AND Psw='" + System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(password, "md5") + "'");
                rs = help.estraiDati();
                rs.Read();
                Session["Admin"] = rs["ID_Utente"].ToString();
                help.disconnetti();
                Response.Redirect("Amministrazione.aspx");
            }
            else
            {
                help.connetti();
                help.assegnaComando("SELECT ID_Utente FROM Utenti WHERE Email='" + email + "' AND Psw='" + System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(password, "md5") + "'");
                rs = help.estraiDati();
                rs.Read();
                Session["Utente"] = rs["ID_Utente"].ToString();
                help.disconnetti();
                Response.Redirect("Default.aspx");
            }
        }
        catch(Exception ex)
        {
            Response.Write(ex.ToString());
            help.disconnetti();
            lblErr.Text = "Nome utente o password errati!";
        }
    }

    protected void btnReg_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registrazione.aspx");
    }
}