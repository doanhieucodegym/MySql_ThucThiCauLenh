Create database QL_ThuVien;
drop  table theloai;
Create table theloai
(
matl varchar (20) not  null ,
tentl varchar (30) not  null ,
constraint pk_theloai primary key (matl)
);
drop table tacgia;
Create table tacgia
(
matg varchar (20) not null,
tentg varchar (30) not null,
diachi varchar (30),
phone varchar (30),
Constraint  pk_tacgia primary key(matg)
);
drop table Sach;
Create table Sach
(
masach varchar (10) not null,
matl varchar (20) not null,
matg varchar(20) not  null,
tensach varchar(30) not null,
nhaxb varchar (30) ,
gia double,
soluongsach int ,
Constraint pk_sach primary key(masach),
Constraint fk_sach_theloai foreign key(matl) references theloai(matl),
Constraint fk_sach_tacgia foreign key(matg) references tacgia(matg)
);
drop table  nganh;
Create table nganh
(
manganh varchar(20) not null  ,
tennganh varchar(30) not  null,
mota varchar(30) ,
Constraint pk_nganh primary key (manganh)

);
drop table lop;
Create table  lop
(
malop varchar (20) not  null,
manganh varchar (20) not null,
tenlop varchar (30) not null,
Constraint pk_lop  primary key (malop),
Constraint pk_lop_nganh foreign key(manganh) references Nganh(manganh) 
);
drop table sinhvien;
Create table sinhvien
(
masinhvien varchar(20) not null,
malop varchar (20) not null,
tensinhvien varchar (20) not null,
tuoi int ,
diachi varchar (30) ,
email varchar (50) ,
Constraint pk_sinhvien primary key (masinhvien),
Constraint fk_sinhvien_lop foreign key (malop) references lop(malop)
);
drop table phieumuon;
Create table phieumuon
(
maphieumuon varchar (20) not null , 
masinhvien varchar (20) not null,
ngaymuon date,
ngaytra date,
soluongmuon int ,
Constraint pk_phieumuon primary key (maphieumuon),
Constraint fk_phieumuon_sinhvien foreign key (masinhvien) references sinhvien(masinhvien)

);
drop table phieumuonct;
Create table phieumuonct
(
masach varchar (20) not null,
maphieumuon varchar (20) not null,
soluong int ,
Constraint pk_phieumuonct primary key (masach,maphieumuon),
Constraint fk_phieumuonct_sach foreign key (masach) references Sach(masach),
Constraint fk_phieumuonct_phieumuon foreign key (maphieumuon) references phieumuon(maphieumuon)
);



