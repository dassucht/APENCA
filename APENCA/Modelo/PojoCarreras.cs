using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace APENCA.Pojos
{
    class PojoCarreras
    {
        private int idCarrera, estatus;
        private string prefijo, nombreCarrera, nombreCorto;

        public int Estatus
        {
            get
            {
                return estatus;
            }

            set
            {
                estatus = value;
            }
        }

        public int IdCarrera
        {
            get
            {
                return idCarrera;
            }

            set
            {
                idCarrera = value;
            }
        }

        public string NombreCarrera
        {
            get
            {
                return nombreCarrera;
            }

            set
            {
                nombreCarrera = value;
            }
        }

        public string NombreCorto
        {
            get
            {
                return nombreCorto;
            }

            set
            {
                nombreCorto = value;
            }
        }

        public string Prefijo
        {
            get
            {
                return prefijo;
            }

            set
            {
                prefijo = value;
            }
        }
    }
}
