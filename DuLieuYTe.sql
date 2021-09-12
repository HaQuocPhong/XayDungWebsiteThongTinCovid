Create database DuLieuYTe
go
use DuLieuYTe
go
Create table ThongTin_KhaiBao
(
    ID int identity(1,1),
	HoVaTen nvarchar(50) not null,
	NgaySinh smalldatetime not null,
	DiaChi nvarchar(max) not null,
	DienThoai char(10) not null,
	TinhTrang nvarchar(max) not null
	Primary key(ID)
)
Create table Loai_BaiViet
(
	IdLoai char(5) ,
	TenLoai Nvarchar(50) not null,
	Primary key(IdLoai)
)
Create table Tag
(
     IdTag char(5),
	 TenTag Nvarchar(30) not null,
	 Primary key(IdTag)
)
Create table BaiViet
(
	IdBaiViet char(5),
	IdLoai char(5) not null,
	TieuDe Nvarchar(max) not null,
	TomTat Nvarchar(max) not null,
	NoiDung text not null,
	NgayViet smalldatetime not null,
	Anh  varchar(50) not null,
	LuotTruyCap int default(0),
	IdTag char(5) not null,
	NguoiViet Nvarchar(50),
	Primary key(IdBaiViet),
	constraint fk_loai foreign key (IdLoai) references Loai_BaiViet(IdLoai),
	constraint fk_tag foreign key (IdTag) references Tag(IdTag)
)
Create table Tai_Khoan
(
    IdTaiKhoan int identity(1,1),
	TenDN char(20) not null,
	MatKhau char(20) not null,
	Primary key (IdTaiKhoan)
)
Create table  ThongTinTaiKhoan
(
	IdTaiKhoan int ,
	HovaTen nvarchar(50) not null,
	NgaySinh smalldatetime not null,
	SoDienThoai char(10) not null,
	Gmail char(30) not null,
	DiaChi Nvarchar(max) not null,
	ChucVu nvarchar(30) not null
	Primary key(IdTaiKhoan),
	constraint fk_taikhoan foreign key (IdTaiKhoan) references Tai_Khoan(IdTaiKhoan)
)
create table DuyetBaiViet
(
	IdBaiViet char(5),
	TinhTrang bit default(0),
	Nguoiduyet int not null,
	NgayDuyet smalldatetime not null,
	Primary key(IdBaiViet),
	constraint fk_baiviet foreign key (IdBaiViet) references BaiViet(IdBaiViet),
	constraint fk_nguoiduyet foreign key (Nguoiduyet) references ThongTinTaiKhoan(IdTaiKhoan)
)

create table TinTuc
(
	IdTinTuc int IDENTITY(1,1) primary key,
	TieuDe Nvarchar(100),
	NgayCapNhat smalldatetime,
	NoiDung ntext,
	AnhBia varchar(50),
)

create table Video
(
	IdVideo int IDENTITY(1,1) primary key,
	TenVideo NVarChar(200),
	Video NVarchar(200),
	NoiDungVideo nText,
	NgayCapNhatVideo smalldatetime,
)

create table Vaccine
(
	Idvaccine int IDENTITY(1,1) primary key,
	TenChuDeVaccine nvarchar(200),
	AnhCD nvarchar(200),
	NoiDungCD nvarchar(200),
	NgayCapNhatCD smalldatetime,
)

create table ChiDao
(
    IDChiDao int identity(1,1) primary key,
    TieuDeChiDao Nvarchar(max) not null,
    NoiDungChiDao ntext not null,
    NgayViet smalldatetime not null,
    AnhChiDao  nvarchar(200) not null,
)

--ChiDao--
SET IDENTITY_INSERT ChiDao ON;
insert Chidao (IdChiDao,TieuDeChiDao,NoiDungChiDao,NgayViet,AnhChiDao) values(1, N'Bí thư Tỉnh ủy kiểm tra đột xuất công tác chống dịch tại TP.Thuận An, Dĩ An',N'Đang Cập nhật...', '2021/9/12','ChiDao1.jpg')
insert Chidao (IdChiDao,TieuDeChiDao,NoiDungChiDao,NgayViet,AnhChiDao) values(2, N'Phân tầng F0, giúp bệnh nhân Covid-19 phục hồi sức khỏe',N'Đang Cập nhật...', '2021/9/12','ChiDao2.jpg')
insert Chidao (IdChiDao,TieuDeChiDao,NoiDungChiDao,NgayViet,AnhChiDao) values(3, N'Các trường hợp nhiễm Covid-19 không triệu chứng được xuất viện vào ngày thứ 7',N'Đang Cập nhật...', '2021/9/12','ChiDao3.jpg')
SET IDENTITY_INSERT ChiDao OFF;

