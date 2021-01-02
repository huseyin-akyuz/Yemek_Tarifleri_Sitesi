﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YemekDuzenle : System.Web.UI.Page
{

    SqlSinif bgl = new SqlSinif();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Yemekid"];

        if (Page.IsPostBack == false)
        {
            SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler where yemekid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
            }
            bgl.baglanti().Close();



            if (Page.IsPostBack == false)
            {
                //Kategori Listesi
                SqlCommand komut2 = new SqlCommand("Select * From Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName)); // Seçeceğimiz resim proje içerisinde nereye kaydedileceğini gösteriyor...

        SqlCommand komut = new SqlCommand("update Tbl_Yemekler set yemekad=@p1, yemekmalzeme=@p2, yemektarif=@p3, kategoriid=@p4, YemekResim=@p6 where yemekid=@p5", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut.Parameters.AddWithValue("@p6", "~/resimler/" + FileUpload1.FileName); // Veritabanına dosya yolunu kaydediyoruz.
        komut.Parameters.AddWithValue("@p5", id);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("update tbl_yemekler set durum=0", bgl.baglanti()); // Tüm yemeklerin durumunu 0-false'a çevir komutu.
        komut.ExecuteNonQuery(); // Komutu çalıştırma.
        bgl.baglanti().Close(); // Bağlantıyı kapatıyoruz.

        // Günün yemeği için id değerine göre, durumu True yapma.

        SqlCommand komut2 = new SqlCommand("update tbl_yemekler set durum=1 where yemekid=@p1", bgl.baglanti()); // Yemek id'si @p1 olan yemeğin durumunu True yap komutu.
        komut2.Parameters.AddWithValue("@p1", id);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}