--
-- Propiedad intelectual de OPEN International Systems Ltda
-- Archivo       : updGE_CATALOG_SAO414826.sql
-- Autor         : semillero2018_1
-- Fecha         : 07-05-2018 17:35:22
--
-- Descripcion   : Updating  Data updGE_CATALOG_SAO414826.sql
-- Observaciones :
--
-- Historia de Modificaciones
-- Fecha          IDEntrega
--
-- 07-05-2018    semillero2018_1 SAO414826
-- Creaci�n
--

PROMPT - Script : updGE_CATALOG_SAO414826.sql
PROMPT
PROMPT - Updating  Data updGE_CATALOG_SAO414826.sql

PROMPT - Inserting Entity CT_JPB_CONTRACT_TYPE
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'CT_JPB_CONTRACT_TYPE',
    'ENTITY',
    9289
)
/

PROMPT - Inserting Attribute CT_JPB_CONTRACT_TYPE@CONTRACT_TYPE_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'CT_JPB_CONTRACT_TYPE@CONTRACT_TYPE_ID',
    'ATTRIBUTE',
    370574
)
/

PROMPT - Inserting Attribute CT_JPB_CONTRACT_TYPE@DESCRIPTION
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'CT_JPB_CONTRACT_TYPE@DESCRIPTION',
    'ATTRIBUTE',
    370575
)
/

PROMPT - Inserting Entity OR_JPB_ITEM
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_ITEM',
    'ENTITY',
    10058
)
/

PROMPT - Inserting Attribute OR_JPB_ITEM@ITEM_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_ITEM@ITEM_ID',
    'ATTRIBUTE',
    372540
)
/

PROMPT - Inserting Attribute OR_JPB_ITEM@DESCRIPTION
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_ITEM@DESCRIPTION',
    'ATTRIBUTE',
    372541
)
/

PROMPT - Inserting Attribute OR_JPB_ITEM@PRICE
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_ITEM@PRICE',
    'ATTRIBUTE',
    372542
)
/

PROMPT - Inserting Entity CT_JPB_CONTRACT
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'CT_JPB_CONTRACT',
    'ENTITY',
    9318
)
/

PROMPT - Inserting Attribute CT_JPB_CONTRACT@CONTRACT_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'CT_JPB_CONTRACT@CONTRACT_ID',
    'ATTRIBUTE',
    370680
)
/

PROMPT - Inserting Attribute CT_JPB_CONTRACT@DESCRIPTION
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'CT_JPB_CONTRACT@DESCRIPTION',
    'ATTRIBUTE',
    370681
)
/

PROMPT - Inserting Attribute CT_JPB_CONTRACT@TOTAL_AMOUNT
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'CT_JPB_CONTRACT@TOTAL_AMOUNT',
    'ATTRIBUTE',
    370682
)
/

PROMPT - Inserting Attribute CT_JPB_CONTRACT@OVERREACHING_PERCENT
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'CT_JPB_CONTRACT@OVERREACHING_PERCENT',
    'ATTRIBUTE',
    370683
)
/

PROMPT - Inserting Attribute CT_JPB_CONTRACT@CONTRACT_TYPE_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'CT_JPB_CONTRACT@CONTRACT_TYPE_ID',
    'ATTRIBUTE',
    370684
)
/

PROMPT - Inserting Attribute CT_JPB_CONTRACT@CONTRACTOR_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'CT_JPB_CONTRACT@CONTRACTOR_ID',
    'ATTRIBUTE',
    370685
)
/

PROMPT - Inserting Entity JP_ORDER
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'JP_ORDER',
    'ENTITY',
    9161
)
/

PROMPT - Inserting Attribute JP_ORDER@ORDEN_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'JP_ORDER@ORDEN_ID',
    'ATTRIBUTE',
    370218
)
/

PROMPT - Inserting Attribute JP_ORDER@ORDEN_D
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'JP_ORDER@ORDEN_D',
    'ATTRIBUTE',
    370219
)
/

PROMPT - Inserting Entity JP_PARAMETR
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'JP_PARAMETR',
    'ENTITY',
    9255
)
/

PROMPT - Inserting Attribute JP_PARAMETR@PARAESTR
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'JP_PARAMETR@PARAESTR',
    'ATTRIBUTE',
    370443
)
/

PROMPT - Inserting Attribute JP_PARAMETR@PARAPLAN
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'JP_PARAMETR@PARAPLAN',
    'ATTRIBUTE',
    370486
)
/

PROMPT - Inserting Attribute JP_PARAMETR@PARAPAIS
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'JP_PARAMETR@PARAPAIS',
    'ATTRIBUTE',
    370487
)
/

