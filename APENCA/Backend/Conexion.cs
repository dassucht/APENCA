using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace APENCA.Datos
{
    class Conexion
    {
        public MySqlConnection cone = new MySqlConnection();
        public void conectar()
        {
            string strCadenaConexion;
            strCadenaConexion = "SERVER=" + "localhost" + ";PORT=3306" + ";DATABASE=" + "proCode" + ";UID=" + "root" + ";PWD=" + "root";
            cone.ConnectionString = strCadenaConexion;
            cone.Open();
        }

        public void cerrar()
        {
            cone.Close();
        }
    }
}
