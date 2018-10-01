--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crIX_JP_CIUDAD01.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 15-04-2018 19:52:52 ( Fecha creación )
--
-- Descripción   : Creación índice sobre tabla JP_CIUDAD
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 15-04-2018    semillero2018_1.SAO414826
-- Modificación
--

PROMPT - Script  :  crIX_JP_CIUDAD01.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Creating Index IX_JP_CIUDAD01 on JP_CIUDAD

ALTER SESSION SET SORT_AREA_SIZE = 52428800 ;

CREATE INDEX IX_JP_CIUDAD01 ON JP_CIUDAD
(
    "CIUDPAIS" 
)
    PCTFREE  5
    INITRANS 2
    MAXTRANS 255 
        TABLESPACE TSI_SUSCRIPC
    STORAGE (   INITIAL     8192
                NEXT        8192
                MINEXTENTS  1  
                MAXEXTENTS  UNLIMITED
                PCTINCREASE 0
                FREELISTS  1 
                FREELIST GROUPS 1
                BUFFER_POOL DEFAULT ) PARALLEL ( DEGREE 4 ) NOLOGGING
/

ALTER INDEX IX_JP_CIUDAD01 NOPARALLEL
/
ALTER INDEX IX_JP_CIUDAD01 LOGGING
/
