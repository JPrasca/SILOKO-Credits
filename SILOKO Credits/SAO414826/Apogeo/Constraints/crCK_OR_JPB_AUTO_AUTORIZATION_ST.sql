--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crCK_OR_JPB_AUTO_AUTORIZATION_ST.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 30-04-2018 18:33:05 ( Fecha creación )
--
-- Descripción   : Creación de check Constraint sobre la tabla OR_JPB_AUTORIZATION
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 30-04-2018    semillero2018_1.SAO414826
-- Modificación
--

PROMPT - Script  :  crCK_OR_JPB_AUTO_AUTORIZATION_ST.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Adding Check Constraint CK_OR_JPB_AUTO_AUTORIZATION_ST to table OR_JPB_AUTORIZATION

ALTER TABLE OR_JPB_AUTORIZATION ADD
CONSTRAINT CK_OR_JPB_AUTO_AUTORIZATION_ST CHECK ( AUTORIZATION_STATUS IN ('Y','N') )
/
