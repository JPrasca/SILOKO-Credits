--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crUX_OR_JPB_CUSTOMER03.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 02-05-2018 09:19:25 ( Fecha creaci�n )
--
-- Descripci�n   : Creaci�n �ndice sobre tabla OR_JPB_CUSTOMER
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 02-05-2018    semillero2018_1.SAO414826
-- Modificaci�n
--

PROMPT - Script  :  crUX_OR_JPB_CUSTOMER03.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Creating Index UX_OR_JPB_CUSTOMER03 on OR_JPB_CUSTOMER

ALTER SESSION SET SORT_AREA_SIZE = 52428800 ;

CREATE UNIQUE INDEX UX_OR_JPB_CUSTOMER03 ON OR_JPB_CUSTOMER
(
    "DOCUMENT" ASC
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

ALTER INDEX UX_OR_JPB_CUSTOMER03 NOPARALLEL
/
ALTER INDEX UX_OR_JPB_CUSTOMER03 LOGGING
/
