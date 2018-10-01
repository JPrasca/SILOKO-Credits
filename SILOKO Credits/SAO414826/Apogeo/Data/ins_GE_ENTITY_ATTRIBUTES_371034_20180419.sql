--
-- Propiedad intelectual de OPEN International Systems Ltda
-- Archivo       : ins_GE_ENTITY_ATTRIBUTES_371034_20180419.sql
-- Autor         : semillero2018_1
-- Fecha         : 19-04-2018 07:58:46
--
-- Descripcion   : Inserting  Data ins_GE_ENTITY_ATTRIBUTES_371034_20180419.sql
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 19-04-2018    semillero2018_1 SAO414826
-- Creaci�n
--

PROMPT - Script : ins_GE_ENTITY_ATTRIBUTES_371034_20180419.sql
PROMPT
PROMPT - Inserting  Data ins_GE_ENTITY_ATTRIBUTES_371034_20180419.sql


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
 371034, 9387, NULL, 1,
 NULL, NULL, 'TASK_TYPE_ID', 5,
 'N', 'Y', 'Tipo de trabajo','Y',
 10, '', 0, 0,
'Identificador del tipo de trabajo.', 'TASK_TYPE_ID', 'G', 'N', 
'', '', '', 
'', '')
/
commit
/