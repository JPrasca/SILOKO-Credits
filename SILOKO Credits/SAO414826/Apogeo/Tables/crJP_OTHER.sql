--
-- Propiedad intelectual de OPEN International Systems Ltda
--
-- Archivo       : crJP_OTHER.sql
-- Autor         : Semillero 2018 1 ( semillero2018_1 )
-- Fecha         : 27-03-2018 16:59:12 ( Fecha creación )
--
-- Descripción   : Creación de la tabla JP_OTHER
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 27-03-2018    semillero2018_1.SAO414826
-- Modificación
--


PROMPT - Script  :  crJP_OTHER.sql
PROMPT - Author  :  Semillero 2018 1
PROMPT
PROMPT - Creating table JP_OTHER

CREATE TABLE JP_OTHER
(
     OTHER_ID NUMBER( 3 ),
     OTHER_D VARCHAR2( 20 ) DEFAULT 'Otra desc.',
     OTHER_N NUMBER( 3 )     CONSTRAINT NN_JP_OTHER_370276 NOT NULL)
    INITRANS 1
    MAXTRANS 255 LOGGING  TABLESPACE TSD_FACTURA
    STORAGE (   INITIAL 8192
                NEXT 8192
                MINEXTENTS 1
                MAXEXTENTS UNLIMITED
                PCTINCREASE 0
                FREELISTS 1
                FREELIST GROUPS 1
                BUFFER_POOL DEFAULT);

PROMPT ... Adding Comments to table [JP_OTHER]...
comment on table JP_OTHER is 'Otra tabla';

PROMPT ... Adding Comments to columns of table  [JP_OTHER]...
comment on column JP_OTHER.OTHER_ID is 'Otro id';
comment on column JP_OTHER.OTHER_D is 'Otra desc.';
comment on column JP_OTHER.OTHER_N is 'Nada';


