--
-- Propiedad intelectual de OPEN International Systems Ltda
-- Archivo       : ins_GE_ENTITY_ATTRIBUTES_372852_20180502.sql
-- Autor         : semillero2018_1
-- Fecha         : 02-05-2018 16:35:27
--
-- Descripcion   : Inserting  Data ins_GE_ENTITY_ATTRIBUTES_372852_20180502.sql
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 02-05-2018    semillero2018_1 SAO414826
-- Creaci�n
--

PROMPT - Script : ins_GE_ENTITY_ATTRIBUTES_372852_20180502.sql
PROMPT
PROMPT - Inserting  Data ins_GE_ENTITY_ATTRIBUTES_372852_20180502.sql


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
 372852, 10118, NULL, 1,
 NULL, NULL, 'CITY_ID', 3,
 'N', 'N', 'Ciudad','Y',
 4, '', 0, 0,
'Ciudad donde aplica el cupo.', 'CITY_ID', 'G', 'N', 
'', '', '', 
'', '')
/
commit
/