--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crFK_OR_JPB_CITY_OR_JPB_COUN01.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 30-04-2018 17:42:51 ( Fecha creaci�n )
--
-- Descripci�n   : Creaci�n de llave for�nea tabla OR_JPB_CITY
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 30-04-2018    semillero2018_1.SAO414826
-- Modificaci�n
--

PROMPT - Script  :  crFK_OR_JPB_CITY_OR_JPB_COUN01.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Adding foreing key FK_OR_JPB_CITY_OR_JPB_COUN01 to table OR_JPB_CITY

ALTER TABLE OR_JPB_CITY ADD
    (
        CONSTRAINT FK_OR_JPB_CITY_OR_JPB_COUN01
        FOREIGN KEY (COUNTRY_ID)
        REFERENCES OR_JPB_COUNTRY ("COUNTRY_ID")
    )
/
