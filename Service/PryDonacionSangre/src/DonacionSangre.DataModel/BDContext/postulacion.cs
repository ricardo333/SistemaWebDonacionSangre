//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DonacionSangre.DataModel.BDContext
{
    using System;
    using System.Collections.Generic;
    
    public partial class postulacion
    {
        public int idPostulacion { get; set; }
        public int idAviso { get; set; }
        public int idUsuarioDonante { get; set; }
    
        public virtual aviso aviso { get; set; }
        public virtual usuario usuario { get; set; }
    }
}
