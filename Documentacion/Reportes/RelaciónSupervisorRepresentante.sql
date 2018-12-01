-- Reporte Relación Supervisor - Representante

select
    rep_nom "Representante", sup_nom "Supervisor", cant_rep "total Reps"
from
	(
		select id_usuario sup_id, nombre sup_nom 
		from usuario 
		where id_rol = 2
	)sups,
	(
		select id_usuario rep_id, nombre rep_nom, id_supervisor sup_id 
		from usuario 
		where id_rol = 3
	)reps,
	(
		select 
			id_supervisor sup_id, count(*) cant_rep
		from usuario
		where id_supervisor is not null
		group by id_supervisor

	) reps_x_sub
where
    reps.sup_id = sups.sup_id
and reps.sup_id = reps_x_sub.sup_id
