--
-- Propiedad intelectual de OPEN International Systems Ltda
-- Archivo       : ins_GE_ENTITY_10118_20180502.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 02-05-2018 16:35:27 ( Fecha creaci�n )
--
-- Descripcion   : Inserting  Data ins_GE_ENTITY_10118_20180502.sql
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 02-05-2018    semillero2018_1.SAO414826
-- Modificaci�n
--

PROMPT - Script : ins_GE_ENTITY_10118_20180502.sql
PROMPT
PROMPT - Inserting  Data ins_GE_ENTITY_10118_20180502.sql

INSERT INTO GE_ENTITY
(
	ENTITY_ID, 
	MODULE_ID, 
	SELEC_TYPE_OBJECT_ID, 
	NAME_,
	INS_SEQ, 
	IN_PERSIST, 
	DESCRIPTION, 
	DISPLAY_NAME,
	LOAD_CARTRIDGE, 
	TABLESPACE, 
	CREATION_DATE, 
	LAST_MODIFY_DATE,
	STATUS,
	ALLOWED_FULL_SCAN,
	SINGULAR_DISPLAY
)
VALUES
(
	10118, 
	4, 
	NULL, 
	'OR_JPB_PARAMETERS',
	99, 
	'Y', 
	'Par�metros de asignaci�n cupo.', 
	'Grupos de par�metros de asignaci�n',
	'N', 
	'TSD_ORDERS', 
	SYSDATE, 
	SYSDATE,
	'N',
	'Y',
	'Grupo de par�metros de asignaci�n'
)
/
commit
/
