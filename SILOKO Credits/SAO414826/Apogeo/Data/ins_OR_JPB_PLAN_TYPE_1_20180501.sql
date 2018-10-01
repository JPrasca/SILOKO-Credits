--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : ins_OR_JPB_PLAN_TYPE_1_20180501.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 01-05-2018 15:43:15 ( Fecha creación )
--
-- Descripcion   : Inserting  Data ins_OR_JPB_PLAN_TYPE_1_20180501.sql
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 01-05-2018    semillero2018_1.SAO414826
-- Creación
--

PROMPT - Script : ins_OR_JPB_PLAN_TYPE_1_20180501.sql
PROMPT
Prompt Inserting Register [1] in OR_JPB_PLAN_TYPE

INSERT INTO OR_JPB_PLAN_TYPE
(
    PLAN_TYPE_ID,
    DESCRIPTION
)
VALUES
(
    1,
    'SILOKO Basic'
)
/

COMMIT
/
