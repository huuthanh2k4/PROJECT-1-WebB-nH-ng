CREATE TABLE VaiTro(
    id int generated always as identity NOT NULL primary key,
    name nvarchar2(50));
    
 SELECT * FROM vaitro;

CREATE TABLE NguoiDung(
    id int generated always as identity NOT NULL primary key,
    TaiKhoan NVARCHAR2(50) not null,
    MatKhau NVARCHAR2(200) not null,
    TrangThai NUMBER(1,0) not null,
    TenND NVARCHAR2(100) not null,
    GioiTinh NUMBER(1,0) not null,
    NgaySinh date not null,
    QueQuan NVARCHAR2(200) not null,
    gmail NVARCHAR2(100) not null,
    SoDT VARCHAR(20) not null);
    
 SELECT * FROM nguoidung;
 
 CREATE TABLE XetVaiTro(
    id int GENERATED always as IDENTITY not null PRIMARY key,
    IdNguoiDung INT, FOREIGN KEY (IdNguoiDung) REFERENCES NguoiDung(id),
    IdVaiTro INT, FOREIGN KEY (IdVaiTro) REFERENCES  VaiTro(id));
    
SELECT * FROM xetvaitro;

INSERT INTO VaiTro (name) VALUES (N'VAITRO_ADMIN');
INSERT INTO VaiTro (name) VALUES (N'VAITRO_USER');

INSERT INTO NguoiDung (TaiKhoan,matkhau,trangthai,tennd,gioitinh,ngaysinh,quequan,gmail,sodt) VALUES (N'admin',N'$2a$12$tBWTxv1zTbAYXlZpThHThemtiBzJZ4wP65XwetC3RHdi1q/1Z6k1u',1,N'Phạm Hữu Thành',1,TO_DATE('2004-04-05','yyyy-mm-dd'),N'THÁI BÌNH-ĐÔNG HƯNG','phamhuuthanh866@gmail.com',N'0325492092');
INSERT INTO NguoiDung (TaiKhoan,matkhau,trangthai,tennd,gioitinh,ngaysinh,quequan,gmail,sodt) VALUES (N'user',N'$2a$12$ZwlcgrLn8.7OcCm7VWYMkuGzhMlxyM3dIu1IVTLU7nfzUZ1xFtsZq',1,N'Phạm Hữu Thiếu',1,TO_DATE('2004-04-05','yyyy-mm-dd'),N'HÀ NỘI-BẮC TỪ LIÊM','ngocmadonghoang@gmail.com',N'0375338722');
INSERT INTO NguoiDung (TaiKhoan,matkhau,trangthai,tennd,gioitinh,ngaysinh,quequan,gmail,sodt) VALUES (N'nguoidung',N'$2a$12$wYbYfaF3aGKSnymgrgZiheK7GYLTemW25j9xb99iRgT7n1Xsecgmm',1,N'Phạm Thị Ngọc Mai',1,TO_DATE('2000-10-08','yyyy-mm-dd'),N'HÀ NỘI-BẮC TỪ LIÊM','dongoclinh@gmail.com',N'0387980173');

INSERT INTO XetVaiTro (idnguoidung,idvaitro)VALUES (1,1);
INSERT INTO XetVaiTro (idnguoidung,idvaitro)VALUES (1,2);
INSERT INTO XetVaiTro (idnguoidung,idvaitro)VALUES (2,2);
INSERT INTO xetvaitro (idnguoidung,idvaitro) VALUES (3,2);

DROP TABLE VaiTro;
DROP TABLE NguoiDung;
DROP TABLE XetVaiTro;
