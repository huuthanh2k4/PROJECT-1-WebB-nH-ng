select * from thuonghieu;
CREATE TABLE thuongHieu (
    maThuongHieu NVARCHAR2(10) PRIMARY KEY,
    tenThuongHieu NVARCHAR2(100) NOT NULL
);

INSERT INTO thuonghieu(maThuongHieu,tenthuonghieu) VALUES (N'TH001',N'iPhone');
INSERT INTO thuonghieu(maThuongHieu,tenthuonghieu) VALUES (N'TH002',N'SamSung');
INSERT INTO thuonghieu(maThuongHieu,tenthuonghieu) VALUES (N'TH003',N'Xiaomi');
INSERT INTO thuonghieu(maThuongHieu,tenthuonghieu) VALUES (N'TH004',N'vivo');
INSERT INTO thuonghieu(maThuongHieu,tenthuonghieu) VALUES (N'TH005',N'realme');
INSERT INTO thuonghieu(maThuongHieu,tenthuonghieu) VALUES (N'TH006',N'HONOR');
INSERT INTO thuonghieu(maThuongHieu,tenthuonghieu) VALUES (N'TH007',N'TCL');
INSERT INTO thuonghieu(maThuongHieu,tenthuonghieu) VALUES (N'TH008',N'Nokia');
INSERT INTO thuonghieu(maThuongHieu,tenthuonghieu) VALUES (N'TH009',N'Tecno');
INSERT INTO thuonghieu(maThuongHieu,tenthuonghieu) VALUES (N'TH010',N'Masstel');
INSERT INTO thuonghieu(maThuongHieu,tenthuonghieu) VALUES (N'TH011',N'Benco');

--điện thoại thuộc phân khúc nào
SELECT * FROM danhmucs;
CREATE TABLE DanhMuc (
    maDanhMuc NVARCHAR2(10) PRIMARY KEY,
    tenDanhMuc NVARCHAR2(100) NOT NULL
);

INSERT INTO DanhMuc (maDanhMuc, tenDanhMuc) VALUES ('DM01', N'Điện thoại thông minh');
INSERT INTO DanhMuc (maDanhMuc, tenDanhMuc) VALUES ('DM02', N'Điện thoại phổ thông');

SELECT * FROM sac;
CREATE TABLE Sac (
    maSac NVARCHAR2(10) PRIMARY KEY,
    tenMauSac NVARCHAR2(100) NOT NULL
);

INSERT INTO Sac (maSac, tenMauSac) VALUES ('S01', N'Sạc thường');
INSERT INTO Sac (maSac, tenMauSac) VALUES ('S02', N'Sạc nhanh 20W');
INSERT INTO Sac (maSac, tenMauSac) VALUES ('S03', N'Sạc nhanh 45W');
INSERT INTO Sac (maSac, tenMauSac) VALUES ('S04', N'Sạc nhanh 60W');
INSERT INTO Sac (maSac, tenMauSac) VALUES ('S05', N'Sạc không dây');


select*from hedieuhanh;
CREATE TABLE HeDieuHanh (
    maHeDieuHanh NVARCHAR2(10) PRIMARY KEY,
    tenHeDieuHanh NVARCHAR2(100) NOT NULL
);

INSERT INTO HeDieuHanh (maHeDieuHanh, tenHeDieuHanh) VALUES ('HDH01', N'Android');
INSERT INTO HeDieuHanh (maHeDieuHanh, tenHeDieuHanh) VALUES ('HDH02', N'IOS');


SELECT * FROM loai_ram;
CREATE TABLE LOAI_RAM (
    maLoaiRAM NVARCHAR2(10) PRIMARY KEY,
    tenLoaiRAM NVARCHAR2(100) NOT NULL
);

INSERT INTO LOAI_RAM (maLoaiRAM, tenLoaiRAM) VALUES ('LR01', '32 GB');
INSERT INTO LOAI_RAM (maLoaiRAM, tenLoaiRAM) VALUES ('LR02', '64 GB');
INSERT INTO LOAI_RAM (maLoaiRAM, tenLoaiRAM) VALUES ('LR03', '128 GB');
INSERT INTO LOAI_RAM (maLoaiRAM, tenLoaiRAM) VALUES ('LR04', '256 GB');
INSERT INTO LOAI_RAM (maLoaiRAM, tenLoaiRAM) VALUES ('LR05', '512 GB');
INSERT INTO LOAI_RAM (maLoaiRAM, tenLoaiRAM) VALUES ('LR06', '1 TB');
INSERT INTO LOAI_RAM (maLoaiRAM, tenLoaiRAM) VALUES ('LR07', '2 TB');