--vaccine--
SET IDENTITY_INSERT Vaccine ON;
insert Vaccine (Idvaccine, TenChuDeVaccine,AnhCD, NoiDungCD, NgayCapNhatCD) values(1,N'Hà Nội đang tiến dần tới đích bao phủ vaccine COVID-19 cho người trên 18 tuổi',N'HaNoichichvacciene covis-19tren18.png',N'Đang Cập Nhật...','2021/9/12')
insert Vaccine (Idvaccine, TenChuDeVaccine,AnhCD, NoiDungCD, NgayCapNhatCD) values(2,N'Bộ trưởng Bộ Y tế tiếp nhận 200.000 liều vaccine COVID-19',N'tiepnhan200000lieuvaccine.png',N'Đang Cập Nhật...','2021/9/12')
insert Vaccine (Idvaccine, TenChuDeVaccine,AnhCD, NoiDungCD, NgayCapNhatCD) values(3,N'Bộ Y tế: Hơn 103 triệu liều vaccine COVID-19 dự kiến về Việt Nam từ nay đến cuối năm',N'hon103trieulieuvacxin.png',N'Đang Cập Nhật...','2021/9/12')
insert Vaccine (Idvaccine, TenChuDeVaccine,AnhCD, NoiDungCD, NgayCapNhatCD) values(4,N'Ngày 11/9, Hà Nội lập kỷ lục tiêm hơn 411.000 liều vaccine COVID-19',N'HaNoilapkyluctiemhon411kvaccine.png',N'Đang Cập Nhật...','2021/9/12')
SET IDENTITY_INSERT Vaccine OFF;


--Video--
SET IDENTITY_INSERT Video ON;
insert Video (IdVideo,TenVideo,Video,NoiDungVideo,NgayCapNhatVideo) values(1,N'Nên đi chợ như thế nào để chống dịch',N'Đi Chợ Như Nào Để Phòng Chống Covid-19.mp4',N'Đang Cập nhật...','2021/9/12')
insert Video (IdVideo,TenVideo,Video,NoiDungVideo,NgayCapNhatVideo) values(2,N'Hướng dẫn phòng chống Covid-19 tại chung cư dành cho người dân',N'HD PHÒNG CHỐNG COVID- 19 TẠI CHUNG CƯ DÀNH CHO NGƯỜI DÂN.mp4',N'Đang Cập nhật...','2021/9/12')
insert Video (IdVideo,TenVideo,Video,NoiDungVideo,NgayCapNhatVideo) values(3,N'Nổ lực cứu bệnh nhân nặng và giảm tỷ lệ tử vong tại 12 trung tâm hồi sức Covid-19 bệnh viện tuyến TW',N'NỖ LỰC CỨU BỆNH NHÂN NẶNG VÀ GIẢM TỶ LỆ TỬ VONG TẠI 12 TRUNG TÂM HỒI SỨC COVID-19 BỆNH VIỆN TUYẾN TW.mp4',N'Đang Cập nhật...','2021/9/12')
insert Video (IdVideo,TenVideo,Video,NoiDungVideo,NgayCapNhatVideo) values(4,N'Thứ Trưởng Bộ Y Tế - 4 nhiệm vụ trọng tâm đảm bảo an toàn tại chợ Bình Điền khi mở cửa trở lại',N'Thứ trưởng Bộ Y tế - 4 nhiệm vụ trọng tâm đảm bảo an toàn tại chợ Bình Điền khi mở cửa trở lại.mp4',N'Đang Cập nhật...','2021/9/12')
SET IDENTITY_INSERT Video OFF;


--TinTuc--
SET IDENTITY_INSERT TinTuc ON;
insert TinTuc (IdTinTuc,TieuDe,NgayCapNhat,NoiDung,AnhBia) values(1, N'5 giải pháp giúp phục hồi kinh tế sau Covic', '2021/9/12',N'Đang Cập nhật...','5 giai phap phuc hoi kinh te BD.png')
insert TinTuc (IdTinTuc,TieuDe,NgayCapNhat,NoiDung,AnhBia) values(2, N'Bộ Y tế: Số ca nhiễm COVID-19 tại cộng đồng và tử vong giảm so với tuần trước', '2021/9/12',N'Đang Cập nhật...','So ca nhiem giam.png')
insert TinTuc (IdTinTuc,TieuDe,NgayCapNhat,NoiDung,AnhBia) values(3, N'Chuyện những F0 khỏi bệnh "đòi" ở lại "chung một chiến hào" với thầy thuốc', '2021/9/12',N'Đang Cập nhật...','F0 khoi benh.png')
insert TinTuc (IdTinTuc,TieuDe,NgayCapNhat,NoiDung,AnhBia) values(4, N'Ngày 11/9: Có 11.932 ca mắc COVID-19, ít hơn hôm qua gần 1.400 ca ', '2021/9/12',N'Đang Cập nhật...','So ca mac covic giam .png')
insert TinTuc (IdTinTuc,TieuDe,NgayCapNhat,NoiDung,AnhBia) values(5, N'Trao 1.000 phần quà tiếp sức cho người dân TP.Thủ Dầu Một ', '2021/9/12',N'Đang Cập nhật...','trao 1k phan qua cho tptdm.png')
insert TinTuc (IdTinTuc,TieuDe,NgayCapNhat,NoiDung,AnhBia) values(6, N'Ngày 11/9/2021, Bình Dương thêm 4.319 bệnh nhân xuất viện', '2021/9/12',N'Đang Cập nhật...','TinhHinhCovicBD.png')
insert TinTuc (IdTinTuc,TieuDe,NgayCapNhat,NoiDung,AnhBia) values(7, N'Mũi 2 vaccine COVID-19 tiêm chậm hơn khoảng thời gian khuyến cáo có ảnh hưởng hiệu lực bảo vệ?', '2021/9/12',N'Đang Cập nhật...','TiemCovicMui2Cham.png')
insert TinTuc (IdTinTuc,TieuDe,NgayCapNhat,NoiDung,AnhBia) values(8, N' Sáng 12/9: Có hơn 6.200 bệnh nhân COVID-19 nặng đang điều trị', '2021/9/12',N'Đang Cập nhật...','Ca Benh Moi.png')
SET IDENTITY_INSERT TinTuc OFF;


