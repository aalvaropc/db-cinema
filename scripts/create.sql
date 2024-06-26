CREATE DATABASE cinema
GO
USE [cinema]
GO
/****** Object:  Table [dbo].[asiento]    Script Date: 10/03/2024 15:10:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asiento](
	[asiento_id] [int] IDENTITY(1,1) NOT NULL,
	[sala_id] [int] NOT NULL,
	[fila] [nvarchar](10) NOT NULL,
	[num_asiento] [int] NOT NULL,
	[estado] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[asiento_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boleto]    Script Date: 10/03/2024 15:10:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boleto](
	[boleto_id] [int] IDENTITY(1,1) NOT NULL,
	[precio_total] [money] NOT NULL,
	[funcion_id] [int] NOT NULL,
	[cliente_id] [int] NOT NULL,
	[empleado_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[boleto_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 10/03/2024 15:10:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[cliente_id] [int] IDENTITY(1,1) NOT NULL,
	[nombres] [nvarchar](150) NOT NULL,
	[apellidos] [nvarchar](150) NOT NULL,
	[dni] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cliente_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalle_asiento_boleto]    Script Date: 10/03/2024 15:10:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle_asiento_boleto](
	[detalle_id] [int] IDENTITY(1,1) NOT NULL,
	[fecha_asignacion] [timestamp] NOT NULL,
	[precio_asiento] [money] NOT NULL,
	[boleto_id] [int] NOT NULL,
	[asiento_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[detalle_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 10/03/2024 15:10:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleado](
	[empleado_id] [int] IDENTITY(1,1) NOT NULL,
	[nombres] [nvarchar](150) NOT NULL,
	[apellidos] [nvarchar](150) NOT NULL,
	[sede_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[empleado_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[funcion]    Script Date: 10/03/2024 15:10:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[funcion](
	[funcion_id] [int] IDENTITY(1,1) NOT NULL,
	[hora_inicio] [time](7) NOT NULL,
	[fecha] [date] NOT NULL,
	[pelicula_id] [int] NOT NULL,
	[sala_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[funcion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pelicula]    Script Date: 10/03/2024 15:10:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pelicula](
	[pelicula_id] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [nvarchar](150) NOT NULL,
	[genero] [nvarchar](50) NOT NULL,
	[descripcion] [nvarchar](max) NOT NULL,
	[director] [nvarchar](150) NOT NULL,
	[clasificacion] [nvarchar](255) NOT NULL,
	[duracion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[pelicula_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sala]    Script Date: 10/03/2024 15:10:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sala](
	[sala_id] [int] IDENTITY(1,1) NOT NULL,
	[numero_sala] [int] NOT NULL,
	[capacidad] [int] NOT NULL,
	[tipo] [nvarchar](255) NOT NULL,
	[sede_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sala_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sede]    Script Date: 10/03/2024 15:10:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sede](
	[sede_id] [int] IDENTITY(1,1) NOT NULL,
	[distrito] [nvarchar](150) NOT NULL,
	[ciudad] [nvarchar](150) NOT NULL,
	[direccion] [nvarchar](150) NOT NULL,
	[num_salas] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sede_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[asiento]  WITH CHECK ADD FOREIGN KEY([sala_id])
REFERENCES [dbo].[sala] ([sala_id])
GO
ALTER TABLE [dbo].[boleto]  WITH CHECK ADD FOREIGN KEY([cliente_id])
REFERENCES [dbo].[cliente] ([cliente_id])
GO
ALTER TABLE [dbo].[boleto]  WITH CHECK ADD FOREIGN KEY([empleado_id])
REFERENCES [dbo].[empleado] ([empleado_id])
GO
ALTER TABLE [dbo].[boleto]  WITH CHECK ADD FOREIGN KEY([funcion_id])
REFERENCES [dbo].[funcion] ([funcion_id])
GO
ALTER TABLE [dbo].[detalle_asiento_boleto]  WITH CHECK ADD FOREIGN KEY([asiento_id])
REFERENCES [dbo].[asiento] ([asiento_id])
GO
ALTER TABLE [dbo].[detalle_asiento_boleto]  WITH CHECK ADD FOREIGN KEY([boleto_id])
REFERENCES [dbo].[boleto] ([boleto_id])
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD FOREIGN KEY([sede_id])
REFERENCES [dbo].[sede] ([sede_id])
GO
ALTER TABLE [dbo].[funcion]  WITH CHECK ADD FOREIGN KEY([pelicula_id])
REFERENCES [dbo].[pelicula] ([pelicula_id])
GO
ALTER TABLE [dbo].[funcion]  WITH CHECK ADD FOREIGN KEY([sala_id])
REFERENCES [dbo].[sala] ([sala_id])
GO
ALTER TABLE [dbo].[sala]  WITH CHECK ADD FOREIGN KEY([sede_id])
REFERENCES [dbo].[sede] ([sede_id])
GO
ALTER TABLE [dbo].[asiento]  WITH CHECK ADD CHECK  (([estado]='Reservado' OR [estado]='Ocupado' OR [estado]='Disponible'))
GO
ALTER TABLE [dbo].[pelicula]  WITH CHECK ADD CHECK  (([clasificacion]='NC17' OR [clasificacion]='R' OR [clasificacion]='PG13' OR [clasificacion]='PG' OR [clasificacion]='G'))
GO
ALTER TABLE [dbo].[sala]  WITH CHECK ADD CHECK  (([tipo]='IMAX' OR [tipo]='3D' OR [tipo]='VIP' OR [tipo]='Standard'))
GO