SELECT * FROM ram;
CREATE TABLE Ram (
    maRAM NVARCHAR2(10) PRIMARY KEY,
    dungLuongRAM nvarchar2(20) NOT NULL
);

INSERT INTO Ram (maRAM, dungLuongRAM) VALUES ('R01', '3 GB');
INSERT INTO Ram (maRAM, dungLuongRAM) VALUES ('R02', '6 GB');
INSERT INTO Ram (maRAM, dungLuongRAM) VALUES ('R03', '8 GB');
INSERT INTO Ram (maRAM, dungLuongRAM) VALUES ('R04', '12 GB');

SELECT * FROM chip;
CREATE TABLE Chip (
    maChip NVARCHAR2(10) PRIMARY KEY,
    tenChip NVARCHAR2(50) NOT NULL
);

INSERT INTO chip (maChip, tenChip) VALUES ('C01', N'Snapdragon');
INSERT INTO chip (maChip, tenChip) VALUES ('C02', N'Apple A');
INSERT INTO chip (maChip, tenChip) VALUES ('C03', N'Mediatek Dimensity');
INSERT INTO chip (maChip, tenChip) VALUES ('C04', N'Mediatek Helio');
INSERT INTO chip (maChip, tenChip) VALUES ('C05', N'Exynos');
INSERT INTO chip (maChip, tenChip) VALUES ('C06', N'Unisoc');
INSERT INTO chip (maChip, tenChip) VALUES ('C07', N'Snapdragon 8 Gen 2 for Galaxy');

SELECT * FROM tinhnang;
CREATE TABLE TinhNang (
    maTinhNang NVARCHAR2(10) PRIMARY KEY,
    tenTinhNang NVARCHAR2(255) NOT NULL
);

INSERT INTO TinhNang (maTinhNang, tenTinhNang) VALUES ('TN01', N'Kháng nước, bụi');
INSERT INTO TinhNang (maTinhNang, tenTinhNang) VALUES ('TN02', N'Hỗ trợ 5G');
INSERT INTO TinhNang (maTinhNang, tenTinhNang) VALUES ('TN03', N'Bảo mật khuôn mặt 3D');
INSERT INTO TinhNang (maTinhNang, tenTinhNang) VALUES ('TN04', N'Công nghệ NFC');


SELECT * FROM tangsoquet;
CREATE TABLE tangsoquet (
    maTangSoQuet NVARCHAR2(10) PRIMARY KEY,
    loaiTangSoQuet NVARCHAR2(30) NOT NULL
);

INSERT INTO TangSoQuet (maTangSoQuet, loaiTangSoQuet) VALUES ('TSQ01', '60 HZ');
INSERT INTO TangSoQuet (maTangSoQuet, loaiTangSoQuet) VALUES ('TSQ02', '90 HZ');
INSERT INTO TangSoQuet (maTangSoQuet, loaiTangSoQuet) VALUES ('TSQ03', '120 HZ');
INSERT INTO TangSoQuet (maTangSoQuet, loaiTangSoQuet) VALUES ('TSQ04', '144 HZ');


SELECT * FROM doPhanGiai;
create table doPhanGiai(
    maDoPhanGiai Nvarchar2(10) not null PRIMARY KEY,
    doPhanGiai nvarchar2(50) not null);

INSERT INTO doPhanGiai (maDoPhanGiai, doPhanGiai) VALUES ('DPG01', N'QQVGA');
INSERT INTO doPhanGiai (maDoPhanGiai, doPhanGiai) VALUES ('DPG02', N'QVGA');
INSERT INTO doPhanGiai (maDoPhanGiai, doPhanGiai) VALUES ('DPG03', N'HD+');
INSERT INTO doPhanGiai (maDoPhanGiai, doPhanGiai) VALUES ('DPG04', N'Full HD+');
INSERT INTO doPhanGiai (maDoPhanGiai, doPhanGiai) VALUES ('DPG05', N'1.5K');
INSERT INTO doPhanGiai (maDoPhanGiai, doPhanGiai) VALUES ('DPG06', N'1.5K+');
INSERT INTO doPhanGiai (maDoPhanGiai, doPhanGiai) VALUES ('DPG07', N'2K+');
INSERT INTO doPhanGiai (maDoPhanGiai, doPhanGiai) VALUES ('DPG08', N'Retina (iPhone)');

