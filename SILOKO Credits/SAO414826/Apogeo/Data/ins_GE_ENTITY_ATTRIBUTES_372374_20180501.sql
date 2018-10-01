--
-- Propiedad intelectual de OPEN International Systems Ltda
-- Archivo       : ins_GE_ENTITY_ATTRIBUTES_372374_20180501.sql
-- Autor         : semillero2018_1
-- Fecha         : 01-05-2018 15:47:53
--
-- Descripcion   : Inserting  Data ins_GE_ENTITY_ATTRIBUTES_372374_20180501.sql
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 01-05-2018    semillero2018_1 SAO414826
-- Creaci�n
--

PROMPT - Script : ins_GE_ENTITY_ATTRIBUTES_372374_20180501.sql
PROMPT
PROMPT - Inserting  Data ins_GE_ENTITY_ATTRIBUTES_372374_20180501.sql


INSERT INTO GE_ENTITY_ATTRIBUTES
(
 ENTITY_ATTRIBUTE_ID, ENTITY_ID, REFERENCE,  ATTRIBUTE_TYPE_ID,
 INIT_EXPRESSION_ID, VALID_EXPRESSION_ID, TECHNICAL_NAME, SECUENCE_, 
 KEY_, IS_NULL, DISPLAY_NAME, VIEWER_DISPLAY, 
 PRECISION,DEFAULT_VALUE, SCALE, LENGTH, 
 COMMENT_, TAG_ELEMENT, STATUS, IS_DESCRIPTION
,HELP,HINT,TOOLTIP
,SINGULAR_UNIT, PLURAL_UNIT
)
values
(
 372374, 10019, NULL, 2,
 NULL, NULL, 'DESCRIPTION', 2,
 'N', 'N', 'Ciudad','Y',
 0, '', 0, 100,
'Ciudad.', 'DESCRIPTION', 'G', 'N', 
'', '', '', 
'', '')
/
commit
/