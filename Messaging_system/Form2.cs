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
    public partial class Form2 : Form
    {   
        public Form2()
        {
            InitializeComponent();
        }
        public string number;
        SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-48MHJFV;Initial Catalog=Mesajlasma_Sistemi;Integrated Security=True");
        private void Form2_Load(object sender, EventArgs e)
        {
            numara.Text = number;
            connection.Open();
            SqlCommand command = new SqlCommand("Select AD+' '+SOYAD FROM KISILER where NUMARA=" + numara.Text, connection);
            SqlDataReader dr = command.ExecuteReader();
            while(dr.Read())
            {
                name_surname.Text = dr[0].ToString();
            }
            dr.Close();
            GelenKutusu();
            GidenKutusu();
            connection.Close();
        }
        void GelenKutusu()
        {
            SqlDataAdapter da = new SqlDataAdapter("Select * From MESAJ where ALICI=" + numara.Text,connection);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dataGridView1.DataSource = dt;
        }
        void GidenKutusu()
        {
            SqlDataAdapter da = new SqlDataAdapter("Select * From MESAJ where GONDEREN=" + numara.Text, connection);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dataGridView2.DataSource = dt;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            connection.Open();
            SqlCommand command = new SqlCommand("insert into MESAJ (GONDEREN,ALICI,BASLIK,MESAJ) values (@P1,@P2,@P3,@P4)", connection);
            command.Parameters.AddWithValue("@P1", numara.Text);
            command.Parameters.AddWithValue("@P2", senderx.Text);
            command.Parameters.AddWithValue("@P3", title.Text);
            command.Parameters.AddWithValue("@P4", messagebox.Text);
            command.ExecuteNonQuery();
            connection.Close();
            GidenKutusu();
        }
    }
}