SELECT * FROM ImgSP WHERE idSP = 'SP001';
SELECT * FROM imgsp;
CREATE TABLE ImgSP (
    idSP NVARCHAR2(10) PRIMARY KEY, 
    img1 NVARCHAR2(100),
    img2 nvarchar2(100),
    img3 nvarchar2(100),
    img4 nvarchar2(100),
    img5 nvarchar2(100),
    img6 nvarchar2(100),
    img7 nvarchar2(100),
    img8 nvarchar2(100),
    img9 nvarchar2(100),
    img10 nvarchar2(100),
    img11 nvarchar2(100),
    img12 nvarchar2(100),
    img13 nvarchar2(100),
    img14 nvarchar2(100),
    img15 nvarchar2(100),
    img16 nvarchar2(100),
    img17 nvarchar2(100),
    img18 nvarchar2(100),
    img19 nvarchar2(100),
    img20 nvarchar2(100));
    
INSERT INTO imgsp(idsp, img1, img2, img3, img4, img5, img6, img7, img8, img9, img10, img11, img12, img13, img14, img15, img16, img17, img18, img19, img20) 
VALUES (N'SP001',
    N'iphone-15-pro-max-1.jpg',
    N'iphone-15-pro-max-4-titan tự nhiên.jpg',
    N'iphone-15-pro-max-3-titan tự nhiên.jpg',
    N'iphone-15-pro-max-2-titan tự nhiên.jpg',
    N'iphone-15-pro-max-1-titan tự nhiên.jpg',
    N'iphone-15-pro-max-4-titan xanh.jpg',
    N'iphone-15-pro-max-3-titan xanh.jpg',
    N'iphone-15-pro-max-2-titan xanh.jpg',
    N'iphone-15-pro-max-1-titan xanh.jpg',
    N'iphone-15-pro-max-3-titan đen.jpg',
    N'iphone-15-pro-max-2-titan đen.jpg',
    N'iphone-15-pro-max-1-titan đen.jpg',
    N'iphone-15-pro-max-3-titan trắng.jpg',
    N'iphone-15-pro-max-2-titan trắng.jpg',
    N'iphone-15-pro-max-1-titan trắng.jpg',
    N'iphone-15-pro-max-titan trắng.jpg',
    N'iphone-15-pro-max-5.jpg',
    N'iphone-15-pro-max-8.jpg',
    N'iphone-15-pro-max-7.jpg',
    N'iphone-15-pro-max-6.jpg');
    
INSERT INTO imgsp (idsp, img1, img2, img3, img4, img5, img6, img7, img8, img9, img10, img11, img12, img13, img14, img15, img16, img17, img18, img19, img20)
VALUES (
    N'SP002',
    N'iphone-16-pro-max-1.jpg',
    N'iphone-16-pro-max-4-titan tự nhiên.jpg',
    N'iphone-16-pro-max-3-titan tự nhiên.jpg',
    N'iphone-16-pro-max-2-titan tự nhiên.jpg',
    N'iphone-16-pro-max-1-titan tự nhiên.jpg',
    N'iphone-16-pro-max-4-titan xanh.jpg',
    N'iphone-16-pro-max-3-titan xanh.jpg',
    N'iphone-16-pro-max-2-titan xanh.jpg',
    N'iphone-16-pro-max-1-titan xanh.jpg',
    N'iphone-16-pro-max-3-titan đen.jpg',
    N'iphone-16-pro-max-2-titan đen.jpg',
    N'iphone-16-pro-max-1-titan đen.jpg',
    N'iphone-16-pro-max-3-titan trắng.jpg',
    N'iphone-16-pro-max-2-titan trắng.jpg',
    N'iphone-16-pro-max-1-titan trắng.jpg',
    N'iphone-16-pro-max-titan trắng.jpg',
    N'iphone-16-pro-max-5.jpg',
    N'iphone-16-pro-max-8.jpg',
    N'iphone-16-pro-max-7.jpg',
    N'iphone-16-pro-max-6.jpg'
);
    
