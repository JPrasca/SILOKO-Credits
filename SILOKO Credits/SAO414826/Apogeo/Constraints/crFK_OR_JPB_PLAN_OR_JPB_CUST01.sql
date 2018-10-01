--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crFK_OR_JPB_PLAN_OR_JPB_CUST01.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 01-05-2018 11:46:55 ( Fecha creación )
--
-- Descripción   : Creación de llave foránea tabla OR_JPB_PLAN
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 01-05-2018    semillero2018_1.SAO414826
-- Modificación
--

PROMPT - Script  :  crFK_OR_JPB_PLAN_OR_JPB_CUST01.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Adding foreing key FK_OR_JPB_PLAN_OR_JPB_CUST01 to table OR_JPB_PLAN

ALTER TABLE OR_JPB_PLAN ADD
    (
        CONSTRAINT FK_OR_JPB_PLAN_OR_JPB_CUST01
        FOREIGN KEY (CUSTOMER_ID)
        REFERENCES OR_JPB_CUSTOMER ("CUSTOMER_ID")
    )
/
