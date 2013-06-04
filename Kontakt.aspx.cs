using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Kontakt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        // hent connection info
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ToString();

        // opret forbindelse
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;

        // definer SQL kommando
        cmd.CommandText = @"INSERT INTO Kontakt 
                            (Emne, Besked, Navn, Email, Mobil) 
                            VALUES (@Emne, @Besked, @Navn, @Email, @Mobil)";

        // put værdier ind i parametrene, fra formen
        cmd.Parameters.Add("@Emne", SqlDbType.NVarChar).Value = TextBoxEmne.Text;
        cmd.Parameters.Add("@Navn", SqlDbType.NVarChar).Value = TextBoxNavn.Text;
        cmd.Parameters.Add("@Besked", SqlDbType.NVarChar).Value = TextBoxBesked.Text;
        cmd.Parameters.Add("@Email", SqlDbType.NVarChar).Value = TextBoxEmail.Text;
        cmd.Parameters.Add("@Mobil", SqlDbType.NVarChar).Value = TextBoxMobil.Text;
        
        // udfør SQL kommandoen
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        // giv et svar tilbage
        LabelSvar.Text = "Tak for din besked " + TextBoxNavn.Text + ", vi vender tilbage så snart vi kan.";
    }
}