SELECT * FROM danhsachsp;
CREATE TABLE danhsachsp (
    idSP NVARCHAR2(10) PRIMARY KEY,
    tenSP NVARCHAR2(200) NOT NULL,
    moTaSP NVARCHAR2(1000),
    img NVARCHAR2(100),
    dungLgPin NVARCHAR2(50) DEFAULT 'Chưa có thông tin !!!',
    HeDieuHanh NVARCHAR2(50) DEFAULT 'Android',
    maThuongHieu NVARCHAR2(10) NOT NULL,FOREIGN KEY (maThuongHieu) REFERENCES thuongHieu(maThuongHieu),
    maDanhMuc NVARCHAR2(10) NOT NULL,FOREIGN KEY (maDanhMuc) REFERENCES DanhMuc(maDanhMuc)
);


INSERT INTO danhsachsp(idSP, tenSP, moTaSP, img, dungLgPin,HeDieuHanh,maThuongHieu, maDanhMuc) 
VALUES (N'SP001', N'iPhone 15 Pro Max', N'Điện thoại thông minh cao cấp nhất của Apple với chip A17 Bionic mạnh mẽ, màn hình Super Retina XDR sống động và hệ thống camera tiên tiến.', N'iphone-15-pro-max-1.jpg', N'4352mAh',N'IOS', N'TH001', N'DM01');

INSERT INTO danhsachsp(idSP, tenSP, moTaSP, img, dungLgPin,HeDieuHanh,maThuongHieu, maDanhMuc) 
VALUES (N'SP002', N'Samsung Galaxy S23 Ultra', N'Điện thoại flagship của Samsung với màn hình Dynamic AMOLED 2X tuyệt đẹp, camera 200MP đỉnh cao và hiệu năng vượt trội nhờ chip Snapdragon 8 Gen 2.', N'samsung-galaxy-s23-1.jpg', N'5000mAh',N'Android', N'TH002', N'DM01');

INSERT INTO danhsachsp(idSP, tenSP, moTaSP, img, dungLgPin,HeDieuHanh,maThuongHieu, maDanhMuc) 
VALUES (N'SP003', N'Xiaomi Redmi Note 12 Pro', N'Điện thoại tầm trung của Xiaomi với màn hình AMOLED 120Hz mượt mà, camera 50MP chất lượng và hiệu năng ổn định nhờ chip MediaTek Dimensity 1080.', N'xiaomi-redmi-note-12-pro-1.jpg', N'5000mAh',N'Android', N'TH003', N'DM01');

INSERT INTO danhsachsp(idSP, tenSP, moTaSP, img, dungLgPin,HeDieuHanh,maThuongHieu, maDanhMuc) 
VALUES (N'SP004', N'Vivo V27 Pro', N'Điện thoại Vivo tập trung vào camera với thiết kế đẹp mắt, màn hình AMOLED 120Hz và camera chính 50MP với chống rung quang học OIS.', N'vivo-v27-pro-1.jpg', N'4600mAh',N'Android', N'TH004', N'DM01');

INSERT INTO danhsachsp(idSP, tenSP, moTaSP, img, dungLgPin,HeDieuHanh,maThuongHieu, maDanhMuc) 
VALUES (N'SP005', N'Oppo Reno10 Pro+', N'Điện thoại Oppo với thiết kế mỏng nhẹ, màn hình AMOLED 120Hz, camera chân dung tele 32MP và sạc nhanh SuperVOOC 100W.', N'oppo-reno10-pro-1.jpg', N'4700mAh',N'Android', N'TH005', N'DM01');

INSERT INTO danhsachsp(idSP, tenSP, moTaSP, img, dungLgPin,HeDieuHanh,maThuongHieu, maDanhMuc) 
VALUES (N'SP006', N'iPhone 14', N'Điện thoại iPhone thế hệ trước với chip A15 Bionic vẫn mạnh mẽ, màn hình Super Retina XDR và hệ thống camera kép chất lượng.', N'iPhone-14-1.jpg', N'3279mAh',N'IOS', N'TH001', N'DM01');

