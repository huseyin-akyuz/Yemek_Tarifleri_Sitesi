using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MesajDetay : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    string id = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Mesajid"]; // Diğer formdan buraya çekme isteği.
        SqlCommand komut = new SqlCommand("Select * From Tbl_Mesajlar where mesajid=@p1", bgl.baglanti()); // Mesajid'si @p1 e eşit olan kayda göre mesaj detaylarını getir...
        komut.Parameters.AddWithValue("@p1", id);
        SqlDataReader dr = komut.ExecuteReader();
        while (dr.Read()) // Sql ifadesini dizi şeklinde anlıyor ve çalıştırıyor.
        {
            TextBox1.Text = dr[1].ToString();
            TextBox2.Text = dr[2].ToString();
            TextBox3.Text = dr[3].ToString();
            TextBox4.Text = dr[4].ToString();
        }
        bgl.baglanti().Close();
    }
}