--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crFK_CT_JPB_TASK_CT_JPB_CONT01.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 19-04-2018 08:11:17 ( Fecha creación )
--
-- Descripción   : Creación de llave foránea tabla CT_JPB_TASK_CONTTYPE
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 19-04-2018    semillero2018_1.SAO414826
-- Modificación
--

PROMPT - Script  :  crFK_CT_JPB_TASK_CT_JPB_CONT01.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Adding foreing key FK_CT_JPB_TASK_CT_JPB_CONT01 to table CT_JPB_TASK_CONTTYPE

ALTER TABLE CT_JPB_TASK_CONTTYPE ADD
    (
        CONSTRAINT FK_CT_JPB_TASK_CT_JPB_CONT01
        FOREIGN KEY (CONTRACT_ID)
        REFERENCES CT_JPB_CONTRACT ("CONTRACT_ID")
    )
/
