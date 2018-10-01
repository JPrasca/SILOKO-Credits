--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crPK_JP_TEST.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 27-03-2018 16:51:24 ( Fecha creación )
--
-- Descripción   : Creación de la llave primaria tabla JP_TEST
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 27-03-2018   semillero2018_1.SAO414826
-- Modificación
--

PROMPT - Script  :  crPK_JP_TEST.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Adding primary key to table JP_TEST

ALTER TABLE JP_TEST ADD
    (
        CONSTRAINT PK_JP_TEST
        PRIMARY KEY ("TEST_ID" )
        USING INDEX
        PCTFREE  5 
        TABLESPACE TSI_FACTURA
        STORAGE (   INITIAL 8192
                    NEXT 8192
                    MINEXTENTS  1  
                    MAXEXTENTS  UNLIMITED
                    PCTINCREASE 0
                    FREELISTS 1
                    FREELIST GROUPS 1 
                    BUFFER_POOL DEFAULT
                )
    );
