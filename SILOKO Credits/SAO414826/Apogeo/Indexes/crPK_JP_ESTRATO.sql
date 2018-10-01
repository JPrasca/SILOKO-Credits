--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crPK_JP_ESTRATO.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 15-04-2018 21:36:55 ( Fecha creación )
--
-- Descripción   : Creación de la llave primaria tabla JP_ESTRATO
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 15-04-2018   semillero2018_1.SAO414826
-- Modificación
--

PROMPT - Script  :  crPK_JP_ESTRATO.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Adding primary key to table JP_ESTRATO

ALTER TABLE JP_ESTRATO ADD
    (
        CONSTRAINT PK_JP_ESTRATO
        PRIMARY KEY ("ESTRCODI" )
        USING INDEX
        PCTFREE  5 
        TABLESPACE TSI_SUSCRIPC
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
