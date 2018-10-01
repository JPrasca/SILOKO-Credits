--
-- Propiedad intelectual de OPEN International Systems Ltda
-- Archivo       : ins_GE_ENTITY_ATTRIBUTES_370553_20180415.sql
-- Autor         : semillero2018_1
-- Fecha         : 15-04-2018 21:31:11
--
-- Descripcion   : Inserting  Data ins_GE_ENTITY_ATTRIBUTES_370553_20180415.sql
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 15-04-2018    semillero2018_1 SAO414826
-- Creaci�n
--

PROMPT - Script : ins_GE_ENTITY_ATTRIBUTES_370553_20180415.sql
PROMPT
PROMPT - Inserting  Data ins_GE_ENTITY_ATTRIBUTES_370553_20180415.sql


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
 370553, 9280, NULL, 2,
 NULL, NULL, 'CIUDNOMB', 2,
 'N', 'Y', 'Nombre de ciudad','Y',
 0, '', 0, 60,
'Nombre de ciudad', 'CIUDNOMB', 'G', 'N', 
'', '', '', 
'', '')
/
commit
/