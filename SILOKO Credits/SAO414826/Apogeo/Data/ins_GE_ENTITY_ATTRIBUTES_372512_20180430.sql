--
-- Propiedad intelectual de OPEN International Systems Ltda
-- Archivo       : ins_GE_ENTITY_ATTRIBUTES_372512_20180430.sql
-- Autor         : semillero2018_1
-- Fecha         : 30-04-2018 22:32:40
--
-- Descripcion   : Inserting  Data ins_GE_ENTITY_ATTRIBUTES_372512_20180430.sql
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 30-04-2018    semillero2018_1 SAO414826
-- Creación
--

PROMPT - Script : ins_GE_ENTITY_ATTRIBUTES_372512_20180430.sql
PROMPT
PROMPT - Inserting  Data ins_GE_ENTITY_ATTRIBUTES_372512_20180430.sql


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
 372512, 10049, NULL, 2,
 NULL, NULL, 'AUTORIZATION_STATUS', 2,
 'N', 'N', '¿Activo?','Y',
 0, '', 0, 100,
'¿Estado activo?  (Y/N).', 'AUTORIZATION_STATUS', 'G', 'Y', 
'', '', '', 
'', '')
/
commit
/