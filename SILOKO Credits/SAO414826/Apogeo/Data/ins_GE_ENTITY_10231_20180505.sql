--
-- Propiedad intelectual de OPEN International Systems Ltda
-- Archivo       : ins_GE_ENTITY_10231_20180505.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 05-05-2018 15:37:32 ( Fecha creación )
--
-- Descripcion   : Inserting  Data ins_GE_ENTITY_10231_20180505.sql
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 05-05-2018    semillero2018_1.SAO414826
-- Modificación
--

PROMPT - Script : ins_GE_ENTITY_10231_20180505.sql
PROMPT
PROMPT - Inserting  Data ins_GE_ENTITY_10231_20180505.sql

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
	10231, 
	4, 
	NULL, 
	'OR_STRATUM_BY_CITY',
	99, 
	'Y', 
	'Estratos por ciudad.', 
	'Estratos de la ciudad',
	'N', 
	'TSD_ORDERS', 
	SYSDATE, 
	SYSDATE,
	'N',
	'Y',
	'Estrato de la ciudad'
)
/
commit
/
