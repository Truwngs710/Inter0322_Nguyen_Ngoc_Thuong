create database Furama;

use Furama;

create table vi_tri (
ma_vi_tri INT primary key,
ten_vi_tri varchar(45)
);

create table trinh_do (
ma_trinh_do int primary key,
ten_trinh_do varchar(45)
);


create table nhan_vien (
ma_nhan_vien INT primary key,
ho_ten varchar(45),
ngay_sinh date,
so_cmnd varchar(45),
luong double,
so_dien_thoai varchar(45),
email varchar(45),
dia_chi varchar(45),
ma_vi_tri int,
ma_trinh_do int,
ma_bo_phan int
);


create table khach_hang (
ma_khach_hang INT primary key,
ma_loai_khach int,
ho_ten varchar(45),
ngay_sinh date,
gioi_tinh bit(1),
so_cmnd varchar(45),
so_dien_thoai varchar(45),
email varchar(45),
dia_chi varchar(45)
);

create table loai_khach(
ma_loai_khach int primary key,
ten_loai_khach varchar(45)
);

CREATE TABLE bo_phan (
  ma_bo_phan INT PRIMARY KEY,
  ten_bo_phan VARCHAR(45)
);

CREATE TABLE hop_dong (
  ma_hop_dong int PRIMARY KEY,
  ngay_lam_hop_dong datetime,
  ngay_ket_thuc datetime,
  tien_dat_coc double,
  ma_nhan_vien int,
  ma_khach_hang int,
  ma_dich_vu int
);

CREATE TABLE kieu_thue (
  ma_kieu_thue int PRIMARY KEY,
 ten_kieu_thue varchar(45)
);

CREATE TABLE loai_dich_vu (
  ma_loai_dich_vu int PRIMARY KEY,
 ten_loai_dich_vu varchar(45)
);

CREATE TABLE hop_dong_chi_tiet (
  ma_hop_dong_chi_tiet int PRIMARY KEY,
 ma_hop_dong int,
 ma_dich_vu_di_kem int,
 so_luong int
);

CREATE TABLE dich_vu_di_kem (
  ma_dich_vu_di_kem int PRIMARY KEY,
 ten_dich_vu_di_kem varchar(45),
 gia double,
 don_vi varchar(10),
 trang_thai varchar(45)
);

CREATE TABLE dich_vu (
  ma_dich_vu int PRIMARY KEY,
 ten_dich_vu varchar(45),
 dien_tich int,
 chi_phi_thue double,
 so_nguoi_toi_da int,
 ma_kieu_thue int,
 ma_loai_dich_vu int,
 tieu_chuan_phong varchar(45),
 mo_ta_tien_nghi_khac varchar(45),
 dien_tich_ho_boi double,
 so_tang int
);

AlTER TABLE nhan_vien ADD FOREIGN KEY(ma_vi_tri) REFERENCES vi_tri(ma_vi_tri);
AlTER TABLE nhan_vien ADD FOREIGN KEY(ma_trinh_do) REFERENCES trinh_do(ma_trinh_do);
AlTER TABLE nhan_vien ADD FOREIGN KEY(ma_bo_phan) REFERENCES bo_phan(ma_bo_phan);

AlTER TABLE khach_hang ADD FOREIGN KEY(ma_loai_khach) REFERENCES loai_khach(ma_loai_khach);

AlTER TABLE hop_dong_chi_tiet ADD FOREIGN KEY(ma_hop_dong) REFERENCES hop_dong(ma_hop_dong);
AlTER TABLE hop_dong_chi_tiet ADD FOREIGN KEY(ma_dich_vu_di_kem) REFERENCES dich_vu_di_kem(ma_dich_vu_di_kem);

AlTER TABLE hop_dong ADD FOREIGN KEY(ma_nhan_vien) REFERENCES nhan_vien(ma_nhan_vien);
AlTER TABLE hop_dong ADD FOREIGN KEY(ma_khach_hang) REFERENCES khach_hang(ma_khach_hang);
AlTER TABLE hop_dong ADD FOREIGN KEY(ma_dich_vu) REFERENCES dich_vu(ma_dich_vu);