PROMPT - Inserting Entity JP_TEST
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'JP_TEST',
    'ENTITY',
    9188
)
/

PROMPT - Inserting Attribute JP_TEST@TEST_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'JP_TEST@TEST_ID',
    'ATTRIBUTE',
    370257
)
/

PROMPT - Inserting Attribute JP_TEST@TEST_DES
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'JP_TEST@TEST_DES',
    'ATTRIBUTE',
    370258
)
/

PROMPT - Inserting Entity JP_OTHER
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'JP_OTHER',
    'ENTITY',
    9190
)
/

PROMPT - Inserting Attribute JP_OTHER@OTHER_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'JP_OTHER@OTHER_ID',
    'ATTRIBUTE',
    370262
)
/

PROMPT - Inserting Attribute JP_OTHER@OTHER_D
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'JP_OTHER@OTHER_D',
    'ATTRIBUTE',
    370263
)
/

PROMPT - Inserting Attribute JP_OTHER@OTHER_N
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'JP_OTHER@OTHER_N',
    'ATTRIBUTE',
    370276
)
/

PROMPT - Inserting Entity JP_CIUDAD
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'JP_CIUDAD',
    'ENTITY',
    9280
)
/

PROMPT - Inserting Attribute JP_CIUDAD@CIUDCODI
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'JP_CIUDAD@CIUDCODI',
    'ATTRIBUTE',
    370552
)
/

PROMPT - Inserting Attribute JP_CIUDAD@CIUDNOMB
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'JP_CIUDAD@CIUDNOMB',
    'ATTRIBUTE',
    370553
)
/

PROMPT - Inserting Attribute JP_CIUDAD@CIUDPAIS
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'JP_CIUDAD@CIUDPAIS',
    'ATTRIBUTE',
    370554
)
/

PROMPT - Inserting Entity JP_PAIS
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'JP_PAIS',
    'ENTITY',
    9279
)
/

PROMPT - Inserting Attribute JP_PAIS@PAISCODI
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'JP_PAIS@PAISCODI',
    'ATTRIBUTE',
    370550
)
/

PROMPT - Inserting Attribute JP_PAIS@PAISNOMB
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'JP_PAIS@PAISNOMB',
    'ATTRIBUTE',
    370551
)
/

PROMPT - Inserting Entity JP_ESTRATO
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'JP_ESTRATO',
    'ENTITY',
    9281
)
/

PROMPT - Inserting Attribute JP_ESTRATO@ESTRCODI
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'JP_ESTRATO@ESTRCODI',
    'ATTRIBUTE',
    370555
)
/

PROMPT - Inserting Attribute JP_ESTRATO@ESTRDESC
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'JP_ESTRATO@ESTRDESC',
    'ATTRIBUTE',
    370556
)
/

PROMPT - Inserting Entity OR_JPB_STORE
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_STORE',
    'ENTITY',
    10233
)
/

PROMPT - Inserting Attribute OR_JPB_STORE@STORE_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_STORE@STORE_ID',
    'ATTRIBUTE',
    373313
)
/

PROMPT - Inserting Attribute OR_JPB_STORE@DESCRIPTION
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_STORE@DESCRIPTION',
    'ATTRIBUTE',
    373314
)
/

PROMPT - Inserting Attribute OR_JPB_STORE@CITY_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_STORE@CITY_ID',
    'ATTRIBUTE',
    373315
)
/

PROMPT - Inserting Entity CT_JPB_TASK_CONTTYPE
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'CT_JPB_TASK_CONTTYPE',
    'ENTITY',
    9387
)
/

PROMPT - Inserting Attribute CT_JPB_TASK_CONTTYPE@TASK_CONTTYPE_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'CT_JPB_TASK_CONTTYPE@TASK_CONTTYPE_ID',
    'ATTRIBUTE',
    371030
)
/

PROMPT - Inserting Attribute CT_JPB_TASK_CONTTYPE@IS_TYPE
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'CT_JPB_TASK_CONTTYPE@IS_TYPE',
    'ATTRIBUTE',
    371031
)
/

PROMPT - Inserting Attribute CT_JPB_TASK_CONTTYPE@CONTRACT_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'CT_JPB_TASK_CONTTYPE@CONTRACT_ID',
    'ATTRIBUTE',
    371032
)
/

PROMPT - Inserting Attribute CT_JPB_TASK_CONTTYPE@CONTRACT_TYPE_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'CT_JPB_TASK_CONTTYPE@CONTRACT_TYPE_ID',
    'ATTRIBUTE',
    371033
)
/

