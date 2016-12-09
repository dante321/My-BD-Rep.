--------------------------------------------------------
-- Archivo creado  - viernes-diciembre-09-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table FASES
--------------------------------------------------------

  CREATE TABLE "HR"."FASES" 
   (	"FASE_ID" NUMBER, 
	"NOMBRE" VARCHAR2(30 BYTE), 
	"ESTADO" VARCHAR2(20 BYTE), 
	"RECURSOS_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "HR"."FASES"."FASE_ID" IS 'IDENTIFICADOR DE FASE';
   COMMENT ON COLUMN "HR"."FASES"."NOMBRE" IS 'NOMBRE DE FASE ACTUAL';
   COMMENT ON COLUMN "HR"."FASES"."ESTADO" IS 'ESTADO DE FASE';
   COMMENT ON COLUMN "HR"."FASES"."RECURSOS_ID" IS 'IDENTIFICADOR DE RECURSO PRINCIPAL';
REM INSERTING into HR.FASES
SET DEFINE OFF;
Insert into HR.FASES (FASE_ID,NOMBRE,ESTADO,RECURSOS_ID) values ('1','ARQUITECTURA','ACTIVO','1');
Insert into HR.FASES (FASE_ID,NOMBRE,ESTADO,RECURSOS_ID) values ('2','MODELACION','INACTIVO','2');
Insert into HR.FASES (FASE_ID,NOMBRE,ESTADO,RECURSOS_ID) values ('3','IMPLEMENTACION','ACTIVO','4');
Insert into HR.FASES (FASE_ID,NOMBRE,ESTADO,RECURSOS_ID) values ('4','FINALIZADO','ACTIVO','1');
--------------------------------------------------------
--  DDL for Index FASES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."FASES_PK" ON "HR"."FASES" ("FASE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table FASES
--------------------------------------------------------

  ALTER TABLE "HR"."FASES" ADD CONSTRAINT "FASES_PK" PRIMARY KEY ("FASE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."FASES" MODIFY ("FASE_ID" NOT NULL ENABLE);
