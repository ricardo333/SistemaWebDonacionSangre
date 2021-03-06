USE [Donacion]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[aviso](
	[idAviso] [int] IDENTITY(1,1) NOT NULL,
	[idSolicitante] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[idSangre] [int] NOT NULL,
	[idRequerimiento] [int] NOT NULL,
	[critico] [char](2) NOT NULL,
	[cantidad] [decimal](5, 0) NOT NULL,
	[descripcion] [varchar](200) NULL,
	[imagen] [image] NULL,
 CONSTRAINT [PK_aviso] PRIMARY KEY CLUSTERED 
(
	[idAviso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ciudad](
	[idCiudad] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ciudad] PRIMARY KEY CLUSTERED 
(
	[idCiudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[departamento](
	[idDepartamento] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[idCiudad] [int] NOT NULL,
 CONSTRAINT [PK_departamento] PRIMARY KEY CLUSTERED 
(
	[idDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[donante](
	[idDonante] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[apellido] [varchar](100) NOT NULL,
	[fecha_nacimiento] [date] NOT NULL,
	[genero] [varchar](10) NOT NULL,
	[dni] [varchar](8) NOT NULL,
	[celular] [int] NOT NULL,
	[idDepartamento] [int] NOT NULL,
	[direccion] [varchar](200) NOT NULL,
	[idFormulario] [int] NOT NULL,
 CONSTRAINT [PK_donante] PRIMARY KEY CLUSTERED 
(
	[idDonante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[formulario](
	[idFormulario] [int] IDENTITY(1,1) NOT NULL,
	[pregunta1] [char](2) NOT NULL,
	[pregunta2] [char](2) NOT NULL,
	[pregunta3] [char](2) NOT NULL,
	[pregunta4] [char](2) NOT NULL,
 CONSTRAINT [PK_Formulario] PRIMARY KEY CLUSTERED 
(
	[idFormulario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[perfil](
	[idPerfil] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_perfil] PRIMARY KEY CLUSTERED 
(
	[idPerfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[postulacion](
	[idPostulacion] [int] IDENTITY(1,1) NOT NULL,
	[idAviso] [int] NOT NULL,
	[idDonante] [int] NOT NULL,
 CONSTRAINT [PK_Postulacion] PRIMARY KEY CLUSTERED 
(
	[idPostulacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[requerimiento](
	[idRequerimiento] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Requerimiento] PRIMARY KEY CLUSTERED 
(
	[idRequerimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[solicitante](
	[idSolicitante] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Solicitante] PRIMARY KEY CLUSTERED 
(
	[idSolicitante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tipo_sangre](
	[idSangre] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tipo_sangre] PRIMARY KEY CLUSTERED 
(
	[idSangre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usuario](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[correo] [varchar](100) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[idPerfil] [int] NOT NULL,
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[aviso]  WITH CHECK ADD  CONSTRAINT [FK_aviso_Requerimiento] FOREIGN KEY([idRequerimiento])
REFERENCES [dbo].[requerimiento] ([idRequerimiento])
GO
ALTER TABLE [dbo].[aviso] CHECK CONSTRAINT [FK_aviso_Requerimiento]
GO
ALTER TABLE [dbo].[aviso]  WITH CHECK ADD  CONSTRAINT [FK_aviso_Solicitante] FOREIGN KEY([idSolicitante])
REFERENCES [dbo].[solicitante] ([idSolicitante])
GO
ALTER TABLE [dbo].[aviso] CHECK CONSTRAINT [FK_aviso_Solicitante]
GO
ALTER TABLE [dbo].[aviso]  WITH CHECK ADD  CONSTRAINT [FK_aviso_tipo_sangre] FOREIGN KEY([idSangre])
REFERENCES [dbo].[tipo_sangre] ([idSangre])
GO
ALTER TABLE [dbo].[aviso] CHECK CONSTRAINT [FK_aviso_tipo_sangre]
GO
ALTER TABLE [dbo].[departamento]  WITH CHECK ADD  CONSTRAINT [FK_departamento_ciudad] FOREIGN KEY([idCiudad])
REFERENCES [dbo].[ciudad] ([idCiudad])
GO
ALTER TABLE [dbo].[departamento] CHECK CONSTRAINT [FK_departamento_ciudad]
GO
ALTER TABLE [dbo].[donante]  WITH CHECK ADD  CONSTRAINT [FK_donante_departamento] FOREIGN KEY([idDepartamento])
REFERENCES [dbo].[departamento] ([idDepartamento])
GO
ALTER TABLE [dbo].[donante] CHECK CONSTRAINT [FK_donante_departamento]
GO
ALTER TABLE [dbo].[donante]  WITH CHECK ADD  CONSTRAINT [FK_donante_Formulario] FOREIGN KEY([idFormulario])
REFERENCES [dbo].[formulario] ([idFormulario])
GO
ALTER TABLE [dbo].[donante] CHECK CONSTRAINT [FK_donante_Formulario]
GO
ALTER TABLE [dbo].[donante]  WITH CHECK ADD  CONSTRAINT [FK_donante_usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[donante] CHECK CONSTRAINT [FK_donante_usuario]
GO
ALTER TABLE [dbo].[postulacion]  WITH CHECK ADD  CONSTRAINT [FK_Postulacion_aviso] FOREIGN KEY([idAviso])
REFERENCES [dbo].[aviso] ([idAviso])
GO
ALTER TABLE [dbo].[postulacion] CHECK CONSTRAINT [FK_Postulacion_aviso]
GO
ALTER TABLE [dbo].[postulacion]  WITH CHECK ADD  CONSTRAINT [FK_Postulacion_donante] FOREIGN KEY([idDonante])
REFERENCES [dbo].[donante] ([idDonante])
GO
ALTER TABLE [dbo].[postulacion] CHECK CONSTRAINT [FK_Postulacion_donante]
GO
ALTER TABLE [dbo].[solicitante]  WITH CHECK ADD  CONSTRAINT [FK_Solicitante_usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[solicitante] CHECK CONSTRAINT [FK_Solicitante_usuario]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_perfil] FOREIGN KEY([idPerfil])
REFERENCES [dbo].[perfil] ([idPerfil])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_usuario_perfil]
GO
ALTER DATABASE [Donacion] SET  READ_WRITE 
GO
