--
-- Propiedad intelectual de OPEN International Systems Ltda
-- Archivo       : ins_GE_ENTITY_ATTRIBUTES_370603_20180418.sql
-- Autor         : semillero2018_1
-- Fecha         : 18-04-2018 22:55:24
--
-- Descripcion   : Inserting  Data ins_GE_ENTITY_ATTRIBUTES_370603_20180418.sql
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 18-04-2018    semillero2018_1 SAO414826
-- Creación
--

PROMPT - Script : ins_GE_ENTITY_ATTRIBUTES_370603_20180418.sql
PROMPT
PROMPT - Inserting  Data ins_GE_ENTITY_ATTRIBUTES_370603_20180418.sql


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
 370603, 9299, NULL, 2,
 NULL, NULL, 'DESCRIPTION', 2,
 'N', 'Y', 'Contratista','Y',
 0, '', 0, 100,
'Descripción del contratista.', 'DESCRIPTION', 'G', 'Y', 
'', '', '', 
'', '')
/
commit
/