INSERT INTO danhsachsp(idSP, tenSP, moTaSP, img, dungLgPin,HeDieuHanh,maThuongHieu, maDanhMuc) 
VALUES (N'SP007', N'Samsung Galaxy A54', N'Điện thoại tầm trung của Samsung với màn hình Super AMOLED 120Hz, camera chính 50MP với chống rung quang học OIS và pin lớn 5000mAh.', N'samsung-galaxy-a54-t1.jpg', N'5000mAh',N'Android', N'TH002', N'DM02');

INSERT INTO danhsachsp(idSP, tenSP, moTaSP, img, dungLgPin,HeDieuHanh,maThuongHieu, maDanhMuc) 
VALUES (N'SP008', N'Oppo A78', N'Điện thoại Oppo giá rẻ với màn hình AMOLED 90Hz, camera chính 50MP và sạc nhanh 33W.', N'oppo-a78-1.jpg', N'5000mAh',N'Android', N'TH005', N'DM01');

INSERT INTO danhsachsp(idSP, tenSP, moTaSP, img, dungLgPin,HeDieuHanh,maThuongHieu, maDanhMuc) 
VALUES (N'SP009', N'Xiaomi 13', N'Điện thoại flagship của Xiaomi với thiết kế cao cấp, màn hình AMOLED 120Hz, camera Leica và hiệu năng mạnh mẽ nhờ chip Snapdragon 8 Gen 2.', N'xiaomi-redmi-note-13-pro-1.jpg', N'4500mAh',N'Android', N'TH003', N'DM01');

INSERT INTO danhsachsp(idSP, tenSP, moTaSP, img, dungLgPin,HeDieuHanh,maThuongHieu, maDanhMuc) 
VALUES (N'SP010', N'Vivo Y36', N'Điện thoại Vivo tầm trung với màn hình LCD 90Hz, camera chính 50MP và pin lớn 5000mAh.', N'vivo-y36-1.jpg', N'5000mAh',N'Android', N'TH004', N'DM01');



SELECT * FROM CauHinhSP;
CREATE TABLE CauHinhSP (
    id int GENERATED ALWAYS AS IDENTITY not null PRIMARY KEY,
    idSP NVARCHAR2(10) NOT NULL,FOREIGN KEY (idSP) REFERENCES danhsachsp(idSP),
    maSac nvarchar2(10) NOT NULL,FOREIGN KEY (maSac) REFERENCES Sac(maSac),
    maLoaiRAM nvarchar2(10) NOT NULL,FOREIGN KEY (maLoaiRAM) REFERENCES LOAI_RAM(maLoaiRAM),
    maRAM nvarchar2(10) NOT NULL,FOREIGN KEY (maRAM) REFERENCES Ram(maRAM),
    maChip nvarchar2(10) NOT NULL,FOREIGN KEY (maChip) REFERENCES Chip(maChip),
    maTinhNang nvarchar2(10) NOT NULL,FOREIGN KEY (maTinhNang) REFERENCES TinhNang(maTinhNang),
    maTangSoQuet nvarchar2(10) NOT NULL, FOREIGN KEY (maTangSoQuet) REFERENCES TangSoQuet(maTangSoQuet),
    doRongMan NVARCHAR2(10) NOT NULL,
    maDoPhanGiai nvarchar2(10) NOT NULL, FOREIGN KEY (maDoPhanGiai) REFERENCES DoPhanGiai(maDoPhanGiai),
    giaSP INT NOT NULL CHECK (giaSP > 0),
    ngayNhap date NOT null,
    soLuongTon INT NOT NULL CHECK (soLuongTon >= 0)
);

create table phu(
idP int GENERATED ALWAYS AS IDENTITY not null PRIMARY KEY, 
id int , FOREIGN KEY (id) REFERENCES CauHinhSP(id),
idSP nvarchar2(10));

insert into phu(idSP) values (N'SP001');
insert into phu(idSP) values (N'SP002');
insert into phu(idSP) values (N'SP003');
insert into phu(idSP) values (N'SP004');
insert into phu(idSP) values (N'SP005');
insert into phu(idSP) values (N'SP006');
insert into phu(idSP) values (N'SP007');
insert into phu(idSP) values (N'SP008');
insert into phu(idSP) values (N'SP009');
insert into phu(idSP) values (N'SP010');

