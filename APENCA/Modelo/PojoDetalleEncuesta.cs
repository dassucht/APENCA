using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace APENCA.Pojos
{
    class PojoDetalleEncuesta
    {
        private int idEncuestas, idSecciones;

        public int IdEncuestas
        {
            get
            {
                return idEncuestas;
            }

            set
            {
                idEncuestas = value;
            }
        }

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
    }
}
