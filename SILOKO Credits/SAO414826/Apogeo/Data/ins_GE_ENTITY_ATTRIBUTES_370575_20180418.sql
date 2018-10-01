--
-- Propiedad intelectual de OPEN International Systems Ltda
-- Archivo       : ins_GE_ENTITY_ATTRIBUTES_370575_20180418.sql
-- Autor         : semillero2018_1
-- Fecha         : 18-04-2018 22:56:20
--
-- Descripcion   : Inserting  Data ins_GE_ENTITY_ATTRIBUTES_370575_20180418.sql
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 18-04-2018    semillero2018_1 SAO414826
-- Creaci�n
--

PROMPT - Script : ins_GE_ENTITY_ATTRIBUTES_370575_20180418.sql
PROMPT
PROMPT - Inserting  Data ins_GE_ENTITY_ATTRIBUTES_370575_20180418.sql


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
 370575, 9289, NULL, 2,
 NULL, NULL, 'DESCRIPTION', 2,
 'N', 'N', 'Tipo de contrato','Y',
 0, '', 0, 100,
'Descripci�n del tipo de contrato.', 'DESCRIPTION', 'G', 'Y', 
'', '', '', 
'', '')
/
commit
/