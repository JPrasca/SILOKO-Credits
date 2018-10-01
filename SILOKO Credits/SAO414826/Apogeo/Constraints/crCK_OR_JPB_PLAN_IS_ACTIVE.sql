--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crCK_OR_JPB_PLAN_IS_ACTIVE.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 30-04-2018 23:09:03 ( Fecha creación )
--
-- Descripción   : Creación de check Constraint sobre la tabla OR_JPB_PLAN
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 30-04-2018    semillero2018_1.SAO414826
-- Modificación
--

PROMPT - Script  :  crCK_OR_JPB_PLAN_IS_ACTIVE.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Adding Check Constraint CK_OR_JPB_PLAN_IS_ACTIVE to table OR_JPB_PLAN

ALTER TABLE OR_JPB_PLAN ADD
CONSTRAINT CK_OR_JPB_PLAN_IS_ACTIVE CHECK ( IS_ACTIVE IN ('Y', 'N') )
/
