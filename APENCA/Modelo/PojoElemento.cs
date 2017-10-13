using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace APENCA.Pojos
{
    class PojoElemento
    {
        private int idElemento, idSecciones;
        private String textElemento;

        public int IdElemento
        {
            get
            {
                return idElemento;
            }

            set
            {
                idElemento = value;
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

        public string TextElemento
        {
            get
            {
                return textElemento;
            }

            set
            {
                textElemento = value;
            }
        }
    }
}
