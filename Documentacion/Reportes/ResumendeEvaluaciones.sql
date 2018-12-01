-- Reporte Resumen de Evaluaciones
Select
    eval.ev_id "Id Eval",
    ev_fecha "Fecha Evaluación",
    rep_nom "Representante",
    resp_cumple "Cumple Punto",
    resp_reclam "Está Reclamada",
    resp_comen "Comentario",
    pto_desc "Descripción",
    puntuacion "Puntuación"
 from
(
    select  id_evaluacion ev_id, id_punto_evaluacion ptoev_id,
        Case
            When  cumple_punto = 1 Then 'Si'
            When  cumple_punto = 0 Then 'No'
        End resp_cumple,
        Case
            When  es_reclamada = 1 Then 'Si'
            When  es_reclamada = 0 Then 'No'
        End resp_reclam,
            comentario resp_comen
    from respuesta
) resp,
(
    select  id_punto_evaluacion ptoev_id,
            id_plantilla plant_id, descripcion pto_desc
    from punto_evaluacion
) pto_ev,
(
    select  id_evaluacion ev_id, fecha_creada ev_fecha,
            id_plantilla plant_id, id_representante rep_id
    from evaluacion
)eval,
(
    select id_usuario rep_id, nombre rep_nom from usuario where id_rol = 3
) usr,
(
    select a.ev_id, (cant_resp_cumplidas * 100) / cant_resp  puntuacion
	from
		(
			select count(*) cant_resp, id_evaluacion ev_id from respuesta group by id_evaluacion
		) a,
		(
		select count(*) cant_resp_cumplidas, id_evaluacion ev_id from respuesta where cumple_punto = 1 group by id_evaluacion
		) b
	where a.ev_id = b.ev_id
) eval_punt
where
    resp.ptoev_id = pto_ev.ptoev_id
and eval.ev_id = resp.ev_id
and usr.rep_id = eval.rep_id
and eval_punt.ev_id = eval.ev_id
