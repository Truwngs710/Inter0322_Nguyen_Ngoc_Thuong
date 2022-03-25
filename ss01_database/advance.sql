use Furama;
-- drop view:

drop view nhan_vien_v;

drop procedure sp_them_moi_hop_dong;

-- Cau 21:

CREATE VIEW nhan_vien_v AS
SELECT nv.ma_nhan_vien,	nv.ho_ten, nv.ngay_sinh, nv.so_cmnd, nv.luong,
nv.so_dien_thoai, nv.email, nv.dia_chi,	nv.ma_vi_tri, nv.ma_trinh_do,	nv.ma_bo_phan
FROM nhan_vien nv
inner join hop_dong hd on hd.ma_nhan_vien = nv.ma_nhan_vien
where nv.dia_chi like "%Hải Châu%" and hd.ngay_lam_hop_dong like "%2019-12-12%";

select * from nhan_vien_v;

-- Cau 22: 

Update nhan_vien_v
set dia_chi="Liên Chiểu";

-- Câu 23:
delimiter //
Create procedure sp_xoa_khach_hang(mkh varchar(10))
begin 
SET FOREIGN_KEY_CHECKS=0;
delete
from khach_hang 
where ma_khach_hang = mkh;
SET FOREIGN_KEY_CHECKS=1;
end;
// delimiter ;

call sp_xoa_khach_hang(2);

-- cau 24:

drop procedure sp_them_moi_hop_dong;


delimiter $$
DROP PROCEDURE IF EXISTS `sp_them_moi_hop_dong`$$
Create procedure sp_them_moi_hop_dong( in mhd int,
  nlhd datetime,
  nkt datetime,
  tdc double,
  mnv int,
  mkh int,
  mdv int)
begin 
insert into hop_dong 
(ma_hop_dong,ngay_lam_hop_dong,ngay_ket_thuc,tien_dat_coc,ma_nhan_vien,ma_khach_hang,ma_dich_vu)
values (mhd,nlhd,nkt,tdc,mnv,mkh,mdv);
end
$$ delimiter ;

call sp_them_moi_hop_dong(32,'2020-11-24','2020-12-25',0,3,1,5);


DELIMITER $$
DROP PROCEDURE IF EXISTS `sp_them_moi_hop_dong`$$
CREATE PROCEDURE sp_them_moi_hop_dong (IN ma_hop_dong_in int, ngay_lam_hop_dong_in datetime, ngay_ket_thuc_in datetime, tien_dat_coc_in double,ma_nhan_vien_in int,ma_khach_hang_in int,ma_dich_vu_in int) 
BEGIN 
INSERT INTO hop_dong (ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, ma_nhan_vien, ma_khach_hang, ma_dich_vu ) 
VALUES (ma_hop_dong_in, ngay_lam_hop_dong_in, ngay_ket_thuc_in, tien_dat_coc_in, ma_nhan_vien_in, ma_khach_hang_in, ma_dich_vu_in );
END $$
DELIMITER ;

call sp_them_moi_hop_dong(31,'2021-10-10','2021-10-11',50,5,1,5);

-- cau 25:
drop trigger tr_xoa_hop_dong;
delimiter $$
create trigger tr_xoa_hop_dong
before delete
-- before/after insert/update/delete
on hop_dong for each row
begin
    	SIGNAL SQLSTATE '02000' SET MESSAGE_TEXT = '...';


end$$
 delimiter ;

delete from hop_dong
where ma_hop_dong =24

