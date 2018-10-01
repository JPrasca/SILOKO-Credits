--
-- Propiedad intelectual de OPEN International Systems Ltda
-- Archivo       : ins_GE_ENTITY_10084_20180504.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 04-05-2018 15:48:42 ( Fecha creación )
--
-- Descripcion   : Inserting  Data ins_GE_ENTITY_10084_20180504.sql
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 04-05-2018    semillero2018_1.SAO414826
-- Modificación
--

PROMPT - Script : ins_GE_ENTITY_10084_20180504.sql
PROMPT
PROMPT - Inserting  Data ins_GE_ENTITY_10084_20180504.sql

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
	10084, 
	4, 
	NULL, 
	'OR_JPB_CUSTOMER',
	99, 
	'Y', 
	'Clientes de SILOKO.', 
	'Clientes SILOKO',
	'N', 
	'TSD_ORDERS', 
	SYSDATE, 
	SYSDATE,
	'N',
	'Y',
	'Cliente SILOKO'
)
/
commit
/
