--
-- Propiedad intelectual de OPEN International Systems Ltda
-- Archivo       : ins_GE_ENTITY_ATTRIBUTES_372741_20180507.sql
-- Autor         : semillero2018_1
-- Fecha         : 07-05-2018 16:31:42
--
-- Descripcion   : Inserting  Data ins_GE_ENTITY_ATTRIBUTES_372741_20180507.sql
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 07-05-2018    semillero2018_1 SAO414826
-- Creaci�n
--

PROMPT - Script : ins_GE_ENTITY_ATTRIBUTES_372741_20180507.sql
PROMPT
PROMPT - Inserting  Data ins_GE_ENTITY_ATTRIBUTES_372741_20180507.sql


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
 372741, 10084, NULL, 1,
 NULL, NULL, 'STRATUM_ID', 4,
 'N', 'N', 'Estrato','Y',
 4, '', 0, 0,
'Identificador del estrato del cliente.', 'STRATUM_ID', 'G', 'N', 
'', '', '', 
'', '')
/
commit
/