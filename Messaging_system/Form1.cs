using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
namespace Mesalasma_Sistemi
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-48MHJFV;Initial Catalog=Mesajlasma_Sistemi;Integrated Security=True");
        private void button1_Click(object sender, EventArgs e)
        {   connection.Open();
            SqlCommand command = new SqlCommand("Select * From KISILER where NUMARA=@P1 and SIFRE=@P2",connection);
            command.Parameters.AddWithValue("@P1", number.Text);
            command.Parameters.AddWithValue("@P2", sifre.Text);
            SqlDataReader dr = command.ExecuteReader();
            if(dr.Read())
            {
                Form2 frm = new Form2();
                frm.number = number.Text;
                frm.Show();
            }
            else
            {
                MessageBox.Show("Hatalı Giris", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Stop);

            }
            connection.Close();
           

        }

       
    }
}
