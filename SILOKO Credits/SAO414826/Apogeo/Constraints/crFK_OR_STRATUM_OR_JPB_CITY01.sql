--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crFK_OR_STRATUM_OR_JPB_CITY01.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 05-05-2018 15:41:07 ( Fecha creación )
--
-- Descripción   : Creación de llave foránea tabla OR_STRATUM_BY_CITY
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 05-05-2018    semillero2018_1.SAO414826
-- Modificación
--

PROMPT - Script  :  crFK_OR_STRATUM_OR_JPB_CITY01.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Adding foreing key FK_OR_STRATUM_OR_JPB_CITY01 to table OR_STRATUM_BY_CITY

ALTER TABLE OR_STRATUM_BY_CITY ADD
    (
        CONSTRAINT FK_OR_STRATUM_OR_JPB_CITY01
        FOREIGN KEY (CITY_ID)
        REFERENCES OR_JPB_CITY ("CITY_ID")
    )
/