PROMPT - Inserting Attribute CT_JPB_TASK_CONTTYPE@TASK_TYPE_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'CT_JPB_TASK_CONTTYPE@TASK_TYPE_ID',
    'ATTRIBUTE',
    371034
)
/

PROMPT - Inserting Entity OR_JPB_STRAT_BY_CITY
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_STRAT_BY_CITY',
    'ENTITY',
    10232
)
/

PROMPT - Inserting Attribute OR_JPB_STRAT_BY_CITY@STRAT_BY_CITY_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_STRAT_BY_CITY@STRAT_BY_CITY_ID',
    'ATTRIBUTE',
    373308
)
/

PROMPT - Inserting Attribute OR_JPB_STRAT_BY_CITY@STRATUM_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_STRAT_BY_CITY@STRATUM_ID',
    'ATTRIBUTE',
    373309
)
/

PROMPT - Inserting Attribute OR_JPB_STRAT_BY_CITY@CITY_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_STRAT_BY_CITY@CITY_ID',
    'ATTRIBUTE',
    373310
)
/

PROMPT - Inserting Entity OR_JPB_ASSIGNED_QUOTA
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_ASSIGNED_QUOTA',
    'ENTITY',
    10106
)
/

PROMPT - Inserting Attribute OR_JPB_ASSIGNED_QUOTA@QUOTA_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_ASSIGNED_QUOTA@QUOTA_ID',
    'ATTRIBUTE',
    372769
)
/

PROMPT - Inserting Attribute OR_JPB_ASSIGNED_QUOTA@CUSTOMER_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_ASSIGNED_QUOTA@CUSTOMER_ID',
    'ATTRIBUTE',
    372770
)
/

PROMPT - Inserting Attribute OR_JPB_ASSIGNED_QUOTA@ASSIGNED
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_ASSIGNED_QUOTA@ASSIGNED',
    'ATTRIBUTE',
    372773
)
/

PROMPT - Inserting Attribute OR_JPB_ASSIGNED_QUOTA@AVAILABLE
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_ASSIGNED_QUOTA@AVAILABLE',
    'ATTRIBUTE',
    372774
)
/

PROMPT - Inserting Attribute OR_JPB_ASSIGNED_QUOTA@IS_ENABLED
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_ASSIGNED_QUOTA@IS_ENABLED',
    'ATTRIBUTE',
    372775
)
/

PROMPT - Inserting Entity OR_JPB_CREDIT
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_CREDIT',
    'ENTITY',
    10115
)
/

PROMPT - Inserting Attribute OR_JPB_CREDIT@CREDIT_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_CREDIT@CREDIT_ID',
    'ATTRIBUTE',
    372820
)
/

PROMPT - Inserting Attribute OR_JPB_CREDIT@AUTORIZATION_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_CREDIT@AUTORIZATION_ID',
    'ATTRIBUTE',
    372821
)
/

PROMPT - Inserting Attribute OR_JPB_CREDIT@CUSTOMER_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_CREDIT@CUSTOMER_ID',
    'ATTRIBUTE',
    372822
)
/

PROMPT - Inserting Attribute OR_JPB_CREDIT@ITEM_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_CREDIT@ITEM_ID',
    'ATTRIBUTE',
    372823
)
/

PROMPT - Inserting Attribute OR_JPB_CREDIT@QUOTA_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_CREDIT@QUOTA_ID',
    'ATTRIBUTE',
    372824
)
/

PROMPT - Inserting Attribute OR_JPB_CREDIT@IS_APPROVED
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_CREDIT@IS_APPROVED',
    'ATTRIBUTE',
    372825
)
/

PROMPT - Inserting Attribute OR_JPB_CREDIT@CREDIT_DATE
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_CREDIT@CREDIT_DATE',
    'ATTRIBUTE',
    372880
)
/

PROMPT - Inserting Attribute OR_JPB_CREDIT@CAUSAL_DETAIL_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_CREDIT@CAUSAL_DETAIL_ID',
    'ATTRIBUTE',
    373072
)
/

PROMPT - Inserting Attribute OR_JPB_CREDIT@STORE_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_CREDIT@STORE_ID',
    'ATTRIBUTE',
    373316
)
/

PROMPT - Inserting Entity OR_JPB_PARAMETERS
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_PARAMETERS',
    'ENTITY',
    10118
)
/

PROMPT - Inserting Attribute OR_JPB_PARAMETERS@PARAMETER_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_PARAMETERS@PARAMETER_ID',
    'ATTRIBUTE',
    372850
)
/

PROMPT - Inserting Attribute OR_JPB_PARAMETERS@STRATUM_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_PARAMETERS@STRATUM_ID',
    'ATTRIBUTE',
    372851
)
/

