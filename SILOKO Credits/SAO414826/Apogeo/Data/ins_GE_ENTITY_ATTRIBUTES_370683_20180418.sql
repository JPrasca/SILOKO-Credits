--
-- Propiedad intelectual de OPEN International Systems Ltda
-- Archivo       : ins_GE_ENTITY_ATTRIBUTES_370683_20180418.sql
-- Autor         : semillero2018_1
-- Fecha         : 18-04-2018 22:54:02
--
-- Descripcion   : Inserting  Data ins_GE_ENTITY_ATTRIBUTES_370683_20180418.sql
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 18-04-2018    semillero2018_1 SAO414826
-- Creación
--

PROMPT - Script : ins_GE_ENTITY_ATTRIBUTES_370683_20180418.sql
PROMPT
PROMPT - Inserting  Data ins_GE_ENTITY_ATTRIBUTES_370683_20180418.sql


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
 370683, 9318, NULL, 1,
 NULL, NULL, 'OVERREACHING_PERCENT', 4,
 'N', 'Y', '% Sobreejecución','Y',
 2, '0', 0, 0,
'Porcentaje de sobreejecución.', 'OVERREACHING_PERCENT', 'G', 'N', 
'', '', '', 
'', '')
/
commit
/