INSERT INTO cauhinhsp(idsp,masac,maloairam,maram,machip,matinhnang,matangsoquet,dorongman,maDoPhanGiai,giasp,soluongton,ngaynhap) VALUES (N'SP001',N'S02',N'LR04',N'R03',N'C02',N'TN03',N'TSQ03',N'6.7 inch',N'DPG08',29590000,50,to_date('22/12/2021','dd/mm/yyyy'));
INSERT INTO cauhinhsp(idsp,masac,maloairam,maram,machip,matinhnang,matangsoquet,dorongman,maDoPhanGiai,giasp,soluongton,ngaynhap) VALUES (N'SP001',N'S02',N'LR05',N'R03',N'C02',N'TN03',N'TSQ03',N'6.7 inch',N'DPG08',35690000,40,to_date('22/12/2021','dd/mm/yyyy'));
INSERT INTO cauhinhsp(idsp,masac,maloairam,maram,machip,matinhnang,matangsoquet,dorongman,maDoPhanGiai,giasp,soluongton,ngaynhap) VALUES (N'SP001',N'S02',N'LR06',N'R03',N'C02',N'TN03',N'TSQ03',N'6.7 inch',N'DPG08',42790000,20,to_date('22/12/2021','dd/mm/yyyy'));

INSERT INTO cauhinhsp(idsp,masac,maloairam,maram,machip,matinhnang,matangsoquet,dorongman,maDoPhanGiai,giasp,soluongton,ngaynhap) VALUES (N'SP002',N'S03',N'LR04',N'R03',N'C07',N'TN02',N'TSQ03',N'6.8 inch',N'DPG04',23990000,70,to_date('15/09/2023','dd/mm/yyyy'));
INSERT INTO cauhinhsp(idsp,masac,maloairam,maram,machip,matinhnang,matangsoquet,dorongman,maDoPhanGiai,giasp,soluongton,ngaynhap) VALUES (N'SP002',N'S03',N'LR05',N'R04',N'C07',N'TN02',N'TSQ03',N'6.8 inch',N'DPG04',25490000,30,to_date('15/09/2023','dd/mm/yyyy'));

INSERT INTO cauhinhsp(idsp,masac,maloairam,maram,machip,matinhnang,matangsoquet,dorongman,maDoPhanGiai,giasp,soluongton,ngaynhap) VALUES (N'SP003', N'S04', N'LR04', N'R04', N'C03', N'TN04', N'TSQ02', N'6.67 inch', N'DPG07', 7990000, 100, to_date('16/1/2023', 'dd/mm/yyyy'));
INSERT INTO cauhinhsp(idsp,masac,maloairam,maram,machip,matinhnang,matangsoquet,dorongman,maDoPhanGiai,giasp,soluongton,ngaynhap) VALUES (N'SP003', N'S04', N'LR05', N'R04', N'C03', N'TN04', N'TSQ02', N'6.67 inch', N'DPG07', 10990000, 50, to_date('10/10/2023', 'dd/mm/yyyy'));

INSERT INTO cauhinhsp(idsp,masac,maloairam,maram,machip,matinhnang,matangsoquet,dorongman,maDoPhanGiai,giasp,soluongton,ngaynhap) VALUES (N'SP004', N'S04', N'LR04', N'R04', N'C02', N'TN03', N'TSQ01', N'6.78 inch', N'DPG08', 9490000, 80, to_date('10/10/2023', 'dd/mm/yyyy'));
INSERT INTO cauhinhsp(idsp,masac,maloairam,maram,machip,matinhnang,matangsoquet,dorongman,maDoPhanGiai,giasp,soluongton,ngaynhap) VALUES (N'SP004', N'S04', N'LR04', N'R04', N'C02', N'TN03', N'TSQ01', N'6.78 inch', N'DPG08', 12490000, 60, to_date('10/10/2023', 'dd/mm/yyyy'));

INSERT INTO cauhinhsp(idsp, masac, maloairam, maram, machip, matinhnang, matangsoquet, dorongman, maDoPhanGiai, giasp, soluongton, ngaynhap) VALUES (N'SP005', N'S05', N'LR04', N'R04', N'C03', N'TN02', N'TSQ03', N'6.74 inch', N'DPG04', 11490000, 90, to_date('10/10/2023', 'dd/mm/yyyy'));
INSERT INTO cauhinhsp(idsp, masac, maloairam, maram, machip, matinhnang, matangsoquet, dorongman, maDoPhanGiai, giasp, soluongton, ngaynhap) VALUES (N'SP005', N'S05', N'LR04', N'R04', N'C03', N'TN02', N'TSQ03', N'6.74 inch', N'DPG04', 14990000, 70, to_date('10/10/2023', 'dd/mm/yyyy'));

