using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.Entity;

namespace orm_ornek
{
    public partial class Stok_Giris : Form
    {
        public Stok_Giris()
        {
            InitializeComponent();
        }
        ormdenemeEntities1 db = new ormdenemeEntities1();
        private void button1_Click(object sender, EventArgs e)
        {
             Stok urun = new Stok();
             urun.Urun_Ad = Urun_Ad.Text.ToString();
            urun.Urun_Barkod = Urun_Barkod.Text.ToString();
            urun.Urun_Stok_Adet = Convert.ToInt32(Urun_Stok_Adet.Text);
            urun.MarkaId = Convert.ToInt32(Urun_Marka.Text);
            urun.Urun_Tedarikci = Convert.ToInt32(Urun_Tedarikci.Text);
            urun.Stok_Tarih = Convert.ToDateTime(Stok_Tarih.Value);
            urun.Birim_Fiyat_Alis = Convert.ToDouble(Birim_Fiyat_Alis.Text);
            urun.Birim_Fiyat_Satıs = Convert.ToDouble(Birim_Fiyat_Satis.Text);
            urun.KDV = Convert.ToInt32(KDV.Text);

            db.StokSet.Add(urun);
            db.SaveChanges();
            dataGridView1.Refresh();


        }
        private void Stok_Giris_Load(object sender, EventArgs e)
        {
            
            db.StokSet.Load();
            this.dataGridView1.DataSource = db.StokSet.Local.ToBindingList();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            var silenecek = db.StokSet.Single(x => x.Urun_Barkod == Urun_Barkod.Text.ToString());
            db.StokSet.Remove(silenecek);
            db.SaveChanges();
            dataGridView1.Refresh();
        }
    }
}
