--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crFK_CT_JPB_TASK_CT_JPB_CONT03.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 19-04-2018 08:11:18 ( Fecha creaci�n )
--
-- Descripci�n   : Creaci�n de llave for�nea tabla CT_JPB_TASK_CONTTYPE
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 19-04-2018    semillero2018_1.SAO414826
-- Modificaci�n
--

PROMPT - Script  :  crFK_CT_JPB_TASK_CT_JPB_CONT03.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Adding foreing key FK_CT_JPB_TASK_CT_JPB_CONT03 to table CT_JPB_TASK_CONTTYPE

ALTER TABLE CT_JPB_TASK_CONTTYPE ADD
    (
        CONSTRAINT FK_CT_JPB_TASK_CT_JPB_CONT03
        FOREIGN KEY (CONTRACT_TYPE_ID)
        REFERENCES CT_JPB_CONTRACT_TYPE ("CONTRACT_TYPE_ID")
    )
/
