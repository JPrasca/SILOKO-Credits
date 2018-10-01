--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crFK_CT_JPB_CONT_CT_JPB_COTR01.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 18-04-2018 13:49:45 ( Fecha creación )
--
-- Descripción   : Creación de llave foránea tabla CT_JPB_CONTRACT
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 18-04-2018    semillero2018_1.SAO414826
-- Modificación
--

PROMPT - Script  :  crFK_CT_JPB_CONT_CT_JPB_COTR01.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Adding foreing key FK_CT_JPB_CONT_CT_JPB_COTR01 to table CT_JPB_CONTRACT

ALTER TABLE CT_JPB_CONTRACT ADD
    (
        CONSTRAINT FK_CT_JPB_CONT_CT_JPB_COTR01
        FOREIGN KEY (CONTRACTOR_ID)
        REFERENCES CT_JPB_COTRACTOR ("CONTRACTOR_ID")
    )
/