INSERT INTO cauhinhsp(idsp, masac, maloairam, maram, machip, matinhnang, matangsoquet, dorongman, maDoPhanGiai, giasp, soluongton, ngaynhap) VALUES (N'SP006', N'S02', N'LR04', N'R02', N'C01', N'TN01', N'TSQ01', N'6.1 inch', N'DPG04', 24990000, 60, to_date('10/10/2023', 'dd/mm/yyyy'));
INSERT INTO cauhinhsp(idsp, masac, maloairam, maram, machip, matinhnang, matangsoquet, dorongman, maDoPhanGiai, giasp, soluongton, ngaynhap) VALUES (N'SP006', N'S03', N'LR04', N'R02', N'C01', N'TN01', N'TSQ01', N'6.1 inch', N'DPG04', 29990000, 40, to_date('10/10/2023', 'dd/mm/yyyy'));

INSERT INTO cauhinhsp(idsp, masac, maloairam, maram, machip, matinhnang, matangsoquet, dorongman, maDoPhanGiai, giasp, soluongton, ngaynhap) VALUES (N'SP007', N'S03', N'LR04', N'R03', N'C02', N'TN02', N'TSQ02', N'6.4 inch', N'DPG04', 8490000, 80, to_date('10/10/2023', 'dd/mm/yyyy'));
INSERT INTO cauhinhsp(idsp, masac, maloairam, maram, machip, matinhnang, matangsoquet, dorongman, maDoPhanGiai, giasp, soluongton, ngaynhap) VALUES (N'SP007', N'S03', N'LR04', N'R03', N'C02', N'TN02', N'TSQ02', N'6.4 inch', N'DPG04', 10990000, 70, to_date('10/10/2023', 'dd/mm/yyyy'));

-- Cấu hình cho sản phẩm Oppo A78
-- 8GB - 128GB
INSERT INTO cauhinhsp(idsp, masac, maloairam, maram, machip, matinhnang, matangsoquet, dorongman, maDoPhanGiai, giasp, soluongton, ngaynhap) 
VALUES (N'SP008', N'S03', N'LR04', N'R01', N'C02', N'TN02', N'TSQ02', N'6.43 inch', N'DPG04', 5990000, 100, to_date('10/10/2023', 'dd/mm/yyyy'));

-- Cấu hình cho sản phẩm Xiaomi 13
-- 12GB - 256GB
INSERT INTO cauhinhsp(idsp, masac, maloairam, maram, machip, matinhnang, matangsoquet, dorongman, maDoPhanGiai, giasp, soluongton, ngaynhap) 
VALUES (N'SP009', N'S02', N'LR05', N'R02', N'C03', N'TN01', N'TSQ01', N'6.73 inch', N'DPG06', 22990000, 80, to_date('10/10/2023', 'dd/mm/yyyy'));

-- Cấu hình cho sản phẩm Vivo Y36
-- 8GB - 256GB
INSERT INTO cauhinhsp(idsp, masac, maloairam, maram, machip, matinhnang, matangsoquet, dorongman, maDoPhanGiai, giasp, soluongton, ngaynhap) 
VALUES (N'SP010', N'S01', N'LR05', N'R03', N'C01', N'TN03', N'TSQ01', N'6.58 inch', N'DPG02', 6990000, 90, to_date('10/10/2023', 'dd/mm/yyyy'));

SELECT * FROM CauHinhSP;
SELECT * FROM danhsachsp;
SELECT * FROM ImgSP;
SELECT * FROM doPhanGiai;
SELECT * FROM tangsoquet;
SELECT * FROM TinhNang;
SELECT * FROM Chip;
SELECT * FROM Ram;
SELECT * FROM LOAI_RAM;
SELECT * FROM HeDieuHanh;
SELECT * FROM Sac;
SELECT * FROM DanhMuc;
SELECT * FROM thuongHieu;