-- This file contains SQL statements that will be executed after the build script.
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Akshara_0106'
GO
CREATE CERTIFICATE Sensetive_Protect WITH SUBJECT = 'Protect Sensetive Data'
GO
CREATE SYMMETRIC KEY SymKey_Sensetive WITH ALGORITHM = AES_256 ENCRYPTION BY CERTIFICATE Sensetive_Protect
GO
