--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crIDX_CT_JPB_TASK_CONTTYPE02.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 19-04-2018 07:59:03 ( Fecha creación )
--
-- Descripción   : Creación índice sobre tabla CT_JPB_TASK_CONTTYPE
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 19-04-2018    semillero2018_1.SAO414826
-- Modificación
--

PROMPT - Script  :  crIDX_CT_JPB_TASK_CONTTYPE02.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Creating Index IDX_CT_JPB_TASK_CONTTYPE02 on CT_JPB_TASK_CONTTYPE

ALTER SESSION SET SORT_AREA_SIZE = 52428800 ;

CREATE INDEX IDX_CT_JPB_TASK_CONTTYPE02 ON CT_JPB_TASK_CONTTYPE
(
    "CONTRACT_ID" 
)
    PCTFREE  5
    INITRANS 2
    MAXTRANS 255 
        TABLESPACE TSI_CONTRACTORS
    STORAGE (   INITIAL     8192
                NEXT        8192
                MINEXTENTS  1  
                MAXEXTENTS  UNLIMITED
                PCTINCREASE 0
                FREELISTS  1 
                FREELIST GROUPS 1
                BUFFER_POOL DEFAULT ) PARALLEL ( DEGREE 4 ) NOLOGGING
/

ALTER INDEX IDX_CT_JPB_TASK_CONTTYPE02 NOPARALLEL
/
ALTER INDEX IDX_CT_JPB_TASK_CONTTYPE02 LOGGING
/
