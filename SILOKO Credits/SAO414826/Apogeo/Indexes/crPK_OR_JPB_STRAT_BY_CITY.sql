--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crPK_OR_JPB_STRAT_BY_CITY.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 05-05-2018 20:33:03 ( Fecha creación )
--
-- Descripción   : Creación de la llave primaria tabla OR_JPB_STRAT_BY_CITY
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 05-05-2018   semillero2018_1.SAO414826
-- Modificación
--

PROMPT - Script  :  crPK_OR_JPB_STRAT_BY_CITY.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Adding primary key to table OR_JPB_STRAT_BY_CITY

ALTER TABLE OR_JPB_STRAT_BY_CITY ADD
    (
        CONSTRAINT PK_OR_JPB_STRAT_BY_CITY
        PRIMARY KEY ("STRAT_BY_CITY_ID" )
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
