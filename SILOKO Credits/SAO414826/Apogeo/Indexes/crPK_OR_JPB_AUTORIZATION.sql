--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crPK_OR_JPB_AUTORIZATION.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 30-04-2018 18:33:04 ( Fecha creación )
--
-- Descripción   : Creación de la llave primaria tabla OR_JPB_AUTORIZATION
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 30-04-2018   semillero2018_1.SAO414826
-- Modificación
--

PROMPT - Script  :  crPK_OR_JPB_AUTORIZATION.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Adding primary key to table OR_JPB_AUTORIZATION

ALTER TABLE OR_JPB_AUTORIZATION ADD
    (
        CONSTRAINT PK_OR_JPB_AUTORIZATION
        PRIMARY KEY ("AUTORIZATION_ID" )
        USING INDEX
        PCTFREE  5 
        TABLESPACE TSI_ORDERS
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
