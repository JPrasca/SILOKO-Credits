--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crCK_OR_JPB_CREDIT_IS_APPROVED.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 01-05-2018 14:41:27 ( Fecha creación )
--
-- Descripción   : Creación de check Constraint sobre la tabla OR_JPB_CREDIT
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 01-05-2018    semillero2018_1.SAO414826
-- Modificación
--

PROMPT - Script  :  crCK_OR_JPB_CREDIT_IS_APPROVED.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Adding Check Constraint CK_OR_JPB_CREDIT_IS_APPROVED to table OR_JPB_CREDIT

ALTER TABLE OR_JPB_CREDIT ADD
CONSTRAINT CK_OR_JPB_CREDIT_IS_APPROVED CHECK ( IS_APPROVED IN ('Y', 'N') )
/