--Loai-BaiViet--
INSERT [dbo].[Loai_BaiViet] ([IdLoai], [TenLoai]) VALUES ('HK1',N'DIỄN BIẾN DỊCH')
INSERT [dbo].[Loai_BaiViet] ([IdLoai], [TenLoai]) VALUES ('HK2',N'CHỈ ĐẠO CHỐNG DỊCH')
INSERT [dbo].[Loai_BaiViet] ([IdLoai], [TenLoai]) VALUES ('HK3',N'BẢN TIN COVID-19')
INSERT [dbo].[Loai_BaiViet] ([IdLoai], [TenLoai]) VALUES ('HK4',N'VACCINE-TIÊM CHỦNG')

--Tag--
INSERT [dbo].[Tag] ([IdTag], [TenTag]) values('1','Tag1')
INSERT [dbo].[Tag] ([IdTag], [TenTag]) values('2','Tag2')
INSERT [dbo].[Tag] ([IdTag], [TenTag]) values('3','Tag3')
INSERT [dbo].[Tag] ([IdTag], [TenTag]) values('4','Tag4')
INSERT [dbo].[Tag] ([IdTag], [TenTag]) values('5','Tag5')
INSERT [dbo].[Tag] ([IdTag], [TenTag]) values('6','Tag6')


