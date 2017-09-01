select t.*, t.rowid from TIS_MYTISCALI_AUTH t
where t.email like '%rlah%'
--for update
order by 1 desc


-- PIN
select attrib_46 AS PIN, row_id, created, created_by, last_upd, last_upd_by, attrib_45 from siebel.s_org_ext_x 
where row_id in (select a.row_id from siebel.s_org_ext a
where a.ou_num = '400467342'
)
