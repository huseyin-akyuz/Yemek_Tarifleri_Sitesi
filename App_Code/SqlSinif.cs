﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


public class SqlSinif
{
    public SqlConnection baglanti()
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-GE1HC9J\SQLEXPRESS;Initial Catalog=Dbo_yemektarifi;Integrated Security=True");
        baglan.Open();
        return baglan;
    }
}