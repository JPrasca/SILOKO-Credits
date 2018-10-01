--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crUX_CT_JPB_CONTRACT01.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 18-04-2018 22:54:25 ( Fecha creación )
--
-- Descripción   : Creación índice sobre tabla CT_JPB_CONTRACT
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 18-04-2018    semillero2018_1.SAO414826
-- Modificación
--

PROMPT - Script  :  crUX_CT_JPB_CONTRACT01.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Creating Index UX_CT_JPB_CONTRACT01 on CT_JPB_CONTRACT

ALTER SESSION SET SORT_AREA_SIZE = 52428800 ;

CREATE UNIQUE INDEX UX_CT_JPB_CONTRACT01 ON CT_JPB_CONTRACT
(
    UPPER(DESCRIPTION) 
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

ALTER INDEX UX_CT_JPB_CONTRACT01 NOPARALLEL
/
ALTER INDEX UX_CT_JPB_CONTRACT01 LOGGING
/
