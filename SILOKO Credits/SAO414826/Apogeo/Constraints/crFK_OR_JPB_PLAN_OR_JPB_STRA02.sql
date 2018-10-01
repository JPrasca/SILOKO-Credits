--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crFK_OR_JPB_PLAN_OR_JPB_STRA02.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 07-05-2018 17:36:01 ( Fecha creación )
--
-- Descripción   : Creación de llave foránea tabla OR_JPB_PLAN
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 07-05-2018    semillero2018_1.SAO414826
-- Modificación
--

PROMPT - Script  :  crFK_OR_JPB_PLAN_OR_JPB_STRA02.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Adding foreing key FK_OR_JPB_PLAN_OR_JPB_STRA02 to table OR_JPB_PLAN

ALTER TABLE OR_JPB_PLAN ADD
    (
        CONSTRAINT FK_OR_JPB_PLAN_OR_JPB_STRA02
        FOREIGN KEY (STRATUM_ID)
        REFERENCES OR_JPB_STRATUM ("STRATUM_ID")
    )
/
