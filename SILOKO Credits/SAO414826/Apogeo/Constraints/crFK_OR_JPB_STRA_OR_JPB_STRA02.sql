--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crFK_OR_JPB_STRA_OR_JPB_STRA02.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 05-05-2018 20:52:07 ( Fecha creación )
--
-- Descripción   : Creación de llave foránea tabla OR_JPB_STRAT_BY_CITY
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 05-05-2018    semillero2018_1.SAO414826
-- Modificación
--

PROMPT - Script  :  crFK_OR_JPB_STRA_OR_JPB_STRA02.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Adding foreing key FK_OR_JPB_STRA_OR_JPB_STRA02 to table OR_JPB_STRAT_BY_CITY

ALTER TABLE OR_JPB_STRAT_BY_CITY ADD
    (
        CONSTRAINT FK_OR_JPB_STRA_OR_JPB_STRA02
        FOREIGN KEY (STRATUM_ID)
        REFERENCES OR_JPB_STRATUM ("STRATUM_ID")
    )
/
