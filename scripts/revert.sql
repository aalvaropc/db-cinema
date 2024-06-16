USE master;
GO

-- Desconectar todas las conexiones a la base de datos 'cinema'
DECLARE @killCommand NVARCHAR(MAX) = '';

SELECT @killCommand = @killCommand + 'KILL ' + CAST(spid AS NVARCHAR) + ';'
FROM sys.sysprocesses
WHERE dbid = DB_ID('cinema');

EXEC sp_executesql @killCommand;

-- Poner la base de datos 'cinema' en modo de usuario único
ALTER DATABASE cinema
SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO

-- Eliminar la base de datos 'cinema'
DROP DATABASE cinema;