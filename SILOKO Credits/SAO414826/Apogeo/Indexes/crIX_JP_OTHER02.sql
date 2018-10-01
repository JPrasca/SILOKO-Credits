--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crIX_JP_OTHER02.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 27-03-2018 17:00:09 ( Fecha creación )
--
-- Descripción   : Creación índice sobre tabla JP_OTHER
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 27-03-2018    semillero2018_1.SAO414826
-- Modificación
--

PROMPT - Script  :  crIX_JP_OTHER02.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Creating Index IX_JP_OTHER02 on JP_OTHER

ALTER SESSION SET SORT_AREA_SIZE = 52428800 ;

CREATE INDEX IX_JP_OTHER02 ON JP_OTHER
(
    "OTHER_N" ASC
)
    PCTFREE  5
    INITRANS 2
    MAXTRANS 255 
        TABLESPACE TSI_FACTURA
    STORAGE (   INITIAL     8192
                NEXT        8192
                MINEXTENTS  1  
                MAXEXTENTS  UNLIMITED
                PCTINCREASE 0
                FREELISTS  1 
                FREELIST GROUPS 1
                BUFFER_POOL DEFAULT ) PARALLEL ( DEGREE 4 ) NOLOGGING
/

ALTER INDEX IX_JP_OTHER02 NOPARALLEL
/
ALTER INDEX IX_JP_OTHER02 LOGGING
/
