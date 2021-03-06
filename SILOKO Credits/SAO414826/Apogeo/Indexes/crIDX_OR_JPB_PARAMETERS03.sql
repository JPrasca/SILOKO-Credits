--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crIDX_OR_JPB_PARAMETERS03.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 01-05-2018 15:24:07 ( Fecha creaci�n )
--
-- Descripci�n   : Creaci�n �ndice sobre tabla OR_JPB_PARAMETERS
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 01-05-2018    semillero2018_1.SAO414826
-- Modificaci�n
--

PROMPT - Script  :  crIDX_OR_JPB_PARAMETERS03.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Creating Index IDX_OR_JPB_PARAMETERS03 on OR_JPB_PARAMETERS

ALTER SESSION SET SORT_AREA_SIZE = 52428800 ;

CREATE INDEX IDX_OR_JPB_PARAMETERS03 ON OR_JPB_PARAMETERS
(
    "PLAN_TYPE_ID" ASC
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

ALTER INDEX IDX_OR_JPB_PARAMETERS03 NOPARALLEL
/
ALTER INDEX IDX_OR_JPB_PARAMETERS03 LOGGING
/