INSERT [dbo].[BaiViet] ([IdBaiViet], [IdLoai],[TieuDe],[TomTat],[NoiDung],[NgayViet],[Anh],[IdTag],[NguoiViet]) 
VALUES ('B1',
		'HK3',

		'Bản tin COVID-19 tối 11-9: Cả nước 11.932 ca nhiễm, nhưng tình hình khả quan'
		,
		'TTO - Chiều tối nay 11-9, Bộ Y tế cho biết ghi nhận 11.932 ca mắc COVID-19 mới.
		Số ca mắc từ đầu vụ dịch vượt 600.000 ca, nhưng Bộ Y tế đánh giá so với tuần trước, 
		số ca cộng đồng và số tử vong có giảm, đặc biệt ở Đà Nẵng, TP.HCM, Bình Dương.'
		,
		'Theo đó, từ 17h ngày 10-9 đến 17h ngày 11-9, trên Hệ thống quốc gia quản lý ca bệnh COVID-19 ghi nhận 11.932 ca nhiễm mới, trong đó 5 ca nhập cảnh và 11.927 ca ghi nhận trong nước tại TP.HCM (5.629), Bình Dương (3.971), Đồng Nai (960), Long An (337);
		 Kiên Giang (165), Tiền Giang (147), Tây Ninh (137), An Giang (107), Khánh Hòa (46), Cần Thơ (46), Quảng Bình (38), Hà Nội (35), Đồng Tháp (34), Bà Rịa - Vũng Tàu (32), Quảng Ngãi (32), Bình Phước (31), Bình Thuận (31), Bình Định (19);
		 Đà Nẵng (19), Đắk Lắk (18), Phú Yên (17), Sơn La (16), Quảng Nam (14), Sóc Trăng (11), Nghệ An (6), Đắk Nông (5), Ninh Thuận (5), Bạc Liêu (4), Thanh Hóa (3), Hưng Yên (3), Gia Lai (2), Trà Vinh (2), Bắc Ninh (2), Thừa Thiên Huế (1), Hà Tĩnh (1), Bến Tre (1), trong đó có 5.169 ca trong cộng đồng.
		 Trong 24 giờ qua, số ca nhiễm ghi nhận trong nước giảm 1.379 ca. Tại TP.HCM giảm 1.910 ca, Bình Dương tăng 408 ca, Đồng Nai tăng 137 ca, Long An tăng 16 ca, Kiên Giang tăng 79 ca.
		 Trung bình số ca nhiễm mới trong nước ghi nhận trong 7 ngày qua: 12.867 ca/ngày. Kể từ đầu dịch đến nay Việt Nam có 601.349 ca nhiễm, đứng thứ 49/222 quốc gia và vùng lãnh thổ. Đợt dịch thứ 4 (từ ngày 27-4 đến nay), số ca nhiễm mới ghi nhận trong nước là 596.980 ca, trong đó có 360.688 bệnh nhân đã được công bố khỏi bệnh.
		 Có 12/62 tỉnh, thành phố đã qua 14 ngày không ghi nhận trường hợp nhiễm mới trong nước: Bắc Kạn, Tuyên Quang, Lai Châu, Hòa Bình, Yên Bái, Hà Giang, Thái Nguyên, Điện Biên, Vĩnh Phúc, Hải Phòng, Hải Dương, Hà Nam.
		 Có 5 tỉnh, thành phố không có ca lây nhiễm thứ phát trên địa bàn trong 14 ngày qua: Thái Bình, Phú Thọ, Kon Tum, Quảng Ninh, Lào Cai.
		 5 tỉnh, thành phố ghi nhận số mắc cao là TP.HCM (291.871), Bình Dương (153.830), Đồng Nai (33.842), Long An (27.874), Tiền Giang (11.577).
		 Bệnh nhân được công bố khỏi bệnh trong ngày: 12.541, tổng số ca được điều trị khỏi: 363.462.
		 Theo thống kê sơ bộ, số bệnh nhân nặng đang điều trị là 6.232 ca, trong đó 3.948 ca thở oxy qua mặt nạ; 1.167 ca thở oxy dòng cao HFNC; 147 ca thở máy không xâm lấn; 941 ca thở máy xâm lấn và 29 ca phải chạy ECMO.
		 Trong ngày, tổng hợp số liệu tử vong do các sở y tế công bố trên cdc.kcb.vn ghi nhận 217 ca tử vong tại TP.HCM (188), Bình Dương (10), Tiền Giang (2), Đồng Nai (4), Kiên Giang (3), Bình Thuận (2), Đà Nẵng (2), Gia Lai (1), Cần Thơ (1), Ninh Thuận (1), Khánh Hòa (1), Nghệ An (1), Vĩnh Long (1), ngoài ra bổ sung 56 ca tử vong tại Đồng Nai từ thời gian trước.
		 Trung bình số tử vong ghi nhận trong 7 ngày qua là 284 ca/ngày, trong khi tuần trước trung bình là 310 ca/ngày.
         
		 Tổng số ca tử vong do COVID-19 tại Việt Nam tính đến nay là 15.018 ca, chiếm tỉ lệ 2,5% so với tổng số ca mắc và cao hơn 0,4% so với tỉ lệ tử vong do COVID-19 trên thế giới (2,1%).

         Trong ngày 10-9, có 1.175.698 liều vắc xin phòng COVID-19 được tiêm, là số liều tiêm cao nhất trong ngày từ trước đến nay, trong đó Hà Nội tiêm được trên 360.000 liều. Như vậy, tổng số liều vắc xin đã được tiêm là 27.108.588 liều, trong đó tiêm 1 mũi là 22.367.824 liều, tiêm mũi 2 là 4.740.764 liều.

         Nhằm giúp các cán bộ y tế đang làm việc tại các trạm y tế lưu động hiểu rõ và thực hiện tốt các nhiệm vụ của mình, Bộ Y tế tiếp tục ban hành cuốn Sổ tay hướng dẫn triển khai nhiệm vụ của các trạm y tế lưu động. 

         Tài liệu này sẽ tập trung vào hướng dẫn chuyên môn từng nhiệm vụ cụ thể của trạm y tế lưu động; chỉ đạo các địa phương thực hiện đề án Tăng cường khả năng cung ứng, sử dụng oxy y tế cho các cơ sở điều trị bệnh nhân COVID-19 nhằm đảm bảo các cơ sở thu dung điều trị bệnh nhân COVID-19 có đầy đủ oxy y tế phục vụ điều trị bệnh nhân và khẩn trương triển khai thực hiện đề án; xây dựng hướng dẫn phòng, chống dịch COVID-19 kết hợp xét nghiệm và tiêm chủng tại trạm dừng nghỉ cho lái xe đường dài.
		 Hà Nội đang xét nghiệm theo kế hoạch 206/KH-UBND thành phố ngày 8-9, tính đến 12h trưa 11-9, toàn thành phố đã lấy được 876.427 mẫu, trong đó có 674.700 mẫu xét nghiệm PCR mẫu gộp và 201.727 mẫu test nhanh kháng nguyên.

		 Kết quả, trong số 674.700 mẫu xét nghiệm PCR mẫu gộp, đã có 52.028 mẫu âm tính, 2 mẫu dương tính, số còn lại chờ kết quả. Trong số 201.727 mẫu test nhanh kháng nguyên, có 201.714 mẫu âm tính, 13 mẫu dương tính. 13 mẫu dương tính qua test nhanh được lấy lại mẫu để xét nghiệm PCR, kết quả có 7 mẫu dương tính.

         Tỉnh Bình Dương đang huy động lực lượng từ "vùng xanh" hỗ trợ cho "vùng đỏ" với quyết tâm dồn toàn lực để hoàn thành việc xét nghiệm bóc tách hết F0 còn phát sinh trong cộng đồng tại những khu vực còn "vùng đỏ", qua đó nhanh chóng khoanh vùng, dập dịch để đưa Bình Dương trở về trạng thái bình thường mới.',
		'09/11/2021',
		'B1','1',null)

