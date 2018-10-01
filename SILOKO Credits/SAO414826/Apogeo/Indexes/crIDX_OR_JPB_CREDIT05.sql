--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crIDX_OR_JPB_CREDIT05.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 02-05-2018 08:13:54 ( Fecha creaci�n )
--
-- Descripci�n   : Creaci�n �ndice sobre tabla OR_JPB_CREDIT
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 02-05-2018    semillero2018_1.SAO414826
-- Modificaci�n
--

PROMPT - Script  :  crIDX_OR_JPB_CREDIT05.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Creating Index IDX_OR_JPB_CREDIT05 on OR_JPB_CREDIT

ALTER SESSION SET SORT_AREA_SIZE = 52428800 ;

CREATE INDEX IDX_OR_JPB_CREDIT05 ON OR_JPB_CREDIT
(
    TRUNC(CREDIT_DATE) ASC
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

ALTER INDEX IDX_OR_JPB_CREDIT05 NOPARALLEL
/
ALTER INDEX IDX_OR_JPB_CREDIT05 LOGGING
/