AlTER TABLE dich_vu ADD FOREIGN KEY(ma_kieu_thue) REFERENCES kieu_thue(ma_kieu_thue);
AlTER TABLE dich_vu ADD FOREIGN KEY(ma_loai_dich_vu) REFERENCES loai_dich_vu(ma_loai_dich_vu);

-- C??u 1:

insert into vi_tri values(1, "Qu???n l??");
insert into vi_tri values(2, "Nh??n vi??n");

insert into trinh_do values(1, "Trung c???p");
insert into trinh_do values(2, "Cao ?????ng");
insert into trinh_do values(3, "?????i h???c");
insert into trinh_do values(4, "Sau ?????i h???c");

insert into bo_phan values(1, "Sale-Marketing");
insert into bo_phan values(2, "H??nh ch??nh");
insert into bo_phan values(3, "Ph???c v???");
insert into bo_phan values(4, "Qu???n l??");

insert into nhan_vien
values 
  (1,'Nguy???n V??n An','1970-11-07',456231786,10000000,0901234121,'annguyen@gmail.com','295 Nguy???n T???t Th??nh, ???? N???ng',1,3,1),
  (2,'L?? V??n B??nh','1997-04-09',654231234,7000000,0934212314,'binhlv@gmail.com','22 Y??n B??i, ???? N???ng',1,2,2),
  (3,'H??? Th??? Y???n','1995-12-12',999231723,14000000,0412352315,'thiyen@gmail.com','K234/11 ??i???n Bi??n Ph???, Gia Lai',1,3,2),
  (4,'V?? C??ng To???n','1980-04-04',123231365,17000000,0374443232,'toan0404@gmail.com','77 Ho??ng Di???u, Qu???ng Tr???',1,4,4),
  (5,'Nguy???n B???nh Ph??t','1999-12-09',454363232,6000000,0902341231,'phatphat@gmail.com','43 Y??n B??i, ???? N???ng',2,1,1),
  (6,'Kh??c Nguy???n An Nghi','2000-11-08',964542311,7000000,0978653213,'annghi20@gmail.com','294 Nguy???n T???t Th??nh, ???? N???ng',2,2,3),
  (7,'Nguy???n H???u H??','1993-01-01',534323231,8000000,0941234553,'nhh0101@gmail.com','4 Nguy???n Ch?? Thanh, Hu???',2,3,2),
  (8,'Nguy???n H?? ????ng','1989-09-03',234414123,9000000,0642123111,'donghanguyen@gmail.com','111 H??ng V????ng, H?? N???i',2,4,4),
  (9,'T??ng Hoang','1982-09-03',256781231,6000000,0245144444,'hoangtong@gmail.com','213 H??m Nghi, ???? N???ng',2,4,4),
  (10,'Nguy???n C??ng ?????o','1994-01-08',755434343,8000000,0988767111,'nguyencongdao12@gmail.com','6 Ho?? Kh??nh, ?????ng Nai',2,3,2);

insert into loai_khach  
values 
  (1,'Diamond'),
  (2,'Platinium'),
  (3,'Gold'),
  (4,'Silver'),
  (5,'Member');
  