INSERT [dbo].[BaiViet] ([IdBaiViet], [IdLoai],[TieuDe],[TomTat],[NoiDung],[NgayViet],[Anh],[IdTag],[NguoiViet]) 
VALUES ('B2',
		'HK1',
		'Bình Dương có hơn 103.000 bệnh nhân Covid-19 xuất viện'
		,
		'Sở Y tế thông báo trong 24 giờ qua, ngày 11-9 trong hệ thống điều trị tỉnh Bình Dương ghi nhận 4.497 bệnh nhân Covid-19 khỏi bệnh, xuất viện;
		 tổng số bệnh nhân đang điều trị tại 32 cơ sở thu dung, điều trị trong tỉnh là 51.447 bệnh nhân, trong đó có 4.377 F0 đang cách ly tại nhà.'
		 ,
		'Số bệnh nhân xuất viện trong ngày cao hơn số bệnh nhân nhập viện và cao hơn số ca nhiễm trong ngày. 
		Tổng số bệnh nhân khỏi bệnh, xuất viện trong đợt dịch lần thứ 4 là 103.144 người, gồm: Các cơ sở thu dung, điều trị ban đầu (tầng 1A) có 76.705 người; tầng 1 điều trị bệnh nhân không triệu chứng 21.602 người; tầng 2 là 3.338 người và tầng 3 là 1.499 người. 

		Để bảo đảm tốt công tác thu dung, điều trị bệnh nhân Covid-19 trên địa bàn tỉnh, vừa qua Sở Y tế, các chuyên gia Bộ Y tế, bác sĩ chuyên môn thống nhất bệnh nhân Covid-19 không triệu chứng,
		không yếu tố nguy cơ, không bệnh nền 7 ngày test nhanh kháng nguyên âm tính cho về cách ly tại nhà theo quy định.
		Theo đó, người bệnh sẽ được theo dõi, giám sát như F0 cách ly, điều trị tại nhà.    

        Trong diễn biến về số ca mắc mới, ngày 11-9 toàn tỉnh ghi nhận 3.971 ca nhiễm Covid-19, tăng 408 ca so với ngày 10-9.
		Trong số 3.971 ca mắc phát hiện trong ngày chủ yếu phát hiện khu phong tỏa, với 3.726 ca, 125 ca phát hiện tại cơ sở y tế, phát hiện qua sàng lọc cộng đồng  54 ca.

        TX.Bến Cát là địa phương có số ca mắc nhiều nhất với 1.753 ca, tiếp đó TP.Thuận An 1.001 ca, TX.Tân Uyên 662 ca, TP.Dĩ An 362 ca, TP.Thủ Dầu Một 104 ca.
		Các địa phương có số ca mắc dưới 30 ca: Huyện Phú Giáo 27 ca, huyện Bắc Tân Uyên 22 ca, huyện Dầu Tiếng 23 ca, huyện Bàu Bàng 2 ca và ghi nhận ngoài tỉnh 15 ca.

        Tính đến ngày 11-9, trong đợt dịch thứ 4 toàn tỉnh ghi nhận 153.830 ca nhiễm Covid-19. '
		,
		'09/11/2021',
		'B2','2',null)

