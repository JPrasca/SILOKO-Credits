--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crCK_OR_JPB_ASSI_IS_ENABLED.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 01-05-2018 13:24:20 ( Fecha creación )
--
-- Descripción   : Creación de check Constraint sobre la tabla OR_JPB_ASSIGNED_QUOTA
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 01-05-2018    semillero2018_1.SAO414826
-- Modificación
--

PROMPT - Script  :  crCK_OR_JPB_ASSI_IS_ENABLED.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Adding Check Constraint CK_OR_JPB_ASSI_IS_ENABLED to table OR_JPB_ASSIGNED_QUOTA

ALTER TABLE OR_JPB_ASSIGNED_QUOTA ADD
CONSTRAINT CK_OR_JPB_ASSI_IS_ENABLED CHECK ( IS_ENABLED IN ('Y', 'N') )
/
