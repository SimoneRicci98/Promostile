using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

public partial class Registrazione : System.Web.UI.Page
{
    dbHelper help = new dbHelper();
    SqlDataReader rs;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            bool presente = false;
            string nome = txtNome.Text;
            string cognome = txtCognome.Text;
            string email = txtEmail.Text;
            string psw = txtPass.Text;
            string codfisc = txtCodFisc.Text;
            string piva = txtIva.Text;
            string ind = txtIndirizzo.Text;
            string ragsoc = txtRagSoc.Text;
            string numtel = txtNum.Text;

            if (nome.Trim() != string.Empty
                || cognome.Trim() != string.Empty 
                || email.Trim() != string.Empty 
                || psw.Trim() != string.Empty
                || codfisc.Trim() != string.Empty
                || piva.Trim() != string.Empty
                || ind.Trim() != string.Empty
                || ragsoc.Trim() != string.Empty
                || numtel.Trim() != string.Empty)
            {
                help.connetti();
                help.assegnaComando("SELECT Email FROM Utenti");
                rs = help.estraiDati();
                while (rs.Read() && presente == false)
                {
                    if (rs["Email"].ToString() == email)
                    {
                        lblErr.Text = "Email già presente";
                        presente = true;
                    }
                }
                help.disconnetti();
                if (!presente)
                {
                    help.connetti();
                    help.assegnaComando("INSERT INTO Utenti(Nome,Cognome,Email,RagSociale,PartitaIva,Codfisc,IndFatturazione,NumTelefono,Psw)"+
                                        " VALUES('" + nome + "','" + cognome + "','" + email + "','"+ragsoc + "','" + piva + "','" + codfisc + "','" + ind + "','" + numtel + "','" + System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(psw, "md5")+"')");
                    help.eseguicomando();
                    help.disconnetti();
                    MessageBox.Show("operazione completata");
                }
            }
            else
            {
                lblErr.Text = "Compila tutti i campi";
            }
        }
        catch(Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }

}
