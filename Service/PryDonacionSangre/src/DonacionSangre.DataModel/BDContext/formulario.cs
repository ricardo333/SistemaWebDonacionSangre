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
    
    public partial class formulario
    {
        public int idFormulario { get; set; }
        public string pregunta1 { get; set; }
        public string pregunta2 { get; set; }
        public string pregunta3 { get; set; }
        public string pregunta4 { get; set; }
        public int idUsuario { get; set; }
    
        public virtual usuario usuario { get; set; }
    }
}