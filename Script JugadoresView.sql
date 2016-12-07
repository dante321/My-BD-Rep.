--------------------------------------------------------
-- Archivo creado  - miércoles-diciembre-07-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View JUGADORES_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HR"."JUGADORES_VIEW" ("NOMBRE", "EQUIPO_ID", "SALARIO") AS 
  SELECT 
    JUGADORES.NOMBRE,    
    EQUIPO.EQUIPO_ID,
    JUGADORES.SALARIO
FROM
    JUGADORES,
    EQUIPO
WHERE 
    JUGADORES.SALARIO>3000;
