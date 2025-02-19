USE [master]
GO
/****** Object:  Database [DB_NORTFARMA]    Script Date: 05/02/2025 17:48:58 ******/
CREATE DATABASE [DB_NORTFARMA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_NORTFARMA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DB_NORTFARMA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_NORTFARMA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DB_NORTFARMA_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DB_NORTFARMA] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_NORTFARMA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_NORTFARMA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_NORTFARMA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_NORTFARMA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_NORTFARMA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_NORTFARMA] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_NORTFARMA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_NORTFARMA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_NORTFARMA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_NORTFARMA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_NORTFARMA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_NORTFARMA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_NORTFARMA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_NORTFARMA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_NORTFARMA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_NORTFARMA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DB_NORTFARMA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_NORTFARMA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_NORTFARMA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_NORTFARMA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_NORTFARMA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_NORTFARMA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_NORTFARMA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_NORTFARMA] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB_NORTFARMA] SET  MULTI_USER 
GO
ALTER DATABASE [DB_NORTFARMA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_NORTFARMA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_NORTFARMA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_NORTFARMA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_NORTFARMA] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB_NORTFARMA] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DB_NORTFARMA] SET QUERY_STORE = ON
GO
ALTER DATABASE [DB_NORTFARMA] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DB_NORTFARMA]
GO
/****** Object:  Table [dbo].[AdministradorFarmacia]    Script Date: 05/02/2025 17:48:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdministradorFarmacia](
	[idAdministrador] [char](5) NOT NULL,
	[estado] [char](1) NOT NULL,
	[idPersona] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[idAdministrador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnulacionProducto]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnulacionProducto](
	[idAnulacion] [char](5) NOT NULL,
	[fechaHora] [datetime] NOT NULL,
	[maquina] [varchar](50) NULL,
	[username] [varchar](50) NULL,
	[motivo] [varchar](255) NULL,
	[idAdministrador] [char](5) NULL,
	[idDetallePedido] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[idAnulacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnulacionVenta]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnulacionVenta](
	[idAnulacion] [char](5) NOT NULL,
	[fechaHora] [datetime] NOT NULL,
	[maquina] [varchar](50) NULL,
	[username] [varchar](50) NULL,
	[motivo] [varchar](255) NULL,
	[idAdministrador] [char](5) NULL,
	[idVenta] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[idAnulacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cajero]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cajero](
	[idCajero] [char](5) NOT NULL,
	[idPersona] [char](5) NULL,
	[estado] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idCajero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[idCategoria] [char](5) NOT NULL,
	[nombreCategoria] [varchar](50) NOT NULL,
	[estado] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudad](
	[idCiudad] [char](5) NOT NULL,
	[nombreCiudad] [varchar](50) NOT NULL,
	[estado] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idCiudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[idCliente] [char](5) NOT NULL,
	[idPersona] [char](5) NULL,
	[estado] [char](1) NOT NULL,
	[idTipo] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Despachador]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Despachador](
	[idDespechador] [char](5) NOT NULL,
	[estado] [char](1) NOT NULL,
	[idPersona] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[idDespechador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Despacho]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Despacho](
	[idDespacho] [char](5) NOT NULL,
	[estado] [char](1) NOT NULL,
	[fechaHora] [datetime] NOT NULL,
	[idVenta] [char](5) NULL,
	[idDespachador] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[idDespacho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetallePedido]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallePedido](
	[idDetallePedido] [char](5) NOT NULL,
	[cantidad] [int] NOT NULL,
	[subTotal] [decimal](10, 2) NOT NULL,
	[precioVenta] [decimal](10, 2) NOT NULL,
	[estado] [char](1) NOT NULL,
	[idProducto] [char](5) NULL,
	[idPedido] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[idDetallePedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dispositivo]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dispositivo](
	[idDispositivo] [char](5) NOT NULL,
	[codigo] [char](10) NOT NULL,
	[estado] [char](1) NOT NULL,
	[descripcion] [varchar](100) NULL,
	[idPagoTarjeta] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[idDispositivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Farmacia]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Farmacia](
	[idFarmacia] [char](5) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[direccion] [varchar](100) NOT NULL,
	[estado] [char](1) NOT NULL,
	[idCiudad] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[idFarmacia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GeneradorIDs]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GeneradorIDs](
	[tabla] [varchar](50) NOT NULL,
	[prefijo] [char](1) NOT NULL,
	[ultimo_id] [char](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tabla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organizacion]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organizacion](
	[idOrganizacion] [char](5) NOT NULL,
	[ruc] [char](11) NOT NULL,
	[estado] [char](1) NOT NULL,
	[idCliente] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[idOrganizacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PagoBilleteraDigital]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PagoBilleteraDigital](
	[idPagoBilleteraDigital] [char](5) NOT NULL,
	[importe] [decimal](10, 2) NOT NULL,
	[estado] [char](1) NOT NULL,
	[idventa] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[idPagoBilleteraDigital] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PagoEfectivo]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PagoEfectivo](
	[idPagoEfectivo] [char](5) NOT NULL,
	[importe] [decimal](10, 2) NOT NULL,
	[vuelto] [decimal](10, 2) NOT NULL,
	[estado] [char](1) NOT NULL,
	[idventa] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[idPagoEfectivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PagoTarjeta]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PagoTarjeta](
	[idPagoTarjeta] [char](5) NOT NULL,
	[importe] [decimal](10, 2) NOT NULL,
	[estado] [char](1) NOT NULL,
	[idventa] [char](5) NULL,
	[idTarjeta] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[idPagoTarjeta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido](
	[idPedido] [char](5) NOT NULL,
	[fechaRecepcion] [date] NOT NULL,
	[fechaPedido] [date] NOT NULL,
	[totalPagar] [decimal](10, 2) NOT NULL,
	[estado] [char](1) NOT NULL,
	[idCliente] [char](5) NULL,
	[idVendedor] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[idPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[idPersona] [char](5) NOT NULL,
	[nombreCompleto] [varchar](200) NOT NULL,
	[email] [varchar](200) NULL,
	[numeroDocumento] [char](8) NULL,
	[telefono] [char](11) NULL,
	[direccion] [varchar](100) NULL,
	[estado] [char](1) NOT NULL,
	[idTipoDocumento] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[idPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[idProducto] [char](5) NOT NULL,
	[nombreProducto] [varchar](100) NOT NULL,
	[precio] [decimal](10, 2) NOT NULL,
	[descripcion] [varchar](200) NULL,
	[estado] [char](1) NOT NULL,
	[idCategoria] [char](5) NULL,
	[imagen] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRUEBA]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRUEBA](
	[id] [char](5) NOT NULL,
	[nombre] [varchar](200) NULL,
 CONSTRAINT [PK_ID] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tarjeta]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarjeta](
	[idTarjeta] [char](5) NOT NULL,
	[numeroTarjeta] [decimal](10, 2) NOT NULL,
	[estado] [char](1) NOT NULL,
	[idCliente] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[idTarjeta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoCliente]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoCliente](
	[idTipo] [char](5) NOT NULL,
	[nombreTipo] [varchar](50) NULL,
	[estado] [char](1) NULL,
 CONSTRAINT [PK_TipoCliente] PRIMARY KEY CLUSTERED 
(
	[idTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoComprobante]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoComprobante](
	[idTipoComprobante] [char](5) NOT NULL,
	[nombreTipoComprobante] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idTipoComprobante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDocumento](
	[idTipoDocumento] [char](5) NOT NULL,
	[nombreTipoDocumento] [varchar](50) NOT NULL,
	[estado] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idTipoDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [char](5) NOT NULL,
	[nombreUsuario] [varchar](50) NOT NULL,
	[contrasena] [varchar](255) NOT NULL,
	[estado] [char](1) NOT NULL,
	[idPersona] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VendedorFarmaceutico]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendedorFarmaceutico](
	[idVendedor] [char](5) NOT NULL,
	[estado] [char](1) NOT NULL,
	[idPersona] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[idVendedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[idVenta] [char](5) NOT NULL,
	[fechaVenta] [date] NOT NULL,
	[totalVenta] [decimal](10, 2) NOT NULL,
	[ncomprobante] [varchar](20) NOT NULL,
	[estado] [char](1) NOT NULL,
	[idFarmacia] [char](5) NULL,
	[idTipoComprobante] [char](5) NULL,
	[idPedido] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[idVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AdministradorFarmacia] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[AnulacionProducto] ADD  DEFAULT (host_name()) FOR [maquina]
GO
ALTER TABLE [dbo].[AnulacionProducto] ADD  DEFAULT (suser_name()) FOR [username]
GO
ALTER TABLE [dbo].[AnulacionVenta] ADD  DEFAULT (host_name()) FOR [maquina]
GO
ALTER TABLE [dbo].[AnulacionVenta] ADD  DEFAULT (suser_name()) FOR [username]
GO
ALTER TABLE [dbo].[Cajero] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[Categoria] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[Ciudad] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[Despachador] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[Despacho] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[DetallePedido] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[Dispositivo] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[Farmacia] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[Organizacion] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[PagoBilleteraDigital] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[PagoEfectivo] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[PagoTarjeta] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[Pedido] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[Persona] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[Producto] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[Tarjeta] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[TipoDocumento] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[Usuario] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[VendedorFarmaceutico] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[Venta] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[AdministradorFarmacia]  WITH CHECK ADD FOREIGN KEY([idPersona])
REFERENCES [dbo].[Persona] ([idPersona])
GO
ALTER TABLE [dbo].[AnulacionProducto]  WITH CHECK ADD FOREIGN KEY([idAdministrador])
REFERENCES [dbo].[AdministradorFarmacia] ([idAdministrador])
GO
ALTER TABLE [dbo].[AnulacionProducto]  WITH CHECK ADD FOREIGN KEY([idDetallePedido])
REFERENCES [dbo].[DetallePedido] ([idDetallePedido])
GO
ALTER TABLE [dbo].[AnulacionVenta]  WITH CHECK ADD FOREIGN KEY([idAdministrador])
REFERENCES [dbo].[AdministradorFarmacia] ([idAdministrador])
GO
ALTER TABLE [dbo].[AnulacionVenta]  WITH CHECK ADD FOREIGN KEY([idVenta])
REFERENCES [dbo].[Venta] ([idVenta])
GO
ALTER TABLE [dbo].[Cajero]  WITH CHECK ADD FOREIGN KEY([idPersona])
REFERENCES [dbo].[Persona] ([idPersona])
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([idPersona])
REFERENCES [dbo].[Persona] ([idPersona])
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_TipoCliente] FOREIGN KEY([idTipo])
REFERENCES [dbo].[TipoCliente] ([idTipo])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_TipoCliente]
GO
ALTER TABLE [dbo].[Despachador]  WITH CHECK ADD FOREIGN KEY([idPersona])
REFERENCES [dbo].[Persona] ([idPersona])
GO
ALTER TABLE [dbo].[Despacho]  WITH CHECK ADD FOREIGN KEY([idDespachador])
REFERENCES [dbo].[Despachador] ([idDespechador])
GO
ALTER TABLE [dbo].[Despacho]  WITH CHECK ADD FOREIGN KEY([idVenta])
REFERENCES [dbo].[Venta] ([idVenta])
GO
ALTER TABLE [dbo].[DetallePedido]  WITH CHECK ADD FOREIGN KEY([idPedido])
REFERENCES [dbo].[Pedido] ([idPedido])
GO
ALTER TABLE [dbo].[DetallePedido]  WITH CHECK ADD FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto] ([idProducto])
GO
ALTER TABLE [dbo].[Dispositivo]  WITH CHECK ADD FOREIGN KEY([idPagoTarjeta])
REFERENCES [dbo].[PagoTarjeta] ([idPagoTarjeta])
GO
ALTER TABLE [dbo].[Farmacia]  WITH CHECK ADD FOREIGN KEY([idCiudad])
REFERENCES [dbo].[Ciudad] ([idCiudad])
GO
ALTER TABLE [dbo].[Organizacion]  WITH CHECK ADD FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([idCliente])
GO
ALTER TABLE [dbo].[PagoBilleteraDigital]  WITH CHECK ADD FOREIGN KEY([idventa])
REFERENCES [dbo].[Venta] ([idVenta])
GO
ALTER TABLE [dbo].[PagoEfectivo]  WITH CHECK ADD FOREIGN KEY([idventa])
REFERENCES [dbo].[Venta] ([idVenta])
GO
ALTER TABLE [dbo].[PagoTarjeta]  WITH CHECK ADD FOREIGN KEY([idTarjeta])
REFERENCES [dbo].[Tarjeta] ([idTarjeta])
GO
ALTER TABLE [dbo].[PagoTarjeta]  WITH CHECK ADD FOREIGN KEY([idventa])
REFERENCES [dbo].[Venta] ([idVenta])
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([idCliente])
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD FOREIGN KEY([idVendedor])
REFERENCES [dbo].[VendedorFarmaceutico] ([idVendedor])
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD FOREIGN KEY([idTipoDocumento])
REFERENCES [dbo].[TipoDocumento] ([idTipoDocumento])
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD FOREIGN KEY([idCategoria])
REFERENCES [dbo].[Categoria] ([idCategoria])
GO
ALTER TABLE [dbo].[Tarjeta]  WITH CHECK ADD FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([idCliente])
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD FOREIGN KEY([idPersona])
REFERENCES [dbo].[Persona] ([idPersona])
GO
ALTER TABLE [dbo].[VendedorFarmaceutico]  WITH CHECK ADD FOREIGN KEY([idPersona])
REFERENCES [dbo].[Persona] ([idPersona])
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD FOREIGN KEY([idFarmacia])
REFERENCES [dbo].[Farmacia] ([idFarmacia])
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD FOREIGN KEY([idPedido])
REFERENCES [dbo].[Pedido] ([idPedido])
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD FOREIGN KEY([idTipoComprobante])
REFERENCES [dbo].[TipoComprobante] ([idTipoComprobante])
GO
/****** Object:  StoredProcedure [dbo].[GenerarID]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GenerarID]
    @NombreTabla NVARCHAR(50),  -- Nombre de la tabla
    @NuevoID CHAR(5) OUTPUT     -- Nuevo ID generado
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @Prefijo CHAR(1);
    DECLARE @UltimoID CHAR(5);
    DECLARE @NumeroSecuencia INT;

    -- Obtener el prefijo y el último ID de la tabla GeneradorIDs
    SELECT @Prefijo = prefijo, @UltimoID = ultimo_id
    FROM GeneradorIDs
    WHERE tabla = @NombreTabla;

    -- Extraer el número secuencial del último ID
    SET @NumeroSecuencia = CAST(SUBSTRING(@UltimoID, 2, 4) AS INT);

    -- Incrementar el número secuencial
    SET @NumeroSecuencia = @NumeroSecuencia + 1;

    -- Generar el nuevo ID
    SET @NuevoID = CONCAT(@Prefijo, RIGHT('0000' + CAST(@NumeroSecuencia AS NVARCHAR(4)), 4));

    -- Actualizar el campo ultimo_id en la tabla GeneradorIDs
    UPDATE GeneradorIDs
    SET ultimo_id = @NuevoID
    WHERE tabla = @NombreTabla;
END;

GO
/****** Object:  StoredProcedure [dbo].[sp_CrearUsuario]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CrearUsuario]
    @nombreUsuario NVARCHAR(50),
    @contrasena NVARCHAR(255),
    @rol NVARCHAR(50),
    @estado CHAR(1),
    @idPersona CHAR(5),
    @idUsuario CHAR(5) OUTPUT -- Parámetro de salida para devolver el ID generado
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRANSACTION;
    BEGIN TRY
        -- Insertar en la tabla Usuario
        INSERT INTO Usuario (nombreUsuario, contrasena, estado, idPersona)
        VALUES (@nombreUsuario, @contrasena, @estado, @idPersona);
        
        -- Obtener el idUsuario generado por el trigger
        SELECT @idUsuario = idUsuario
        FROM Usuario
        WHERE idPersona = @idPersona
          AND nombreUsuario = @nombreUsuario;

        -- Dependiendo del rol, insertar en la tabla correspondiente
        IF @rol = 'Administrador'
        BEGIN
            INSERT INTO AdministradorFarmacia (idPersona, estado)
            VALUES (@idPersona, @estado);
        END
        ELSE IF @rol = 'Vendedor'
        BEGIN
            INSERT INTO VendedorFarmaceutico (idPersona, estado)
            VALUES (@idPersona, @estado);
        END
        ELSE IF @rol = 'Cajero'
        BEGIN
            INSERT INTO Cajero (idPersona, estado)
            VALUES (@idPersona, @estado);
        END
        ELSE IF @rol = 'Despachador'
        BEGIN
            INSERT INTO Despachador (idPersona, estado)
            VALUES (@idPersona, @estado);
        END

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        -- En caso de error, revertir la transacción
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_EliminarUsuario]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EliminarUsuario]
    @idUsuario CHAR(5)--elimado logico usuario estado --2
AS
BEGIN
    SET NOCOUNT OFF;

-- Cambiar el estado a 2 (eliminado lógico)
    UPDATE Usuario
    SET estado = '2'
    WHERE idUsuario = @idUsuario;

    -- Actualizar también en las tablas relacionadas según el rol del usuario
    UPDATE AdministradorFarmacia
    SET estado = '2'
    WHERE idPersona = (SELECT idPersona FROM Usuario WHERE idUsuario = @idUsuario);

    UPDATE VendedorFarmaceutico
    SET estado = '2'
    WHERE idPersona = (SELECT idPersona FROM Usuario WHERE idUsuario = @idUsuario);

    UPDATE Cajero
    SET estado = '2'
    WHERE idPersona = (SELECT idPersona FROM Usuario WHERE idUsuario = @idUsuario);

    UPDATE Despachador
    SET estado = '2'
    WHERE idPersona = (SELECT idPersona FROM Usuario WHERE idUsuario = @idUsuario);    

END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ListarPersonasPorNombreYValidarRol]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ListarPersonasPorNombreYValidarRol]
    @filtro NVARCHAR(200), -- Nombre o parte del nombre a buscar
    @rol NVARCHAR(50)      -- Rol a validar (Administrador, Vendedor, Cajero, Despachador)
AS
BEGIN
    SET NOCOUNT ON;

    -- Filtrar personas por nombre y validar si tienen el rol solicitado
    SELECT 
        p.idPersona,
        p.nombreCompleto,
        p.email,
        p.numeroDocumento,
        CASE 
            WHEN @rol = 'Administrador' AND EXISTS (SELECT 1 FROM AdministradorFarmacia WHERE idPersona = p.idPersona) THEN 'Ya es Administrador'
            WHEN @rol = 'Vendedor' AND EXISTS (SELECT 1 FROM VendedorFarmaceutico WHERE idPersona = p.idPersona) THEN 'Ya es Vendedor'
            WHEN @rol = 'Cajero' AND EXISTS (SELECT 1 FROM Cajero WHERE idPersona = p.idPersona) THEN 'Ya es Cajero'
            WHEN @rol = 'Despachador' AND EXISTS (SELECT 1 FROM Despachador WHERE idPersona = p.idPersona) THEN 'Ya es Despachador'
            ELSE 'Disponible'
        END AS estadoRol
    FROM 
        Persona p
    WHERE 
        p.nombreCompleto LIKE '%' + @filtro + '%' -- Filtrar por nombre
        AND p.estado = '1'; -- Solo personas activas
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ListarUsuarios]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	  CREATE PROCEDURE [dbo].[sp_ListarUsuarios]
AS
BEGIN
SELECT  
    u.idUsuario,
    p.idPersona,
    u.nombreUsuario,
    u.contrasena,
    u.estado,
    p.nombreCompleto,
    p.email,
    CASE
        WHEN c.idCajero IS NOT NULL and c.estado !=2 THEN 'Cajero'
        WHEN v.idVendedor IS NOT NULL and v.estado !=2 THEN 'Vendedor'
        WHEN a.idAdministrador IS NOT NULL and  a.estado !=2 THEN 'Administrador'
        WHEN d.idDespechador IS NOT NULL and d.estado !=2  THEN 'Despachador'
		END AS rol
	FROM Usuario u
	INNER JOIN Persona p ON u.idPersona = p.idPersona
	LEFT JOIN Cajero c ON p.idPersona = c.idPersona
	LEFT JOIN VendedorFarmaceutico v ON p.idPersona = v.idPersona
	LEFT JOIN AdministradorFarmacia a ON p.idPersona = a.idPersona
	LEFT JOIN Despachador d ON p.idPersona = d.idPersona
	LEFT JOIN Cliente cl ON p.idPersona = cl.idPersona
	WHERE 
    p.estado IN (0, 1) -- Solo personas activas
    AND u.estado IN (0, 1) -- Solo usuarios activos
    AND cl.idCliente IS NULL -- Excluye clientes del listado
    AND p.estado != 2 -- Excluye personas con estado 2
    AND u.estado != 2 -- Excluye usuarios con estado 2
	

END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarRolUsuario]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ModificarRolUsuario]
    @idUsuario CHAR(5),
    @nuevoRol NVARCHAR(50) -- Rol al que se quiere cambiar
AS
BEGIN
    SET NOCOUNT OFF;
    BEGIN TRANSACTION;

    BEGIN TRY
        -- 1. Obtener la persona asociada al usuario
        DECLARE @idPersona CHAR(5);
        SELECT @idPersona = idPersona FROM Usuario WHERE idUsuario = @idUsuario;

        IF @idPersona IS NULL
        BEGIN
            THROW 50001, 'El usuario no existe o no tiene una persona asociada.', 1;
        END

        -- 2. Verificar si el nuevo rol ya existe para esta persona
        IF @nuevoRol = 'Administrador'
        BEGIN
            IF EXISTS (SELECT 1 FROM AdministradorFarmacia WHERE idPersona = @idPersona AND estado IN ('0', '1'))
            BEGIN
                THROW 50002, 'La persona ya tiene el rol de Administrador activo o inactivo.', 1;
            END
        END
        ELSE IF @nuevoRol = 'Vendedor'
        BEGIN
            IF EXISTS (SELECT 1 FROM VendedorFarmaceutico WHERE idPersona = @idPersona AND estado IN ('0', '1'))
            BEGIN
                THROW 50003, 'La persona ya tiene el rol de Vendedor activo o inactivo.', 1;
            END
        END
        ELSE IF @nuevoRol = 'Cajero'
        BEGIN
            IF EXISTS (SELECT 1 FROM Cajero WHERE idPersona = @idPersona AND estado IN ('0', '1'))
            BEGIN
                THROW 50004, 'La persona ya tiene el rol de Cajero activo o inactivo.', 1;
            END
        END
        ELSE IF @nuevoRol = 'Despachador'
        BEGIN
            IF EXISTS (SELECT 1 FROM Despachador WHERE idPersona = @idPersona AND estado IN ('0', '1'))
            BEGIN
                THROW 50005, 'La persona ya tiene el rol de Despachador activo o inactivo.', 1;
            END
        END

        -- 3. Eliminar lógicamente el rol anterior
        IF EXISTS (SELECT 1 FROM AdministradorFarmacia WHERE idPersona = @idPersona)
        BEGIN
            UPDATE AdministradorFarmacia SET estado = '2' WHERE idPersona = @idPersona;
        END
        IF EXISTS (SELECT 1 FROM VendedorFarmaceutico WHERE idPersona = @idPersona)
        BEGIN
            UPDATE VendedorFarmaceutico SET estado = '2' WHERE idPersona = @idPersona;
        END
        IF EXISTS (SELECT 1 FROM Cajero WHERE idPersona = @idPersona)
        BEGIN
            UPDATE Cajero SET estado = '2' WHERE idPersona = @idPersona;
        END
        IF EXISTS (SELECT 1 FROM Despachador WHERE idPersona = @idPersona)
        BEGIN
            UPDATE Despachador SET estado = '2' WHERE idPersona = @idPersona;
        END

        -- 4. Activar o insertar el nuevo rol
        IF @nuevoRol = 'Administrador'
        BEGIN
            IF EXISTS (SELECT 1 FROM AdministradorFarmacia WHERE idPersona = @idPersona AND estado = '2')
            BEGIN
                UPDATE AdministradorFarmacia SET estado = '1' WHERE idPersona = @idPersona;
            END
            ELSE
            BEGIN
                INSERT INTO AdministradorFarmacia (idPersona, estado) VALUES (@idPersona, '1');
            END
        END
        ELSE IF @nuevoRol = 'Vendedor'
        BEGIN
            IF EXISTS (SELECT 1 FROM VendedorFarmaceutico WHERE idPersona = @idPersona AND estado = '2')
            BEGIN
                UPDATE VendedorFarmaceutico SET estado = '1' WHERE idPersona = @idPersona;
            END
            ELSE
            BEGIN
                INSERT INTO VendedorFarmaceutico (idPersona, estado) VALUES (@idPersona, '1');
            END
        END
        ELSE IF @nuevoRol = 'Cajero'
        BEGIN
            IF EXISTS (SELECT 1 FROM Cajero WHERE idPersona = @idPersona AND estado = '2')
            BEGIN
                UPDATE Cajero SET estado = '1' WHERE idPersona = @idPersona;
            END
            ELSE
            BEGIN
                INSERT INTO Cajero (idPersona, estado) VALUES (@idPersona, '1');
            END
        END
        ELSE IF @nuevoRol = 'Despachador'
        BEGIN
            IF EXISTS (SELECT 1 FROM Despachador WHERE idPersona = @idPersona AND estado = '2')
            BEGIN
                UPDATE Despachador SET estado = '1' WHERE idPersona = @idPersona;
            END
            ELSE
            BEGIN
                INSERT INTO Despachador (idPersona, estado) VALUES (@idPersona, '1');
            END
        END

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarUsuario]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ModificarUsuario]
    @idUsuario CHAR(5),
    @nombreUsuario NVARCHAR(50),
    @contrasena NVARCHAR(255),
    @rol NVARCHAR(50),
    @estado CHAR(1)
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRANSACTION;
    BEGIN TRY
        -- Actualizar la tabla Usuario
		SET NOCOUNT OFF; -- Asegura que se devuelva el número de filas afectadas
        UPDATE Usuario
        SET 
            nombreUsuario = @nombreUsuario,
            contrasena = @contrasena,
            estado = @estado
        WHERE 
            idUsuario = @idUsuario;

        -- Actualizar el rol en la tabla correspondiente
        IF @rol = 'Administrador'
        BEGIN
            UPDATE AdministradorFarmacia
            SET estado = @estado
            WHERE idAdministrador = @idUsuario;
        END
        ELSE IF @rol = 'Vendedor'
        BEGIN
            UPDATE VendedorFarmaceutico
            SET estado = @estado
            WHERE idVendedor = @idUsuario;
        END
        ELSE IF @rol = 'Cajero'
        BEGIN
            UPDATE Cajero
            SET estado = @estado
            WHERE idCajero = @idUsuario;
        END
        ELSE IF @rol = 'Despachador'
        BEGIN
            UPDATE Despachador
            SET estado = @estado
            WHERE idDespechador = @idUsuario;
        END

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ValidarUsuario]    Script Date: 05/02/2025 17:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ValidarUsuario]
    @usuario NVARCHAR(50),
    @contrasena NVARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @idUsuario CHAR(5), 
            @idPersona CHAR(5), 
            @rol NVARCHAR(50), 
            @nombreCompleto NVARCHAR(100);

    -- Verificar si el usuario existe en la tabla Usuario
    SELECT @idUsuario = u.idUsuario, 
           @idPersona = u.idPersona, 
           @nombreCompleto = p.nombreCompleto
    FROM Usuario u
    INNER JOIN Persona p ON u.idPersona = p.idPersona
    WHERE u.nombreUsuario = @usuario 
      AND u.contrasena = @contrasena 
      AND u.estado = 1;

    -- Si no se encontró el usuario, se devuelve NULL
    IF @idUsuario IS NULL
    BEGIN
        SELECT NULL AS idUsuario, NULL AS nombreUsuario, NULL AS rol, NULL AS nombreCompleto;
        RETURN;
    END

    -- Determinar el rol del usuario según la tabla en la que se encuentre
    IF EXISTS (SELECT 1 FROM AdministradorFarmacia WHERE idPersona = @idPersona)
        SET @rol = 'Administrador';
    ELSE IF EXISTS (SELECT 1 FROM VendedorFarmaceutico WHERE idPersona = @idPersona)
        SET @rol = 'Vendedor';
    ELSE IF EXISTS (SELECT 1 FROM Cajero WHERE idPersona = @idPersona)
        SET @rol = 'Cajero';
    ELSE IF EXISTS (SELECT 1 FROM Despachador WHERE idPersona = @idPersona)
        SET @rol = 'Despachador';
    ELSE IF EXISTS (SELECT 1 FROM Cliente WHERE idPersona = @idPersona AND estado = 1) -- Verifica que el cliente esté activo
        SET @rol = 'Cliente';
    ELSE
        SET @rol = 'Sin Rol'; -- Si no se encuentra en ninguna tabla

    -- Si el usuario no tiene un rol válido, devuelve NULL
    IF @rol = 'Sin Rol'
    BEGIN
        SELECT NULL AS idUsuario, NULL AS nombreUsuario, NULL AS rol, NULL AS nombreCompleto;
        RETURN;
    END

    -- Retornar los datos del usuario con su rol y nombre completo
    SELECT @idUsuario AS idUsuario, 
           @usuario AS nombreUsuario, 
           @rol AS rol, 
           @nombreCompleto AS nombreCompleto;
END;
GO
USE [master]
GO
ALTER DATABASE [DB_NORTFARMA] SET  READ_WRITE 
GO
