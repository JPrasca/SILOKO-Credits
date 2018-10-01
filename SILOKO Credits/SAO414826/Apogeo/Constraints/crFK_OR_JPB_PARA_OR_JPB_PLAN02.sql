--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crFK_OR_JPB_PARA_OR_JPB_PLAN02.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 05-05-2018 16:11:56 ( Fecha creación )
--
-- Descripción   : Creación de llave foránea tabla OR_JPB_PARAMETERS
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 05-05-2018    semillero2018_1.SAO414826
-- Modificación
--

PROMPT - Script  :  crFK_OR_JPB_PARA_OR_JPB_PLAN02.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Adding foreing key FK_OR_JPB_PARA_OR_JPB_PLAN02 to table OR_JPB_PARAMETERS

ALTER TABLE OR_JPB_PARAMETERS ADD
    (
        CONSTRAINT FK_OR_JPB_PARA_OR_JPB_PLAN02
        FOREIGN KEY (PLAN_TYPE_ID)
        REFERENCES OR_JPB_PLAN_TYPE ("PLAN_TYPE_ID")
    )
/