PROMPT - Inserting Attribute OR_JPB_PARAMETERS@CITY_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_PARAMETERS@CITY_ID',
    'ATTRIBUTE',
    372852
)
/

PROMPT - Inserting Attribute OR_JPB_PARAMETERS@COUNTRY_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_PARAMETERS@COUNTRY_ID',
    'ATTRIBUTE',
    372853
)
/

PROMPT - Inserting Attribute OR_JPB_PARAMETERS@PLAN_TYPE_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_PARAMETERS@PLAN_TYPE_ID',
    'ATTRIBUTE',
    372854
)
/

PROMPT - Inserting Attribute OR_JPB_PARAMETERS@ACTIVE_PRODUCTS
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_PARAMETERS@ACTIVE_PRODUCTS',
    'ATTRIBUTE',
    372855
)
/

PROMPT - Inserting Attribute OR_JPB_PARAMETERS@INF_LIMIT
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_PARAMETERS@INF_LIMIT',
    'ATTRIBUTE',
    372856
)
/

PROMPT - Inserting Attribute OR_JPB_PARAMETERS@SUP_LIMIT
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_PARAMETERS@SUP_LIMIT',
    'ATTRIBUTE',
    372857
)
/

PROMPT - Inserting Attribute OR_JPB_PARAMETERS@AMOUNT
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_PARAMETERS@AMOUNT',
    'ATTRIBUTE',
    372858
)
/

PROMPT - Inserting Entity OR_STRATUM_BY_CITY
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_STRATUM_BY_CITY',
    'ENTITY',
    10231
)
/

PROMPT - Inserting Attribute OR_STRATUM_BY_CITY@STRAT_BY_CITY_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_STRATUM_BY_CITY@STRAT_BY_CITY_ID',
    'ATTRIBUTE',
    373305
)
/

PROMPT - Inserting Attribute OR_STRATUM_BY_CITY@CITY_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_STRATUM_BY_CITY@CITY_ID',
    'ATTRIBUTE',
    373306
)
/

PROMPT - Inserting Attribute OR_STRATUM_BY_CITY@STRATUM_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_STRATUM_BY_CITY@STRATUM_ID',
    'ATTRIBUTE',
    373307
)
/

PROMPT - Inserting Entity OR_JPB_PLAN
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_PLAN',
    'ENTITY',
    10083
)
/

PROMPT - Inserting Attribute OR_JPB_PLAN@PLAN_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_PLAN@PLAN_ID',
    'ATTRIBUTE',
    372673
)
/

PROMPT - Inserting Attribute OR_JPB_PLAN@PLAN_TYPE_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_PLAN@PLAN_TYPE_ID',
    'ATTRIBUTE',
    372674
)
/

PROMPT - Inserting Attribute OR_JPB_PLAN@CUSTOMER_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_PLAN@CUSTOMER_ID',
    'ATTRIBUTE',
    372675
)
/

PROMPT - Inserting Attribute OR_JPB_PLAN@IS_ACTIVE
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_PLAN@IS_ACTIVE',
    'ATTRIBUTE',
    372676
)
/

PROMPT - Inserting Attribute OR_JPB_PLAN@COUNTRY_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_PLAN@COUNTRY_ID',
    'ATTRIBUTE',
    373330
)
/

PROMPT - Inserting Attribute OR_JPB_PLAN@CITY_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_PLAN@CITY_ID',
    'ATTRIBUTE',
    373331
)
/

PROMPT - Inserting Attribute OR_JPB_PLAN@STRATUM_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_PLAN@STRATUM_ID',
    'ATTRIBUTE',
    373332
)
/

PROMPT - Inserting Entity OR_JPB_CUSTOMER
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_CUSTOMER',
    'ENTITY',
    10084
)
/

PROMPT - Inserting Attribute OR_JPB_CUSTOMER@CUSTOMER_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_CUSTOMER@CUSTOMER_ID',
    'ATTRIBUTE',
    372677
)
/

PROMPT - Inserting Attribute OR_JPB_CUSTOMER@DESCRIPTION
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_CUSTOMER@DESCRIPTION',
    'ATTRIBUTE',
    372678
)
/

PROMPT - Inserting Attribute OR_JPB_CUSTOMER@DOCUMENT
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_CUSTOMER@DOCUMENT',
    'ATTRIBUTE',
    372740
)
/

PROMPT - Inserting Attribute OR_JPB_CUSTOMER@STRATUM_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_CUSTOMER@STRATUM_ID',
    'ATTRIBUTE',
    372741
)
/