insert into khach_hang 
(ma_khach_hang,ho_ten,ngay_sinh,gioi_tinh,so_cmnd,so_dien_thoai,email,dia_chi,ma_loai_khach) 
values 
  (1,'Nguy???n Th??? H??o','1970-11-07',0,643431213,0945423362,'thihao07@gmail.com','23 Nguy???n Ho??ng, ???? N???ng',5),
  (2,'Ph???m Xu??n Di???u','1992-08-08',1,865342123,0954333333,'xuandieu92@gmail.com','K77/22 Th??i Phi??n, Qu???ng Tr???',3),
  (3,'Tr????ng ????nh Ngh???','1990-02-27',1,488645199,0373213122,'nghenhan2702@gmail.com','K323/12 ??ng ??ch Khi??m, Vinh',1),
  (4,'D????ng V??n Quan','1981-07-08',1,543432111,0490039241,'duongquan@gmail.com','K453/12 L?? L???i, ???? N???ng',1),
  (5,'Ho??ng Tr???n Nhi Nhi','1995-12-09',0,795453345,0312345678,'nhinhi123@gmail.com','224 L?? Th??i T???, Gia Lai',4),
  (6,'T??n N??? M???c Ch??u','2005-12-06',0,732434215,0988888844,'tonnuchau@gmail.com','37 Y??n Th???, ???? N???ng',4),
  (7,'Nguy???n M??? Kim','1984-04-08',0,856453123,0912345698,'kimcuong84@gmail.com','K123/45 L?? L???i, H??? Ch?? Minh',1),
  (8,'Nguy???n Th??? H??o','1999-04-08',0,965656433,0763212345,'haohao99@gmail.com','55 Nguy???n V??n Linh, Kon Tum',3),
  (9,'Tr???n ?????i Danh','1994-07-01',1,432341235,0643343433,'danhhai99@gmail.com','24 L?? Th?????ng Ki???t, Qu???ng Ng??i',1),
  (10,'Nguy???n T??m ?????c','1989-07-01',1,344343432,0987654321,'dactam@gmail.com','22 Ng?? Quy???n, ???? N???ng',2);
  
insert into kieu_thue 
values 
  (1,'year'),
  (2,'month'),
  (3,'day'),
  (4,'hour');
  
insert into loai_dich_vu 
values 
  (1,'Villa'),
  (2,'House'),
  (3,'Room');
  
insert into dich_vu 
  (ma_dich_vu,ten_dich_vu,dien_tich,chi_phi_thue,so_nguoi_toi_da,tieu_chuan_phong,mo_ta_tien_nghi_khac,dien_tich_ho_boi,so_tang,ma_kieu_thue,ma_loai_dich_vu) 
values 
  (1,'Villa Beach Front',25000,10000000,10,'vip','C?? h??? b??i','500','4',3,1),
  (2,'House Princess 01',14000,5000000,7,'vip','C?? th??m b???p n?????ng',null,'3',2,2),
  (3,'Room Twin 01',5000,1000000,2,'normal','C?? tivi',null,null,4,3),
  (4,'Villa No Beach Front',22000,9000000,8,'normal','C?? h??? b??i','300','3',3,1),
  (5,'House Princess 02',10000,4000000,5,'normal','C?? th??m b???p n?????ng',null,'2',3,2),
  (6,'Room Twin 02',3000,900000,2,'normal','C?? tivi',null,null,4,3);
  
insert into dich_vu_di_kem 
values 
  (1,'Karaoke',10000,'gi???','ti???n nghi, hi???n t???i'),
  (2,'Thu?? xe m??y',10000,'chi???c','h???ng 1 xe'),
  (3,'Thu?? xe ?????p',20000,'chi???c','t???t'),
  (4,'Buffet bu???i s??ng',15000,'su???t','?????y ????? ????? ??n, tr??ng mi???ng'),
  (5,'Buffet bu???i tr??a',90000,'su???t','?????y ????? ????? ??n, tr??ng mi???ng'),
  (6,'Buffet bu???i t???i',16000,'su???t','?????y ????? ????? ??n, tr??ng mi???ng');
  
insert into hop_dong 
values 
  (1,'2020-12-08','2020-12-08',0,3,1,3),
  (2,'2020-07-14','2020-07-21',200000,7,3,1),
  (3,'2021-03-15','2021-03-17',50000,3,4,2),
  (4,'2021-01-14','2021-01-18',100000,7,5,5),
  (5,'2021-07-14','2021-07-15',0,7,2,6),
  (6,'2021-06-01','2021-06-03',0,7,7,6),
  (7,'2021-09-02','2021-09-05',100000,7,4,4),
  (8,'2021-06-17','2021-06-18',150000,3,4,1),
  (9,'2020-11-19','2020-11-19',0,3,4,3),
  (10,'2021-04-12','2021-04-14',0,10,3,5),
  (11,'2021-04-25','2021-04-25',0,2,2,1),
  (12,'2021-05-25','2021-05-27',0,7,10,1);
  
insert into hop_dong_chi_tiet 
  (ma_hop_dong_chi_tiet,so_luong,ma_hop_dong,ma_dich_vu_di_kem) 
