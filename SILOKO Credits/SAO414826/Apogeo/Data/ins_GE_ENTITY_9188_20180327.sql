--
-- Propiedad intelectual de OPEN International Systems Ltda
-- Archivo       : ins_GE_ENTITY_9188_20180327.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 27-03-2018 16:51:22 ( Fecha creación )
--
-- Descripcion   : Inserting  Data ins_GE_ENTITY_9188_20180327.sql
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 27-03-2018    semillero2018_1.SAO414826
-- Modificación
--

PROMPT - Script : ins_GE_ENTITY_9188_20180327.sql
PROMPT
PROMPT - Inserting  Data ins_GE_ENTITY_9188_20180327.sql

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
	9188, 
	21, 
	NULL, 
	'JP_TEST',
	99, 
	'Y', 
	'Tabla de prueba', 
	'Tabla de prueba',
	'N', 
	'TSD_FACTURA', 
	SYSDATE, 
	SYSDATE,
	'N',
	'Y',
	'Tabla de prueba'
)
/
commit
/
