--
-- Propiedad intelectual de OPEN International Systems Ltda
-- Archivo       : ins_GE_ENTITY_10029_20180501.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 01-05-2018 15:47:04 ( Fecha creaci�n )
--
-- Descripcion   : Inserting  Data ins_GE_ENTITY_10029_20180501.sql
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 01-05-2018    semillero2018_1.SAO414826
-- Modificaci�n
--

PROMPT - Script : ins_GE_ENTITY_10029_20180501.sql
PROMPT
PROMPT - Inserting  Data ins_GE_ENTITY_10029_20180501.sql

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
	10029, 
	4, 
	NULL, 
	'OR_JPB_COUNTRY',
	99, 
	'Y', 
	'Pa�ses en los que est� presente SILOKO.', 
	'Pa�ses',
	'N', 
	'TSD_ORDERS', 
	SYSDATE, 
	SYSDATE,
	'N',
	'Y',
	'Pa�s'
)
/
commit
/