values
  (1,5,2,4),
  (2,8,2,5),
  (3,15,2,6),
  (4,1,3,1),
  (5,11,3,2),
  (6,1,1,3),
  (7,2,1,2),
  (8,2,12,2);
  
  -- C??u 2:
  
  select * from nhan_vien 
where SUBSTRING(ho_ten,1,1) = 'H' or SUBSTRING(ho_ten,1,1) = 'T' or SUBSTRING(ho_ten,1,1) = 'K' and  length(ho_ten) <= 15;
  
  
-- C??u 3:


select * from khach_hang
where (YEAR(CURDATE()) - YEAR(ngay_sinh)) >=18 and (YEAR(CURDATE()) - YEAR(ngay_sinh)) <=50 and dia_chi like "%???? N???ng%" or dia_chi like "%Qu???ng Tr???%";


-- C??u 4:

select k.ma_khach_hang, ho_ten, count(h.ma_khach_hang) as so_lan_dat_phong from hop_dong h, khach_hang k
where h.ma_khach_hang = k.ma_khach_hang and ma_loai_khach = 1 
group by ma_khach_hang 
order by count(h.ma_khach_hang) asc;

-- c??u 5: 

SELECT kh.ma_khach_hang, kh.ho_ten, hd.ma_hop_dong,
dv.ten_dich_vu, hd.ngay_lam_hop_dong, hd.ngay_ket_thuc,
dv.chi_phi_thue + hdct.so_luong* dvdk.gia AS TONGTIEN
FROM khach_hang kh 
INNER JOIN hop_dong hd on kh.ma_khach_hang = hd.ma_khach_hang 
INNER JOIN dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
INNER JOIN hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
INNER JOIN dich_vu_di_kem  dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
order by ma_khach_hang asc;

-- C??u 6:

Select distinct dv.ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, ten_loai_dich_vu 
from dich_vu dv  inner join loai_dich_vu ldv on ldv.ma_loai_dich_vu =
dv.ma_loai_dich_vu
where dv.ma_dich_vu not in (Select dv.ma_dich_vu 
from dich_vu dv inner join hop_dong hd on hd.ma_dich_vu = dv.ma_dich_vu
where Year(ngay_lam_hop_dong) = 2021 and (month(ngay_lam_hop_dong) = 1 or 
month(ngay_lam_hop_dong) = 2 or month(ngay_lam_hop_dong) = 3));

-- C??u 7: 

Select distinct dv.ma_dich_vu, ten_dich_vu, dien_tich, so_nguoi_toi_da, chi_phi_thue, ten_loai_dich_vu
from dich_vu dv 
inner join loai_dich_vu ldv on ldv.ma_loai_dich_vu = dv.ma_loai_dich_vu
inner join hop_dong hd on hd.ma_dich_vu = dv.ma_dich_vu
where year(ngay_lam_hop_dong) = 2020 and dv.ma_loai_dich_vu not in ( select dv.ma_dich_vu
from dich_vu dv inner join hop_dong hd on hd.ma_dich_vu = dv.ma_dich_vu
where year(ngay_lam_hop_dong) = 2021);

-- C??u 8:

select distinct ho_ten from khach_hang;

SELECT ho_ten , COUNT(*) so_nguoi FROM khach_hang GROUP BY ho_ten ;

-- C??u 9:

select month(ngay_lam_hop_dong) as thang, count(*) so_luong_khach_hang
from hop_dong
where year(ngay_lam_hop_dong) = 2021
group by thang;

-- C??u 10:

select 
hd.ma_hop_dong, hd.ngay_lam_hop_dong, hd.ngay_ket_thuc, hd.tien_dat_coc,
sum(hdct.so_luong) as so_luong_dich_vu_di_kem
from hop_dong hd
left join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
group by ma_hop_dong
order by ma_hop_dong asc
;

-- C??u 11:

select dvdk.ma_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem
from dich_vu_di_kem dvdk
inner join hop_dong_chi_tiet hdct on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
inner join hop_dong hd on hd.ma_hop_dong = hdct.ma_hop_dong
inner join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang
inner join loai_khach lk on lk.ma_loai_khach = kh.ma_loai_khach
where kh.dia_chi like "%Vinh%" or kh.dia_chi like "%Qu???ng Ng??i%" and lk.ten_loai_khach = 'Diamond' ;

