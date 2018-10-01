--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crCT_JPB_COTRACTOR.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 18-04-2018 22:55:24 ( Fecha creación )
--
-- Descripción   : Creación de la tabla CT_JPB_COTRACTOR
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 18-04-2018    semillero2018_1.SAO414826
-- Modificación
--


PROMPT - Script  :  crCT_JPB_COTRACTOR.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Creating table CT_JPB_COTRACTOR

CREATE TABLE CT_JPB_COTRACTOR
(
     CONTRACTOR_ID NUMBER( 15 )     CONSTRAINT NN_CT_JPB_COTRACTOR_370602 NOT NULL,
     DESCRIPTION VARCHAR2( 100 ),
     IVA_SELF_RETAINER VARCHAR2( 1 ) DEFAULT 'N'     CONSTRAINT NN_CT_JPB_COTRACTOR_370604 NOT NULL)
    INITRANS 1
    MAXTRANS 255 LOGGING  TABLESPACE TSD_CONTRACTORS
    STORAGE (   INITIAL 8192
                NEXT 8192
                MINEXTENTS 1
                MAXEXTENTS UNLIMITED
                PCTINCREASE 0
                FREELISTS 1
                FREELIST GROUPS 1
                BUFFER_POOL DEFAULT);

PROMPT ... Adding Comments to table [CT_JPB_COTRACTOR]...
comment on table CT_JPB_COTRACTOR is 'Contratistas.';

PROMPT ... Adding Comments to columns of table  [CT_JPB_COTRACTOR]...
comment on column CT_JPB_COTRACTOR.CONTRACTOR_ID is 'Identificador del contratista.';
comment on column CT_JPB_COTRACTOR.DESCRIPTION is 'Descripción del contratista.';
comment on column CT_JPB_COTRACTOR.IVA_SELF_RETAINER is 'Autorretenedor de IVA (Y/N).';