INSERT [dbo].[BaiViet] ([IdBaiViet], [IdLoai],[TieuDe],[TomTat],[NoiDung],[NgayViet],[Anh],[IdTag],[NguoiViet]) 
VALUES ('B3',
		'HK2',
		'Bí thư Tỉnh ủy kiểm tra đột xuất công tác chống dịch tại TP.Thuận An, Dĩ An'
		,
		'Sáng 10-9, ông Nguyễn Văn Lợi, Ủy viên Trung ương Đảng, Bí thư Tỉnh ủy, Trưởng đoàn Đại biểu Quốc hội tỉnh, Trưởng ban Chỉ đạo phòng,
		chống dịch Covid-19 tỉnh đã có chuyến thăm và kiểm tra đột xuất một số địa điểm trên địa bàn TP.Thuận An và Dĩ An. '
		 ,
		'Điểm đến đầu tiên là khu nhà trọ trên đường Bình Nhâm 17, phường Bình Nhâm (TP.Thuận An). Tại đây, ông Nguyễn Văn Lợi và đoàn công tác đã lắng nghe những phản hồi của người dân, công nhân ở trọ về việc chi hỗ trợ các gói an sinh xã hội mà địa phương triển khai trong thời gian qua. Bí thư Tỉnh ủy cũng ân cần hỏi thăm, động viên và tặng những phần quà thiết thực, chia sẻ những khó khăn với người dân đang thuê trọ nơi đây.
		
		 Tiếp đó, đoàn đã ghé thăm điểm xét nghiệm sàng lọc, bóc tách F0 trong cộng đồng tại khu phố Bình Đáng, phường Bình Hòa (TP.Thuận An). Bí thư Tỉnh ủy đã quan sát và ghi nhận công tác tổ chức của địa phương. Qua đó, có những chỉ đạo trực tiếp và cụ thể hóa chiến lược phòng, chống dịch bệnh đối với địa phương “vùng đỏ đậm đặc” Bình Hòa.
		 
		 Bí thư Tỉnh ủy và đoàn công tác cũng đã ghé thăm, kiểm tra điểm tổ chức xét nghiệm sàng lọc kết hợp tiêm vaccine cho người dân ở khu phố Đông Chiêu, phường Tân Đông Hiệp (TP.Dĩ An). Tại đây, Bí thư Tỉnh ủy đánh giá cao sự quyết tâm của địa phương trong việc triển khai thần tốc và đồng bộ chiến lược “hai trong một”; đồng thời đề nghị địa phương tiếp tục đẩy nhanh tiến độ xét nghiệm và tiêm vaccine ngừa Covid-19 cho người dân trong những ngày tới.
		 
		 Bí thư Tỉnh ủy chỉ đạo TP.Dĩ An chủ động nghiên cứu, hỗ trợ phường Tân Đông Hiệp và các địa phương có tình hình dịch bệnh phức tạp sớm tăng cường thành lập, đưa vào hoạt động thêm các trạm y tế lưu động. Đây là việc làm mang tính cấp thiết để chuẩn bị cho TP.Dĩ An nói riêng và toàn tỉnh Bình Dương nói chung lập lại trạng thái bình thường mới sắp tới. Sự xuất hiện thường trực của các trạm y tế lưu động sẽ góp phần giảm tải cho các trạm y tế cố định; đồng thời giúp địa phương kịp thời phản ứng và hỗ trợ người dân chăm sóc sức khỏe trong trường hợp cần thiết.'
		,
		'09/10/2021',
		'B3','3',null)

INSERT [dbo].[BaiViet] ([IdBaiViet], [IdLoai],[TieuDe],[TomTat],[NoiDung],[NgayViet],[Anh],[IdTag],[NguoiViet]) 
VALUES ('B4',
		'HK4',
		'Bình Dương cơ bản hoàn thành tiêm 750.000 liều vắc xin Sinopharm được phân bổ'
		,
		'Theo số liệu thống kê nhanh từ các địa phương, tính đến ngày 9-9 toàn tỉnh đã cơ bản hoàn thành tiêm 750.000 liều vắc xin Vero Cell của Sinopharm. '
		 ,
		'Cụ thể, các địa phương đã tiêm vắc xin Vero Cell đạt số lượng trong ngày: TP.Thủ Dầu Một đã tiêm xong 87.000 liều được phân bổ (trong đó có 207.867 người đã được tiêm từ 1-2 mũi); TP.Thuận An lũy kế đã tiêm được 111.634 liều, trong ngày đã tiêm được 14.238 liều với tất cả các loại vắc xin; TP.Dĩ An 133.350 liều, TX.Tân Uyên 145.000 liều, TX.Bến Cát 130.327 liều được phân bổ, trong ngày tiêm vắc xin AstraZeneca 20.158 liều, huyện Bàu Bàng tiêm được 33.957 liều, huyện Dầu Tiếng lũy kế tiêm được 25.038 liều, huyện Phú Giáo 27.056 liều, huyện Bắc Tân Uyên 16.000 liều.

         Trước đó, Bộ Y tế đã phân bổ cho Bình Dương 750.000 liều vắc xin Vero Cell của Sinopharm trong tổng số 1 triệu liều theo quyết định. Bắt đầu từ ngày 2-9 Bình Dương triển khai tiêm vắc xin này ở 3 địa phương là TP.Thủ Dầu Một, TP.Dĩ An, TX.Tân Uyên và sau đó là các huyện, thị còn lại. Hiện nay một số địa phương đang triển khai tiêm các loại vắc xin khác. Những ngày tới Sở Y tế sẽ phân bổ 126.250 liều vắc xin Pfizer để các địa phương tiêm đợt mới.

         Tính đến 16 giờ ngày 9-9 toàn tỉnh đã tiêm được 1.611.560 liều vắc xin phòng Covid-19 các loại, trong đó có 1.564.034 người tiêm mũi 1 và 47.526 người tiêm mũi 2.    '
		,
		'09/10/2021',
		'B4','4',null)