-- C??u 12:

Select hd.ma_hop_dong, nv.ho_ten as ho_ten_nhan_vien, kh.ho_ten as ho_ten_khach_hang, kh.so_dien_thoai, ten_dich_vu, ifnull(sum(so_luong), 0) as so_luong_dich_vu_di_kem, tien_dat_coc
from dich_vu dv right join hop_dong hd on dv.ma_dich_vu = hd.ma_dich_vu
				left join hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
                left join dich_vu_di_kem dvdk on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
				inner join khach_hang kh on hd.ma_khach_hang = kh.ma_khach_hang
                inner join nhan_vien nv on hd.ma_nhan_vien = nv.ma_nhan_vien
where dv.ma_dich_vu in (select dv.ma_dich_vu from dich_vu dv inner join hop_dong hd on dv.ma_dich_vu = hd.ma_dich_vu
					where (year(ngay_lam_hop_dong)=2020 and month(ngay_lam_hop_dong) in ("10", "11", "12")))
and dv.ma_dich_vu not in (select dv.ma_dich_vu from dich_vu dv inner join hop_dong hd on dv.ma_dich_vu = hd.ma_dich_vu
					where (year(ngay_lam_hop_dong)=2021 and month(ngay_lam_hop_dong) in (1, 2, 3, 4, 5, 6)))
group by hd.ma_hop_dong, nv.ho_ten, kh.ho_ten, kh.so_dien_thoai, ten_dich_vu;

-- C??u 13:
Select dvdk.ma_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem, sum(hdct.so_luong) as so_luong_dich_vu_di_kem
from dich_vu_di_kem dvdk
inner join hop_dong_chi_tiet hdct on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
group by hdct.ma_dich_vu_di_kem
order by so_luong_dich_vu_di_kem desc
limit 2;

-- C??u 14:

Select  hdct.ma_hop_dong, ldv.ten_loai_dich_vu, dvdk.ten_dich_vu_di_kem,
 count(hdct.ma_dich_vu_di_kem) as so_lan_su_dung
from dich_vu_di_kem dvdk
inner join hop_dong_chi_tiet hdct on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
inner join hop_dong hd on hd.ma_hop_dong = hdct.ma_hop_dong
inner join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
inner join loai_dich_vu ldv on ldv.ma_loai_dich_vu = dv.ma_loai_dich_vu
group by hdct.ma_dich_vu_di_kem
having so_lan_su_dung = 1
order by hdct.ma_dich_vu_di_kem;

-- C??u 15: 

select distinct nv.ma_nhan_vien, nv.ho_ten, td.ten_trinh_do, bp.ten_bo_phan, nv.so_dien_thoai, nv.dia_chi
from nhan_vien nv
inner join bo_phan bp on bp.ma_bo_phan = nv.ma_bo_phan
inner join trinh_do td on td.ma_trinh_do = nv.ma_trinh_do
inner join hop_dong hd on hd.ma_nhan_vien = nv.ma_nhan_vien
group by hd.ma_nhan_vien
having count(hd.ma_nhan_vien) <=3;

-- C??u 16:

Delete nhan_vien, hop_dong
from nhan_vien inner join hop_dong  on nhan_vien.ma_nhan_vien = hop_dong.ma_nhan_vien
where (year(hop_dong.ngay_lam_hop_dong) != (2019, 2020, 2021)) ;

-- C??u 17:

Update khach_hang 
set ma_loai_khach=2, ma_loai_khach=1;

-- chua xong 

-- Cau 18
Delete from khach_hang where ma_khach_hang in (Select kh.ma_khach_hang
from khach_hang kh inner join hop_dong hd on kh.ma_khach_hang = hd.ma_khach_hang
where (year(ngay_lam_hop_dong)<2021));

-- Cau 20
Select ma_nhan_vien as id, ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi
from nhan_vien
union
select ma_khach_hang as id, ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi
from khach_hang
