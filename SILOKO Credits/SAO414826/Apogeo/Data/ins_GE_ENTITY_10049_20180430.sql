--
-- Propiedad intelectual de OPEN International Systems Ltda
-- Archivo       : ins_GE_ENTITY_10049_20180430.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 30-04-2018 22:32:40 ( Fecha creaci�n )
--
-- Descripcion   : Inserting  Data ins_GE_ENTITY_10049_20180430.sql
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 30-04-2018    semillero2018_1.SAO414826
-- Modificaci�n
--

PROMPT - Script : ins_GE_ENTITY_10049_20180430.sql
PROMPT
PROMPT - Inserting  Data ins_GE_ENTITY_10049_20180430.sql

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
	10049, 
	4, 
	NULL, 
	'OR_JPB_AUTORIZATION',
	99, 
	'Y', 
	'C�digos de autorizaci�n para retirar un producto.', 
	'C�digos de autorizaci�n',
	'N', 
	'TSD_ORDERS', 
	SYSDATE, 
	SYSDATE,
	'N',
	'Y',
	'C�digo de autorizaci�n'
)
/
commit
/
