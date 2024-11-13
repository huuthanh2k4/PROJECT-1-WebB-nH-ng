SELECT * FROM DanhSachSp;
drop table danhsachsp;
CREATE TABLE DanhSachSp(
id int GENERATED ALWAYS AS IDENTITY NOT NULL PRIMARY KEY,
idSP NVARCHAR2(10) not null,
tenSP nvarchar2(200) not null,
moTaSP nvarchar2(1000),
img nvarchar2(100),
giaSp int NOT NULL CHECK (giaSp > 0),
soLuongTon Int not null check (soLuongTon >=0),
doRongMan nvarchar2(10),
maThuongHieu INT,FOREIGN KEY(maThuongHieu) REFERENCES thuongHieu(maThuongHieu),
maDanhMuc INT,FOREIGN KEY(maDanhMuc) REFERENCES DanhMuc(maDanhMuc),
maSac INT,FOREIGN KEY(maSac) REFERENCES Sac(maSac),
maHeDieuHanh INT,FOREIGN KEY(maHeDieuHanh) REFERENCES HeDieuHanh(maHeDieuHanh),
maRim INT,FOREIGN KEY(maRim) REFERENCES Rim(maRim),
maRam INT,FOREIGN KEY(maRam) REFERENCES Ram(maRam),
maChip INT,FOREIGN KEY(maChip) REFERENCES Chip(maChip),
maTinhNang INT,FOREIGN KEY(maTinhNang) REFERENCES TinhNang(maChucNang),
maTangSoQuet INT,FOREIGN KEY(maTangSoQuet) REFERENCES TangSoQuet(maTanSoQuet)
);

SELECT * FROM thuongHieu;
create table thuongHieu(
maThuongHieu int GENERATED ALWAYS AS IDENTITY not NULL primary key,
tenThuongHieu nvarchar2(30) not null);

INSERT INTO thuonghieu(tenthuonghieu) VALUES (N'iPhone');
INSERT INTO thuonghieu(tenthuonghieu) VALUES (N'SamSung');
INSERT INTO thuonghieu(tenthuonghieu) VALUES (N'Xiaomi');
INSERT INTO thuonghieu(tenthuonghieu) VALUES (N'vivo');
INSERT INTO thuonghieu(tenthuonghieu) VALUES (N'realme');
INSERT INTO thuonghieu(tenthuonghieu) VALUES (N'HONOR');
INSERT INTO thuonghieu(tenthuonghieu) VALUES (N'TCL');
INSERT INTO thuonghieu(tenthuonghieu) VALUES (N'Nokia');
INSERT INTO thuonghieu(tenthuonghieu) VALUES (N'Tecno');
INSERT INTO thuonghieu(tenthuonghieu) VALUES (N'Masstel');
INSERT INTO thuonghieu(tenthuonghieu) VALUES (N'Benco');


create table DanhMuc(
maDanhMuc int GENERATED ALWAYS as IDENTITY not null primary key,
tenDanhMuc nvarchar2(100));

INSERT INTO danhmuc(tendanhmuc) VALUES (N'Điện thoại thông minh');
INSERT INTO danhmuc(tendanhmuc) VALUES (N'Điện thoại phổ thông');

create table Sac(
maSac int GENERATED ALWAYS as IDENTITY not null primary key,
LoaiSac nvarchar2(100));

INSERT INTO sac(loaisac) VALUES (N'Sạc thường');
INSERT INTO sac(loaisac) VALUES (N'Sạc nhanh từ 20W');
INSERT INTO sac(loaisac) VALUES (N'Sạc nhanh từ 60W');
INSERT INTO sac(loaisac) VALUES (N'Sạc không dây');

create table HeDieuHanh(
maHeDieuHanh int GENERATED ALWAYS as IDENTITY not null primary key,
tenHeDieuHanh nvarchar2(100));

INSERT INTO hedieuhanh(tenhedieuhanh) VALUES (N'Android');
INSERT INTO hedieuhanh(tenhedieuhanh) VALUES (N'IOS');

create table Rim(
maRim int GENERATED ALWAYS as IDENTITY not null primary key,
dungLuongRim varchar2(10));

INSERT INTO Rim(dungluongrim) VALUES ('32 GB');
INSERT INTO Rim(dungluongrim) VALUES ('64 GB');
INSERT INTO Rim(dungluongrim) VALUES ('128 GB');
INSERT INTO Rim(dungluongrim) VALUES ('256 GB');
INSERT INTO Rim(dungluongrim) VALUES ('512 GB');
INSERT INTO Rim(dungluongrim) VALUES ('1 TB');

create table Ram(
maRam int GENERATED ALWAYS as IDENTITY not null primary key,
dungLuongRam varchar2(10));

insert into ram(dungluongram) VALUES ('3 GB');
insert into ram(dungluongram) VALUES ('6 GB');
insert into ram(dungluongram) VALUES ('8 GB');
insert into ram(dungluongram) VALUES ('12 GB');

create table Chip(
maChip int GENERATED ALWAYS as IDENTITY not null primary key,
tenChip nvarchar2(100));

