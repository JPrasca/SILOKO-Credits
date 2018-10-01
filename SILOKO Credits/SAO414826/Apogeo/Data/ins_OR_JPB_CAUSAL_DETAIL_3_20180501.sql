--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : ins_OR_JPB_CAUSAL_DETAIL_3_20180501.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 01-05-2018 19:50:08 ( Fecha creación )
--
-- Descripcion   : Inserting  Data ins_OR_JPB_CAUSAL_DETAIL_3_20180501.sql
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 01-05-2018    semillero2018_1.SAO414826
-- Creación
--

PROMPT - Script : ins_OR_JPB_CAUSAL_DETAIL_3_20180501.sql
PROMPT
Prompt Inserting Register [3] in OR_JPB_CAUSAL_DETAIL

INSERT INTO OR_JPB_CAUSAL_DETAIL
(
    CAUSAL_DETAIL_ID,
    DESCRIPTION
)
VALUES
(
    3,
    'El usuario [%s1] no tiene cupo asignado.'
)
/

COMMIT
/
