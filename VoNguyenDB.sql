Create table UserAcount(
 ID int IDENTITY(1,1)primary key,
 UserName nvarchar(250) not null,
 Password nvarchar(250) not null,
 Status nvarchar(250) not null,
 )
 Create table Product(
 ID int IDENTITY(1,1)primary key,
 Category_ID int,
 Name nvarchar(250) not null,
 UnitCost decimal(18,1) not null,
 Quantity nvarchar(50) not null,
 Image nvarchar(500) not null,
 Description nvarchar(500),
 Status nvarchar(250) not null,
 )
 Create table Category(
 ID int IDENTITY(1,1) primary key,
 Name nvarchar(250) not null,
 Description nvarchar(500),
 )
 ALTER TABLE dbo.Product ADD CONSTRAINT FK_Category FOREIGN KEY(Category_ID) REFERENCES dbo.Category(ID)

 ---------------------------------------------------------
 
 INSERT INTO UserAcount(UserName,Password,Status)
	VALUES ('AnhNguyen','123456789','Activities'),
			('QuyTho','123456789','Blocked'),
			('HoangLam','123456789','Activities'),
			('LeHuy','123456789','Activities'),
			('MinhDat','123456789','Activities'),
			('TranChi','123456789','Activities'),
			('QuangQui','123456789','Blocked'),
			('ThanhThoai','123456789','Blocked'),
			 ('DatBui','123456789','Activities'),
			 ('AnhNguyen1','123456789','Blocked');
----------------------------------------------------------
 INSERT INTO Category(Name,Description)
	VALUES ('APPLE',N'Hàng Chính Hãng Apple'),
			('SAMSUNG',N'Hàng Chính Hãng SamSung'),
			('OPPO',N'Hàng Chính Hãng Oppo'),
			('BLACKBERRY',N'Hàng Chính Hãng Blackberry');
----------------------------------------------------------
 INSERT INTO Product(Category_ID,Name,UnitCost,Quantity,Image,Description,Status)
	VALUES (1,'Iphone 12 Pro Max',24000000,20,'',N'Nguyên Seal,Bảo Hành Chính Hãng Apple','activities'),
			(1,'Iphone 12 Pro',20000000,40,'',N'Nguyên Seal,Bảo Hành Chính Hãng Apple','activities'),
			(1,'Iphone 12',18000000,15,'',N'Nguyên Seal,Bảo Hành Chính Hãng Apple','activities'),
			(1,'Iphone 12 Mini',16000000,10,'',N'Nguyên Seal,Bảo Hành Chính Hãng Apple','activities'),
			(2,'SamSung Note 20 Ultra 5G',21500000,25,'',N'Nguyên Seal,Bảo Hành Chính Hãng SamSung','activities'),
			(2,'SamSung Note 20 Ultra',18500000,35,'',N'Nguyên Seal,Bảo Hành Chính Hãng SamSung','activities'),
			(2,'SamSung Note 10',14000000,20,'',N'Nguyên Seal,Bảo Hành Chính Hãng SamSung','activities'),
			(2,'SamSung Note 10 Plus',16500000,10,'',N'Nguyên Seal,Bảo Hành Chính Hãng SamSung','activities'),
			(3,'Oppo A93',5990000,5,'',N'Nguyên Seal,Bảo Hành Chính Hãng Oppo','activities'),
			(3,'Oppo Reno Pro 5G',10915000,15,'',N'Nguyên Seal,Bảo Hành Chính Hãng Oppo','activities'),
			(3,'Oppo Find X3 Pro 5G',26990000,20,'',N'Nguyên Seal,Bảo Hành Chính Hãng Oppo','activities'),
			(3,'Oppo A12',2550000,30,'',N'Nguyên Seal,Bảo Hành Chính Hãng Oppo','activities'),
			(4,'BlackBerry Porsche ',17990000,5,'',N'Nguyên Seal,Bảo Hành Chính Hãng BlackBerry','activities'),
			(4,'BlackBerry Key2 Gold Mạ Vàng 24K',22000000,10,'',N'Nguyên Seal,Bảo Hành Chính Hãng BlackBerry','activities'),
			(4,'BlackBerry DTEK60 New',3790000,20,'',N'Nguyên Seal,Bảo Hành Chính Hãng BlackBerry','activities'),
			(4,'BlackBerry 9700(Bold)',990000,30,'',N'Nguyên Seal,Bảo Hành Chính Hãng BlackBerry','activities');