--
-- Propiedad intelectual de OPEN International Systems Ltda
-- Archivo       : ins_GE_ENTITY_ATTRIBUTES_372825_20180507.sql
-- Autor         : semillero2018_1
-- Fecha         : 07-05-2018 12:46:45
--
-- Descripcion   : Inserting  Data ins_GE_ENTITY_ATTRIBUTES_372825_20180507.sql
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 07-05-2018    semillero2018_1 SAO414826
-- Creaci�n
--

PROMPT - Script : ins_GE_ENTITY_ATTRIBUTES_372825_20180507.sql
PROMPT
PROMPT - Inserting  Data ins_GE_ENTITY_ATTRIBUTES_372825_20180507.sql


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
 372825, 10115, NULL, 2,
 NULL, NULL, 'IS_APPROVED', 6,
 'N', 'N', '�Aprobado?','Y',
 0, 'N', 0, 100,
'�Aprobado? (Y/N).', 'IS_APPROVED', 'G', 'N', 
'', '', '', 
'', '')
/
commit
/