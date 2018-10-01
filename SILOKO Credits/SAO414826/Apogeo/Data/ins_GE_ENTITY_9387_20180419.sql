--
-- Propiedad intelectual de OPEN International Systems Ltda
-- Archivo       : ins_GE_ENTITY_9387_20180419.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 19-04-2018 07:58:46 ( Fecha creación )
--
-- Descripcion   : Inserting  Data ins_GE_ENTITY_9387_20180419.sql
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 19-04-2018    semillero2018_1.SAO414826
-- Modificación
--

PROMPT - Script : ins_GE_ENTITY_9387_20180419.sql
PROMPT
PROMPT - Inserting  Data ins_GE_ENTITY_9387_20180419.sql

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
	9387, 
	92, 
	NULL, 
	'CT_JPB_TASK_CONTTYPE',
	99, 
	'Y', 
	'Tipos de trabajo del contrato o del tipo de contrato', 
	'Tipos de trabajo',
	'N', 
	'TSD_CONTRACTORS', 
	SYSDATE, 
	SYSDATE,
	'N',
	'Y',
	'Tipo de trabajo'
)
/
commit
/
