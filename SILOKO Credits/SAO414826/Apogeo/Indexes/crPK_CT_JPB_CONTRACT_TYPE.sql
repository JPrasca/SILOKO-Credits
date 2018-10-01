--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crPK_CT_JPB_CONTRACT_TYPE.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 18-04-2018 14:39:21 ( Fecha creación )
--
-- Descripción   : Creación de la llave primaria tabla CT_JPB_CONTRACT_TYPE
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 18-04-2018   semillero2018_1.SAO414826
-- Modificación
--

PROMPT - Script  :  crPK_CT_JPB_CONTRACT_TYPE.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Adding primary key to table CT_JPB_CONTRACT_TYPE

ALTER TABLE CT_JPB_CONTRACT_TYPE ADD
    (
        CONSTRAINT PK_CT_JPB_CONTRACT_TYPE
        PRIMARY KEY ("CONTRACT_TYPE_ID" )
        USING INDEX
        PCTFREE  5 
        TABLESPACE TSI_CONTRACTORS
        STORAGE (   INITIAL 8192
                    NEXT 8192
                    MINEXTENTS  1  
                    MAXEXTENTS  UNLIMITED
                    PCTINCREASE 0
                    FREELISTS 1
                    FREELIST GROUPS 1 
                    BUFFER_POOL DEFAULT
                )
    );
