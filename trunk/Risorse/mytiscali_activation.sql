/*Query per: 
-	Attivare la email su mytiscali
-	Recuperare il PIN di un dato cliente
*/


/*Recuperare le email esistenti per evitare collisioni*/
select t.*, t.rowid from TIS_MYTISCALI_AUTH t
where t.email like '%rlah%'
--for update
order by 1 desc


-- Recupero del PIN da settare nella maschera di registrazione
select attrib_46 AS PIN, row_id, created, created_by, last_upd, last_upd_by, attrib_45 from siebel.s_org_ext_x 
where row_id in (select a.row_id from siebel.s_org_ext a
where a.ou_num = '400467342'
)
