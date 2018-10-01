--
-- Propiedad intelectual de OPEN International Systems Ltda
-- Archivo       : ins_GE_ENTITY_ATTRIBUTES_373072_20180502.sql
-- Autor         : semillero2018_1
-- Fecha         : 02-05-2018 08:47:43
--
-- Descripcion   : Inserting  Data ins_GE_ENTITY_ATTRIBUTES_373072_20180502.sql
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 02-05-2018    semillero2018_1 SAO414826
-- Creación
--

PROMPT - Script : ins_GE_ENTITY_ATTRIBUTES_373072_20180502.sql
PROMPT
PROMPT - Inserting  Data ins_GE_ENTITY_ATTRIBUTES_373072_20180502.sql


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
 373072, 10115, NULL, 1,
 NULL, NULL, 'CAUSAL_DETAIL_ID', 8,
 'N', 'Y', 'Detalle causal','Y',
 15, '', 0, 0,
'Detalle causal.', 'CAUSAL_DETAIL_ID', 'G', 'N', 
'', '', '', 
'', '')
/
commit
/