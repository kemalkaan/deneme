using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace orm_ornek
{
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
        }
        ormdenemeEntities1 db = new ormdenemeEntities1();
        void giris()
        {
            foreach(var kullanici in db.kullanici)
                if(kullanici.kullanici_adi == textBox1.Text && kullanici.parola == textBox2.Text)
                {
                    Stok_Giris stok_giris = new Stok_Giris();
                    stok_giris.Show();
                    this.Hide();
                }
            else
                { MessageBox.Show("Kullanıcı Adı veya Şifre Yanlış"); }
            
        }
        private void Form1_Load(object sender, EventArgs e)
        {
            
        }
        private void button1_Click_1(object sender, EventArgs e)
        {
            giris();
        }
    }
}
