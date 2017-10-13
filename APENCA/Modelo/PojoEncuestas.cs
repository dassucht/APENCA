using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace APENCA.Pojos
{
    class PojoEncuestas
    {
        private int idEncuestas, semestre, anio;

        public int Anio
        {
            get
            {
                return anio;
            }

            set
            {
                anio = value;
            }
        }

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

        public int Semestre
        {
            get
            {
                return semestre;
            }

            set
            {
                semestre = value;
            }
        }
    }
}
