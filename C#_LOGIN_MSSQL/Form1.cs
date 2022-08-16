using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Sistema_Web
{
    public partial class FormLogin : Form
    {
        public FormLogin()
        {
            InitializeComponent();
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        SqlConnection mi_conexion = new SqlConnection("server = LAPTOP-BCVE4C0O\\PC_QUIQUE; database = DB_PRUEBAS; Integrated Security= true ");

        private void btnIngresar_Click(object sender, EventArgs e)
        {

            mi_conexion.Open();
            SqlCommand ComandoSql = new SqlCommand("select usuario,contrasena from tbl_usuarios where usuario = @v_usr and CONVERT(varchar(50),DECRYPTBYPASSPHRASE('password',contrasena)) = @v_pass", mi_conexion);
            ComandoSql.Parameters.AddWithValue("@v_usr", txtUsuario.Text);
            ComandoSql.Parameters.AddWithValue("@v_pass", txtContrasena.Text);

            SqlDataReader lector = ComandoSql.ExecuteReader();

            if (lector.Read())
            {
                mi_conexion.Close();
                Home pantalla = new Home();
                pantalla.Show();
            }

        }
    }
}