PROMPT - Inserting Attribute OR_JPB_CUSTOMER@REGISTRATION_DATE
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_CUSTOMER@REGISTRATION_DATE',
    'ATTRIBUTE',
    372742
)
/

PROMPT - Inserting Attribute OR_JPB_CUSTOMER@HAS_QUOTA
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_CUSTOMER@HAS_QUOTA',
    'ATTRIBUTE',
    373303
)
/

PROMPT - Inserting Attribute OR_JPB_CUSTOMER@CITY_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_CUSTOMER@CITY_ID',
    'ATTRIBUTE',
    373328
)
/

PROMPT - Inserting Attribute OR_JPB_CUSTOMER@COUNTRY_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_CUSTOMER@COUNTRY_ID',
    'ATTRIBUTE',
    373329
)
/

PROMPT - Inserting Entity OR_JPB_CITY
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_CITY',
    'ENTITY',
    10019
)
/

PROMPT - Inserting Attribute OR_JPB_CITY@CITY_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_CITY@CITY_ID',
    'ATTRIBUTE',
    372373
)
/

PROMPT - Inserting Attribute OR_JPB_CITY@DESCRIPTION
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_CITY@DESCRIPTION',
    'ATTRIBUTE',
    372374
)
/

PROMPT - Inserting Attribute OR_JPB_CITY@COUNTRY_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_CITY@COUNTRY_ID',
    'ATTRIBUTE',
    372375
)
/

PROMPT - Inserting Entity OR_JPB_COUNTRY
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_COUNTRY',
    'ENTITY',
    10029
)
/

PROMPT - Inserting Attribute OR_JPB_COUNTRY@COUNTRY_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_COUNTRY@COUNTRY_ID',
    'ATTRIBUTE',
    372405
)
/

PROMPT - Inserting Attribute OR_JPB_COUNTRY@DESCRIPTION
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_COUNTRY@DESCRIPTION',
    'ATTRIBUTE',
    372406
)
/

PROMPT - Inserting Entity OR_JPB_STRATUM
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_STRATUM',
    'ENTITY',
    10039
)
/

PROMPT - Inserting Attribute OR_JPB_STRATUM@STRATUM_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_STRATUM@STRATUM_ID',
    'ATTRIBUTE',
    372464
)
/

PROMPT - Inserting Attribute OR_JPB_STRATUM@DESCRIPTION
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_STRATUM@DESCRIPTION',
    'ATTRIBUTE',
    372465
)
/

PROMPT - Inserting Entity OR_JPB_AUTORIZATION
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_AUTORIZATION',
    'ENTITY',
    10049
)
/

PROMPT - Inserting Attribute OR_JPB_AUTORIZATION@AUTORIZATION_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_AUTORIZATION@AUTORIZATION_ID',
    'ATTRIBUTE',
    372511
)
/

PROMPT - Inserting Attribute OR_JPB_AUTORIZATION@AUTORIZATION_STATUS
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_AUTORIZATION@AUTORIZATION_STATUS',
    'ATTRIBUTE',
    372512
)
/

PROMPT - Inserting Entity OR_JPB_PLAN_TYPE
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_PLAN_TYPE',
    'ENTITY',
    10052
)
/

PROMPT - Inserting Attribute OR_JPB_PLAN_TYPE@PLAN_TYPE_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_PLAN_TYPE@PLAN_TYPE_ID',
    'ATTRIBUTE',
    372528
)
/

PROMPT - Inserting Attribute OR_JPB_PLAN_TYPE@DESCRIPTION
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'OR_JPB_PLAN_TYPE@DESCRIPTION',
    'ATTRIBUTE',
    372529
)
/

PROMPT - Inserting Entity CT_JPB_COTRACTOR
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'CT_JPB_COTRACTOR',
    'ENTITY',
    9299
)
/

PROMPT - Inserting Attribute CT_JPB_COTRACTOR@CONTRACTOR_ID
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'CT_JPB_COTRACTOR@CONTRACTOR_ID',
    'ATTRIBUTE',
    370602
)
/

PROMPT - Inserting Attribute CT_JPB_COTRACTOR@DESCRIPTION
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'CT_JPB_COTRACTOR@DESCRIPTION',
    'ATTRIBUTE',
    370603
)
/

PROMPT - Inserting Attribute CT_JPB_COTRACTOR@IVA_SELF_RETAINER
INSERT INTO GE_CATALOG
(
    TAG_NAME,
    CATEGORY_NAME,
    RECORD_ID
)
VALUES
(
    'CT_JPB_COTRACTOR@IVA_SELF_RETAINER',
    'ATTRIBUTE',
    370604
)
/

COMMIT;
/
