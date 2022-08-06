USE [Okul]


--ilgili doneme ait tüm bilgileri getiren fonksiyon:

ALTER function [dbo].[fn_hazır](@uid tinyint)
returns table
as
return(select
* from dbo.OgretmenDers where Donem_Id
=@uid)




--cagiralim:
select * from dbo.fn_hazır(1)




--where clause kontrolü:
select * from dbo.OgretmenDers as od
where od.Donem_Id=1



