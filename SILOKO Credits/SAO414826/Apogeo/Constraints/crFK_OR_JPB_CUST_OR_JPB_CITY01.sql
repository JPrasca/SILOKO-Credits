--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crFK_OR_JPB_CUST_OR_JPB_CITY01.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 07-05-2018 16:32:55 ( Fecha creaci�n )
--
-- Descripci�n   : Creaci�n de llave for�nea tabla OR_JPB_CUSTOMER
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 07-05-2018    semillero2018_1.SAO414826
-- Modificaci�n
--

PROMPT - Script  :  crFK_OR_JPB_CUST_OR_JPB_CITY01.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Adding foreing key FK_OR_JPB_CUST_OR_JPB_CITY01 to table OR_JPB_CUSTOMER

ALTER TABLE OR_JPB_CUSTOMER ADD
    (
        CONSTRAINT FK_OR_JPB_CUST_OR_JPB_CITY01
        FOREIGN KEY (CITY_ID)
        REFERENCES OR_JPB_CITY ("CITY_ID")
    )
/