insert into chip(tenchip) values (N'Snapdragon');
insert into chip(tenchip) values (N'Apple A');
insert into chip(tenchip) values (N'Mediatek Dimensity');
insert into chip(tenchip) values (N'Mediatek Helio');
insert into chip(tenchip) values (N'Exynos');
insert into chip(tenchip) values (N'Unisoc');


create table TangSoQuet(
maTanSoQuet int GENERATED ALWAYS as IDENTITY not null primary key,
loaiTangSoQuet nvarchar2(50));

insert into tangsoquet(loaitangsoquet) VALUES ('60 HZ');
insert into tangsoquet(loaitangsoquet) VALUES ('90 HZ');
insert into tangsoquet(loaitangsoquet) VALUES ('120 HZ');
insert into tangsoquet(loaitangsoquet) VALUES ('144 HZ');


create table TinhNang(
maChucNang int GENERATED ALWAYS as IDENTITY not null primary key,
tenChucNang nvarchar2(100));


INSERT INTO DanhSachSp(idSP, tenSP, moTaSP, img, giaSp, soLuongTon) 
VALUES (N'SP001', N'iPhone 15 Pro Max', N'Điện thoại thông minh cao cấp nhất của Apple với chip A17 Bionic mạnh mẽ, màn hình Super Retina XDR sống động và hệ thống camera tiên tiến.', N'iphone-15-pro-max-1.jpg', 29990000, 15); -- Giá và số lượng tồn kho đã điều chỉnh

INSERT INTO DanhSachSp(idSP, tenSP, moTaSP, img, giaSp, soLuongTon) 
VALUES (N'SP002', N'Samsung Galaxy S23 Ultra', N'Điện thoại flagship của Samsung với màn hình Dynamic AMOLED 2X tuyệt đẹp, camera 200MP đỉnh cao và hiệu năng vượt trội nhờ chip Snapdragon 8 Gen 2.', N'samsung-galaxy-s23-1.jpg', 24990000, 25); 

INSERT INTO DanhSachSp(idSP, tenSP, moTaSP, img, giaSp, soLuongTon) 
VALUES (N'SP003', N'Xiaomi Redmi Note 12 Pro', N'Điện thoại tầm trung của Xiaomi với màn hình AMOLED 120Hz mượt mà, camera 50MP chất lượng và hiệu năng ổn định nhờ chip MediaTek Dimensity 1080.', N'xiaomi-redmi-note-12-pro-1.jpg', 6990000, 30); 

INSERT INTO DanhSachSp(idSP, tenSP, moTaSP, img, giaSp, soLuongTon) 
VALUES (N'SP004', N'Vivo V27 Pro', N'Điện thoại Vivo tập trung vào camera với thiết kế đẹp mắt, màn hình AMOLED 120Hz và camera chính 50MP với chống rung quang học OIS.', N'vivo-v27-pro-1.jpg', 10990000, 12); 

INSERT INTO DanhSachSp(idSP, tenSP, moTaSP, img, giaSp, soLuongTon) 
VALUES (N'SP005', N'Oppo Reno10 Pro+', N'Điện thoại Oppo với thiết kế mỏng nhẹ, màn hình AMOLED 120Hz, camera chân dung tele 32MP và sạc nhanh SuperVOOC 100W.', N'oppo-reno10-pro-1.jpg', 13990000, 8); 

INSERT INTO DanhSachSp(idSP, tenSP, moTaSP, img, giaSp, soLuongTon) 
VALUES (N'SP006', N'iPhone 14', N'Điện thoại iPhone thế hệ trước với chip A15 Bionic vẫn mạnh mẽ, màn hình Super Retina XDR và hệ thống camera kép chất lượng.', N'iPhone-14-1.jpg', 17990000, 22); 

INSERT INTO DanhSachSp(idSP, tenSP, moTaSP, img, giaSp, soLuongTon) 
VALUES (N'SP007', N'Samsung Galaxy A54', N'Điện thoại tầm trung của Samsung với màn hình Super AMOLED 120Hz, camera chính 50MP với chống rung quang học OIS và pin lớn 5000mAh.', N'samsung-galaxy-a54-t1.jpg', 8490000, 35); 

INSERT INTO DanhSachSp(idSP, tenSP, moTaSP, img, giaSp, soLuongTon) 
VALUES (N'SP008', N'Oppo A78', N'Điện thoại Oppo giá rẻ với màn hình AMOLED 90Hz, camera chính 50MP và sạc nhanh 33W.', N'oppo-a78-1.jpg', 4990000, 50); 

INSERT INTO DanhSachSp(idSP, tenSP, moTaSP, img, giaSp, soLuongTon) 
VALUES (N'SP009', N'Xiaomi 13', N'Điện thoại flagship của Xiaomi với thiết kế cao cấp, màn hình AMOLED 120Hz, camera Leica và hiệu năng mạnh mẽ nhờ chip Snapdragon 8 Gen 2.', N'xiaomi-redmi-note-13-pro-1.jpg', 19990000, 5); 

INSERT INTO DanhSachSp(idSP, tenSP, moTaSP, img, giaSp, soLuongTon) 
VALUES (N'SP010', N'Vivo Y36', N'Điện thoại Vivo tầm trung với màn hình LCD 90Hz, camera chính 50MP và pin lớn 5000mAh.', N'vivo-y36-1.jpg', 5490000, 40); 

