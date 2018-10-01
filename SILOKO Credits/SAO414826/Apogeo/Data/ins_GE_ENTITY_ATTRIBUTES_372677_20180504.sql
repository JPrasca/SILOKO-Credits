--
-- Propiedad intelectual de OPEN International Systems Ltda
-- Archivo       : ins_GE_ENTITY_ATTRIBUTES_372677_20180504.sql
-- Autor         : semillero2018_1
-- Fecha         : 04-05-2018 15:48:42
--
-- Descripcion   : Inserting  Data ins_GE_ENTITY_ATTRIBUTES_372677_20180504.sql
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 04-05-2018    semillero2018_1 SAO414826
-- Creación
--

PROMPT - Script : ins_GE_ENTITY_ATTRIBUTES_372677_20180504.sql
PROMPT
PROMPT - Inserting  Data ins_GE_ENTITY_ATTRIBUTES_372677_20180504.sql


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
 372677, 10084, NULL, 1,
 NULL, NULL, 'CUSTOMER_ID', 1,
 'Y', 'N', 'ID','Y',
 15, '', 0, 0,
'Identificador del cliente SILOKO.', 'CUSTOMER_ID', 'G', 'N', 
'', '', '', 
'', '')
/
commit
/