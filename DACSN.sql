Create database DuLieuYTeBD
Go
Use DuLieuYTeBD
Go
Create table TaiKhoan(
	IdTK int identity(1,1) primary key,
	TenDN char(10) null,
	MatKhau char(10) null
)
Create table DanhMuc(
	IdDM int identity(1,1) primary key,
	TenDM nvarchar(100) null
)
Create table BaiViet(
	IdBV int identity(1,1) primary key,
	TieuDe nvarchar(max) null,
	TomTat nvarchar(max) null,
	NoiDung ntext null,
	NgayViet datetime null,
	Hinh nvarchar(50) null,
	NguoiViet nvarchar(100) null,
	IdDM int references DanhMuc(IdDM) null,
	Tag nvarchar(60) null,
)

-- Bang tai khoan
SET IDENTITY_INSERT TaiKhoan ON;
	Insert TaiKhoan (IdTK,TenDN,MatKhau) values (1,'admin','123')
	Insert TaiKhoan (IdTK,TenDN,MatKhau) values (2,'phong','123')
SET IDENTITY_INSERT TaiKhoan OFF;
-- Bang danh muc
SET IDENTITY_INSERT DanhMuc ON;
	Insert DanhMuc (IdDM,TenDM) values (1, N'Chỉ đạo chống dịch')
	Insert DanhMuc (IdDM,TenDM) values (2, N'Bản tin Covid - 19')
	Insert DanhMuc (IdDM,TenDM) values (3, N'Video')
	Insert DanhMuc (IdDM,TenDM) values (4, N'Vaccine - Tiêm chủng')
	Insert DanhMuc (IdDM,TenDM) values (5, N'Tin tức')
SET IDENTITY_INSERT DanhMuc OFF;
-- Bang bai viet
SET IDENTITY_INSERT BaiViet ON;
	Insert BaiViet (IdBV,TieuDe,TomTat,NoiDung,NgayViet,Hinh,NguoiViet,IdDM,Tag) values (1,N'Ngày 14/9: Thêm 10.508 ca mắc COVID-19, trong đó TP HCM và Bình Dương đã gần 8.500 ca',N'SKĐS - Bản tin dịch COVID-19 ngày 14/9 của Bộ Y tế cho biết, có thêm 10.508 ca mắc COVID-19, trong đó riêng TP HCM và Bình Dương đã gần 8.500 ca. Trong ngày có 12.683 bệnh nhân khỏi.',N'- Tính từ 17h ngày 13/9 đến 17h ngày 14/9, trên Hệ thống Quốc gia quản lý ca bệnh COVID-19 ghi nhận 10.508 ca nhiễm mới, trong đó 12 ca nhập cảnh và 10.496 ca ghi nhận trong nước tại TP HCM (6.312), Bình Dương (2.178), Đồng Nai (777), Long An (379), Kiên Giang (157), An Giang (111), Tiền Giang (102), Tây Ninh (75), Bình Phước (54), Khánh Hòa (44), Cần Thơ (40), Bạc Liêu (34), Bình Định (34), Đồng Tháp (32), Đắk Nông (26), Hà Nội (21), Quảng Nam (14), Bà Rịa - Vũng Tàu (14), Bến Tre (13), Thừa Thiên Huế (11), Đà Nẵng (11), Đắk Lắk (10), Quảng Ngãi (9), Cà Mau (8 ), Thanh Hóa (6), Trà Vinh (5), Ninh Thuận (5), Bình Thuận (5), Vĩnh Long (3), Phú Yên (2), Nghệ An (2), Lâm Đồng (1), Hưng Yên (1) trong đó có 6.740 ca trong cộng đồng.',CAST(N'2021-09-15T11:42:00.000' AS DateTime),NULL,NULL,1,NULL)
	Insert BaiViet (IdBV,TieuDe,TomTat,NoiDung,NgayViet,Hinh,NguoiViet,IdDM,Tag) values (2,N'Hà Nội nhận thêm 418.000 liều vaccine Vero Cell',N'Hà Nội vừa nhận thêm 418.200 liều vaccine Vero Cell từ Viện Vệ sinh dịch tễ Trung ương để tiêm cho người dân 13 quận, huyện, thị xã.',N'Quyết định giao, cấp vaccine này được đưa ra căn cứ đề xuất của Trung tâm Kiểm soát bệnh tật Hà Nội. Ngay khi tiếp nhận, Sở Y tế Hà Nội đã phân bổ vaccine Vero Cell này về cho 4 quận (Long Biên, Đống Đa, Bắc Từ Liêm và Nam Từ Liêm) và 9 huyện/thị xã (Sóc Sơn, Quốc Oai, Thường Tín, Phú Xuyên, Thanh Oai, Ứng Hoà, Sơn Tây, Đan Phượng và Phúc Thọ).',CAST(N'2021-09-15T11:42:00.000' AS DateTime),NULL,NULL,4,NULL)
SET IDENTITY_INSERT BaiViet OFF;

