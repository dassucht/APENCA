using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace APENCA.Pojos
{
    class PojoEncuestasRealizadas
    {
        private int idEncuestasRealizadas, respuestaElemento, idEncuestas,idSecciones, idElementos, idCarreras;
        private String comentario, fecha, noControl;

        public int IdEncuestasRealizadas
        {
            get
            {
                return idEncuestasRealizadas;
            }

            set
            {
                idEncuestasRealizadas = value;
            }
        }

        public int RespuestaElemento
        {
            get
            {
                return respuestaElemento;
            }

            set
            {
                respuestaElemento = value;
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

        public int IdElementos
        {
            get
            {
                return idElementos;
            }

            set
            {
                idElementos = value;
            }
        }

        public int IdCarreras
        {
            get
            {
                return idCarreras;
            }

            set
            {
                idCarreras = value;
            }
        }

        public string Comentario
        {
            get
            {
                return comentario;
            }

            set
            {
                comentario = value;
            }
        }

        public string Fecha
        {
            get
            {
                return fecha;
            }

            set
            {
                fecha = value;
            }
        }

        public string NoControl
        {
            get
            {
                return noControl;
            }

            set
            {
                noControl = value;
            }
        }
    }
}
