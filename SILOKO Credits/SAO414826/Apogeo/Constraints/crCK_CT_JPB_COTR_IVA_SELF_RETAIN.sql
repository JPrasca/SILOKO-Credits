--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crCK_CT_JPB_COTR_IVA_SELF_RETAIN.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 18-04-2018 13:17:30 ( Fecha creación )
--
-- Descripción   : Creación de check Constraint sobre la tabla CT_JPB_COTRACTOR
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 18-04-2018    semillero2018_1.SAO414826
-- Modificación
--

PROMPT - Script  :  crCK_CT_JPB_COTR_IVA_SELF_RETAIN.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Adding Check Constraint CK_CT_JPB_COTR_IVA_SELF_RETAIN to table CT_JPB_COTRACTOR

ALTER TABLE CT_JPB_COTRACTOR ADD
CONSTRAINT CK_CT_JPB_COTR_IVA_SELF_RETAIN CHECK ( IVA_SELF_RETAINER IN ('Y','N') )
/
