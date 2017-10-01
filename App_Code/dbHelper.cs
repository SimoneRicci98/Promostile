using System;
using System.Data.SqlClient;
using System.Data.OleDb;

public class dbHelper
{
    //OleDbConnection connDb;
    SqlConnection connDb;
    SqlCommand istruzioneSQL;

	public dbHelper() //costruttore con parametro
	{

        connDb=new SqlConnection();

	}
    public void connetti()
    {       
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        builder.DataSource = "hostingmmssql3.websitelive.netsql03;";
        builder.UserID = "promostile_it_admin";
        builder.Password = "pwd_db_psm";
        builder.InitialCatalog = "promostile_it_PSM";
        connDb.ConnectionString = builder.ConnectionString;
        connDb.Open();
    } //metodo di connessione
    public void disconnetti()
    {
        connDb.Close();
    } //metodo di disconnessione

    public void assegnaComando(string istruzione) //istruzione di comando SQL
    {
        istruzioneSQL=new SqlCommand();
        istruzioneSQL.CommandText = istruzione;
        istruzioneSQL.Connection = connDb;
    }

    public SqlDataReader estraiDati()
    {
        SqlDataReader rsDati;
        rsDati = istruzioneSQL.ExecuteReader();
        return rsDati;
    }
    public void eseguicomando()
    {
        istruzioneSQL.ExecuteNonQuery();
    }

}
