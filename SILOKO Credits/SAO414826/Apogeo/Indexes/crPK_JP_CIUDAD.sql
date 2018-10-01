--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crPK_JP_CIUDAD.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 15-04-2018 19:51:50 ( Fecha creación )
--
-- Descripción   : Creación de la llave primaria tabla JP_CIUDAD
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 15-04-2018   semillero2018_1.SAO414826
-- Modificación
--

PROMPT - Script  :  crPK_JP_CIUDAD.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Adding primary key to table JP_CIUDAD

ALTER TABLE JP_CIUDAD ADD
    (
        CONSTRAINT PK_JP_CIUDAD
        PRIMARY KEY ("CIUDCODI" )
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
