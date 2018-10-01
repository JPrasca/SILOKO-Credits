--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crPK_CT_JPB_COTRACTOR.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 18-04-2018 14:51:59 ( Fecha creación )
--
-- Descripción   : Creación de la llave primaria tabla CT_JPB_COTRACTOR
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 18-04-2018   semillero2018_1.SAO414826
-- Modificación
--

PROMPT - Script  :  crPK_CT_JPB_COTRACTOR.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Adding primary key to table CT_JPB_COTRACTOR

ALTER TABLE CT_JPB_COTRACTOR ADD
    (
        CONSTRAINT PK_CT_JPB_COTRACTOR
        PRIMARY KEY ("CONTRACTOR_ID" )
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
