--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crIDX_OR_JPB_ASSIGNED_QUOTA01.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 01-05-2018 13:24:20 ( Fecha creación )
--
-- Descripción   : Creación índice sobre tabla OR_JPB_ASSIGNED_QUOTA
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 01-05-2018    semillero2018_1.SAO414826
-- Modificación
--

PROMPT - Script  :  crIDX_OR_JPB_ASSIGNED_QUOTA01.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Creating Index IDX_OR_JPB_ASSIGNED_QUOTA01 on OR_JPB_ASSIGNED_QUOTA

ALTER SESSION SET SORT_AREA_SIZE = 52428800 ;

CREATE INDEX IDX_OR_JPB_ASSIGNED_QUOTA01 ON OR_JPB_ASSIGNED_QUOTA
(
    "QUOTA_ID" ASC, "IS_ENABLED" ASC
)
    PCTFREE  5
    INITRANS 2
    MAXTRANS 255 
        TABLESPACE TSI_ORDERS
    STORAGE (   INITIAL     8192
                NEXT        8192
                MINEXTENTS  1  
                MAXEXTENTS  UNLIMITED
                PCTINCREASE 0
                FREELISTS  1 
                FREELIST GROUPS 1
                BUFFER_POOL DEFAULT ) PARALLEL ( DEGREE 4 ) NOLOGGING
/

ALTER INDEX IDX_OR_JPB_ASSIGNED_QUOTA01 NOPARALLEL
/
ALTER INDEX IDX_OR_JPB_ASSIGNED_QUOTA01 LOGGING
/
