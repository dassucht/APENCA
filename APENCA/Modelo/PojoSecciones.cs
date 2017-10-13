using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace APENCA.Pojos
{
    class PojoSecciones
    {
        private int idSecciones;
        private string textSeccion, nombreCorto;

        public int IdSecciones
        {
            get
            {
                return idSecciones;
            }

            set
            {
                idSecciones = value;
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

        public string TextSeccion
        {
            get
            {
                return textSeccion;
            }

            set
            {
                textSeccion = value;
            }
        }
    }
}
