select id_plantilla "Plantilla No. ", id_punto_evaluacion "No.", descripcion "Punto" from punto_evaluacion
where
    id_plantilla = (select id_plantilla
                        from plantilla
                        order by   fecha_creada
                        desc fetch first row only)