INSERT [dbo].[BaiViet] ([IdBaiViet], [IdLoai],[TieuDe],[TomTat],[NoiDung],[NgayViet],[Anh],[IdTag],[NguoiViet]) 
VALUES ('B5',
		'HK4',
		'Bình Dương sẽ tiêm vắc xin Pfizer cho người đã tiêm mũi 1 Moderna'
		,
		'Ngày 8-9, Hội đồng tư vấn chuyên môn về sử dụng vắc xin của Bộ Y tế đã họp và đưa ra khuyến cáo: Trong trường hợp bất khả kháng khi nguồn cung vắc xin Covid-19 mũi 1 đã tiêm không đủ để tiêm mũi 2 thì có thể sử dụng vắc xin khác để tiêm mũi 2 như sau: Nếu tiêm mũi 1 vắc xin AstraZeneca thì có thể tiêm mũi 2 bằng vắc xin Pfizer hoặc Moderna. Nếu tiêm vắc xin mũi 1 là Moderna thì có thể tiêm mũi 2 bằng Pfizer và ngược lại. '
		 ,
		'Liên quan tới vắc xin Moderna tại Bình Dương, Tiến sĩ Nguyễn Hồng Chương, Giám đốc Sở Y tế tỉnh cho biết: Bộ Y tế phân bổ cho Bình Dương 145.000 liều vắc xin Moderna. Với mục tiêu tiêm nhanh và đảm bảo độ bao phủ vắc xin cho 100% người dân từ 18 tuổi trở lên được tiêm ít nhất 1 liều vắc xin, Bình Dương đã tiêm hết số vắc xin được phân bổ. Do đó, với những người đã tiêm mũi 1 vắc xin Moderna thì sẽ được tiêm mũi 2 bằng Pfizer. 

         Theo Tiến sĩ Nguyễn Hồng Chương, trước tình hình thiếu vắc xin ảnh hưởng tới tiến độ tiêm chủng cho người dân, không riêng ở Việt Nam, nhiều quốc gia trên thế giới đã đối mặt với tình trạng thiếu vắc xin. Để kịp thời chích ngừa bảo vệ người dân trước đại dịch, các nước đã thực hiện việc tiêm trộn mũi thứ nhất vắc xin Moderna, mũi thứ hai Pfizer. Hiện nhiều quốc gia đã nghiên cứu, sử dụng và kết hợp 2 loại vắc xin cùng công nghệ hoặc khác công nghệ như tiêm vắc xin véc tơ vi rút với vắc xin mRNA hoặc tiêm 2 loại vắc xin mRNA của các nhà sản xuất khác nhau nhưng vẫn đảm bảo độ an toàn.

         Theo số liệu thống kê, tính đến 16 giờ ngày 8-9, toàn tỉnh đã tiêm được 1.514.471 liều vắc xin phòng Covid-19, trong đó có 1.467.039 người tiêm mũi 1 và  còn lại là mũi 2. Ngành y tế dự kiến đến trước ngày 15-9, Bình Dương sẽ tiêm hết 2.113.000 liều vắc xin được Bộ Y tế phân bổ.   '
		,
		'09/08/2021',
		'B4','5',null)

