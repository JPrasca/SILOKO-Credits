--
-- Propiedad intelectual de OPEN International Systems Ltda
-- Archivo       : ins_GE_ENTITY_9255_20180415.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 15-04-2018 21:30:26 ( Fecha creación )
--
-- Descripcion   : Inserting  Data ins_GE_ENTITY_9255_20180415.sql
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 15-04-2018    semillero2018_1.SAO414826
-- Modificación
--

PROMPT - Script : ins_GE_ENTITY_9255_20180415.sql
PROMPT
PROMPT - Inserting  Data ins_GE_ENTITY_9255_20180415.sql

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
	9255, 
	21, 
	NULL, 
	'JP_PARAMETR',
	99, 
	'Y', 
	'Reglas de asignación de cupo', 
	'Reglas de asignación',
	'N', 
	'TSD_SUSCRIPC', 
	SYSDATE, 
	SYSDATE,
	'N',
	'Y',
	'Regla'
)
/
commit
/
