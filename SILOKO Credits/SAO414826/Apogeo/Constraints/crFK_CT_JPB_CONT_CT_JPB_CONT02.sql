--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crFK_CT_JPB_CONT_CT_JPB_CONT02.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 18-04-2018 13:49:45 ( Fecha creaci�n )
--
-- Descripci�n   : Creaci�n de llave for�nea tabla CT_JPB_CONTRACT
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 18-04-2018    semillero2018_1.SAO414826
-- Modificaci�n
--

PROMPT - Script  :  crFK_CT_JPB_CONT_CT_JPB_CONT02.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Adding foreing key FK_CT_JPB_CONT_CT_JPB_CONT02 to table CT_JPB_CONTRACT

ALTER TABLE CT_JPB_CONTRACT ADD
    (
        CONSTRAINT FK_CT_JPB_CONT_CT_JPB_CONT02
        FOREIGN KEY (CONTRACT_TYPE_ID)
        REFERENCES CT_JPB_CONTRACT_TYPE ("CONTRACT_TYPE_ID")
    )
/
