--------------------------------------------------------
-- Archivo creado  - martes-enero-24-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table AUMENTO_SALARIO
--------------------------------------------------------

  CREATE TABLE "HR"."AUMENTO_SALARIO" 
   (	"ID_AUMENTO" NUMBER, 
	"FECHA_AUMENTO" DATE, 
	"EMPLOYEE_ID" NUMBER(6,0), 
	"CANTIDAD_AUMENTO" NUMBER(8,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "HR"."AUMENTO_SALARIO"."EMPLOYEE_ID" IS 'FK';
REM INSERTING into HR.AUMENTO_SALARIO
SET DEFINE OFF;
Insert into HR.AUMENTO_SALARIO (ID_AUMENTO,FECHA_AUMENTO,EMPLOYEE_ID,CANTIDAD_AUMENTO) values ('1',to_date('24/01/17','DD/MM/RR'),'200','5280');
Insert into HR.AUMENTO_SALARIO (ID_AUMENTO,FECHA_AUMENTO,EMPLOYEE_ID,CANTIDAD_AUMENTO) values ('2',to_date('24/01/17','DD/MM/RR'),'200','6336');
Insert into HR.AUMENTO_SALARIO (ID_AUMENTO,FECHA_AUMENTO,EMPLOYEE_ID,CANTIDAD_AUMENTO) values ('3',to_date('24/01/17','DD/MM/RR'),'114','13200');
Insert into HR.AUMENTO_SALARIO (ID_AUMENTO,FECHA_AUMENTO,EMPLOYEE_ID,CANTIDAD_AUMENTO) values ('4',to_date('24/01/17','DD/MM/RR'),'115','3720');
Insert into HR.AUMENTO_SALARIO (ID_AUMENTO,FECHA_AUMENTO,EMPLOYEE_ID,CANTIDAD_AUMENTO) values ('5',to_date('24/01/17','DD/MM/RR'),'116','3480');
Insert into HR.AUMENTO_SALARIO (ID_AUMENTO,FECHA_AUMENTO,EMPLOYEE_ID,CANTIDAD_AUMENTO) values ('6',to_date('24/01/17','DD/MM/RR'),'117','3360');
Insert into HR.AUMENTO_SALARIO (ID_AUMENTO,FECHA_AUMENTO,EMPLOYEE_ID,CANTIDAD_AUMENTO) values ('7',to_date('24/01/17','DD/MM/RR'),'118','3120');
Insert into HR.AUMENTO_SALARIO (ID_AUMENTO,FECHA_AUMENTO,EMPLOYEE_ID,CANTIDAD_AUMENTO) values ('8',to_date('24/01/17','DD/MM/RR'),'119','3000');
--------------------------------------------------------
--  DDL for Index TABLE1_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."TABLE1_PK" ON "HR"."AUMENTO_SALARIO" ("ID_AUMENTO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger AUMENTO_SALARIO_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."AUMENTO_SALARIO_TRG" 
BEFORE INSERT ON AUMENTO_SALARIO 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID_AUMENTO IS NULL THEN
      SELECT AUMENTO_SALARIO_SEQ.NEXTVAL INTO :NEW.ID_AUMENTO FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "HR"."AUMENTO_SALARIO_TRG" ENABLE;
--------------------------------------------------------
--  Constraints for Table AUMENTO_SALARIO
--------------------------------------------------------

  ALTER TABLE "HR"."AUMENTO_SALARIO" ADD CONSTRAINT "TABLE1_PK" PRIMARY KEY ("ID_AUMENTO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."AUMENTO_SALARIO" MODIFY ("ID_AUMENTO" NOT NULL ENABLE);
