--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : ins_OR_JPB_COUNTRY_5_20180501.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 01-05-2018 16:11:36 ( Fecha creación )
--
-- Descripcion   : Inserting  Data ins_OR_JPB_COUNTRY_5_20180501.sql
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 01-05-2018    semillero2018_1.SAO414826
-- Creación
--

PROMPT - Script : ins_OR_JPB_COUNTRY_5_20180501.sql
PROMPT
Prompt Inserting Register [5] in OR_JPB_COUNTRY

INSERT INTO OR_JPB_COUNTRY
(
    COUNTRY_ID,
    DESCRIPTION
)
VALUES
(
    5,
    'COLOMBIA'
)
/

COMMIT
/