INSERT [dbo].[BaiViet] ([IdBaiViet], [IdLoai],[TieuDe],[TomTat],[NoiDung],[NgayViet],[Anh],[IdTag],[NguoiViet]) 
VALUES ('B6',
		'HK2',
		'Phân tầng F0, giúp bệnh nhân Covid-19 phục hồi sức khỏe'
		,
		'Tính trong đợt dịch thứ 4 đến nay, Bình Dương đã điều trị khỏi cho hơn 88.500 bệnh nhân Covid-19. Thực hiện sự chỉ đạo của Thường trực Tỉnh ủy về “Tập trung làm tốt công tác thu dung điều trị giúp dân trong đại dịch”, các đơn vị y tế trên địa bàn tỉnh đang tích cực phối hợp triển khai mô hình điều trị “tháp 3 tầng” để mỗi ngày có thêm nhiều bệnh nhân xuất viện. '
		 ,
		'
		 <h3>Phân tầng điều trị<h3>

         Hiện Bình Dương có hơn 85% ca F0 không triệu chứng hoặc triệu chứng nhẹ. Để bảo đảm công tác chăm sóc, điều trị F0 hiệu quả, tỉnh tiếp tục thực hiện mô hình điều trị tháp 3 tầng. Tiến sĩ Nguyễn Hồng Chương, Giám đốc Sở Y tế cho biết, hiện tầng 1 tiếp nhận các trường hợp F0 không có triệu chứng hoặc triệu chứng nhẹ không kèm bệnh lý nền với tổng số giường khoảng 6.000 giường và có thể tiếp tục mở rộng lên 8.000 giường với các khu tiếp nhận như: Ký túc xá Đại học quốc gia TP.Hồ Chí Minh, các bệnh viện dã chiến Bình Dương số 1, 2, 3. Tầng 2 tiếp nhận điều trị bệnh nhân Covid-19 theo mức độ nhẹ, vừa với 3.500 giường và có thể tiếp tục mở rộng thêm 1.500 giường. Tầng này do Trung tâm Y tế các huyện, thị, thành phố và các bệnh viện dã chiến nâng cấp điều trị luôn sẵn sàng cơ số giường bệnh. Trong khi đó tầng 3 tiếp nhận, điều trị bệnh nhân Covid-19 theo mức độ nặng và nguy kịch với khoảng 1.000 giường và tiếp tục mở rộng lên 1.500 giường.

         Tiến sĩ Nguyễn Hồng Chương cho hay, hiện nay việc điều trị cho bệnh nhân Covid-19 được thực hiện theo hệ thống phân tầng của Bộ Y tế nhằm đánh giá nguy cơ, tối ưu hóa nguồn lực cho công tác điều trị. Ở mỗi tầng điều trị sẽ được bố trí nguồn lực phù hợp để nâng cao hiệu quả điều trị. Tùy vào tình hình dịch bệnh thực tế ở các huyện, thị, thành phố, việc phân tầng cũng được ngành tính toán nhằm bảo đảm việc phân loại đúng theo phác đồ điều trị phù hợp. “Thời gian qua, công tác thu dung, điều trị bệnh nhân Covid-19, nhất là đối với những bệnh nhân nặng, tỉnh gặp không ít khó khăn. Trong điều kiện thiếu trang thiết bị y tế hiện đại, thiếu đội ngũ bác sĩ có tay nghề, kinh nghiệm cao, tỉnh đã huy động mọi nguồn lực nhằm thiết lập các cơ sở điều trị bảo đảm phục vụ người bệnh”, tiến sĩ Nguyễn Hồng Chương cho biết thêm.

         Theo ghi nhận của phóng viên, hiện các bác sĩ, nhân viên y tế cả 3 tầng đang tích cực hướng dẫn, hỗ trợ người bệnh tuân thủ các nguyên tắc điều trị chung như: Nghỉ ngơi tại giường, vệ sinh mũi họng, giữ ấm, uống đủ nước, bảo đảm dinh dưỡng, nâng cao thể trạng, bổ sung vitamin…

         <h3>Giúp bệnh nhân Covid-19 hồi phục sức khỏe<h3>

         Bác sĩ Nguyễn Văn Trương, Giám đốc Bệnh viện Quốc tế Becamex cho biết, hiện bệnh viện đang chăm sóc, điều trị cho 818 ca F0 tầng 1 và 289 F0 tầng 2. Trong đó, F0 trên 7 ngày của tầng 1 là 140 bệnh nhân và tầng 2 là 60 bệnh nhân. Các bệnh nhân được nhân viên y tế, tình nguyện viên theo dõi sát sao tình hình sức khỏe. Ở tầng 1 các bệnh nhân được khuyến khích tự chăm sóc, theo dõi sức khỏe (đo thân nhiệt, huyết áp). Mỗi ngày 2 lần các bệnh nhân phải ra sân luyện tập thể dục, thể thao tăng sức đề kháng cho cơ thể. Đặc biệt, bệnh viện được trang bị đầy đủ trang thiết bị y tế, ứng dụng hệ thống phần mềm quản lý như một bệnh viện thông thường, được trang bị hệ thống trình ký văn phòng, website bệnh viện, hệ thống camera quan sát, wifi… nhằm tạo điều kiện cho việc xây dựng quy trình vận hành an toàn, chuyên nghiệp, tránh lây nhiễm chéo. Đến thời điểm này bệnh viện đã điều trị cho hơn 5.400 bệnh nhân khỏi bệnh, xuất viện.

         Khu điều trị bệnh nhân Covid-19 phường Phú Chánh, TX.Tân Uyên được bố trí 482 giường điều trị bệnh nhân nặng tại 2 tòa nhà. 3 tầng lầu của khu điều trị bệnh nhân được phân loại bệnh nhân nhẹ, trung bình, bệnh nhân có chỉ định xuất viện. Số bệnh nhân F0 đang điều trị là 297 người, tích lũy khu điều trị đã thu dung điều trị cho 2.728 bệnh nhân.

         Tiến sĩ Văn Quang Tân, Giám đốc Bệnh viện Đa khoa tỉnh cho biết, là tuyến cuối điều trị Covid-19 nên tại đây có rất nhiều bệnh nhân phải thở oxy, máy thở. Do đó, bệnh viện tập trung rất mạnh vào tuyến điều trị để chăm lo cho người bệnh vì bệnh này diễn tiến rất nhanh. Tất cả các y bác sĩ, tình nguyện làm việc quên cả ngày đêm để chăm sóc bệnh nhân từ ăn, uống, vệ sinh, theo dõi sát tình hình sức khỏe để bệnh nhân không chuyển biến nặng. Xác định oxy là yếu tố sống còn của bệnh nhân, đơn vị cũng được hỗ trợ mua nhanh, mua chỉ định để kịp thời cứu người bệnh. Cùng với sự hỗ trợ tạo điều kiện của lãnh đạo tỉnh, các nhà hảo tâm, sự dấn thân của đội ngũ y, bác sĩ, tình nguyện viên, hiện nhiều bệnh nhân đã vượt qua cơn nguy kịch; toàn bệnh viện còn 43 ca phải thở oxy, thở máy. Tích lũy đến nay, bệnh viện có hơn 1.300 bệnh nhân khỏi bệnh, xuất viện.'
        ,
		'09/11/2021',
		'B6','6',null)


