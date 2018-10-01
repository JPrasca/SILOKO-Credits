--
-- Propiedad intelectual de OPEN International Systems Ltda
-- Archivo       : ins_GE_ENTITY_ATTRIBUTES_370219_20180327.sql
-- Autor         : semillero2018_1
-- Fecha         : 27-03-2018 16:40:07
--
-- Descripcion   : Inserting  Data ins_GE_ENTITY_ATTRIBUTES_370219_20180327.sql
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 27-03-2018    semillero2018_1 SAO414826
-- Creación
--

PROMPT - Script : ins_GE_ENTITY_ATTRIBUTES_370219_20180327.sql
PROMPT
PROMPT - Inserting  Data ins_GE_ENTITY_ATTRIBUTES_370219_20180327.sql


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
 370219, 9161, NULL, 2,
 NULL, NULL, 'ORDEN_D', 2,
 'N', 'Y', 'Desc. de la orden','Y',
 0, '', 0, 50,
'Id de la orden', 'ORDEN_D', 'G', 'N', 
'', '', 'Esto tiene cualquier vaina de la orden', 
'', '')
/
commit
/