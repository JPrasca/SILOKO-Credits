--
-- Propiedad intelectual de OPEN International Systems Ltda
-- Archivo       : ins_GE_ENTITY_ATTRIBUTES_370263_20180327.sql
-- Autor         : semillero2018_1
-- Fecha         : 27-03-2018 16:59:12
--
-- Descripcion   : Inserting  Data ins_GE_ENTITY_ATTRIBUTES_370263_20180327.sql
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 27-03-2018    semillero2018_1 SAO414826
-- Creación
--

PROMPT - Script : ins_GE_ENTITY_ATTRIBUTES_370263_20180327.sql
PROMPT
PROMPT - Inserting  Data ins_GE_ENTITY_ATTRIBUTES_370263_20180327.sql


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
 370263, 9190, NULL, 2,
 NULL, NULL, 'OTHER_D', 2,
 'N', 'Y', 'Otra desc.','Y',
 0, 'Otra desc.', 0, 20,
'Otra desc.', 'OTHER_D', 'G', 'N', 
'', '', '', 
'', '')
/
commit
/