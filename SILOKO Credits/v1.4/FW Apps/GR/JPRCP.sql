BEGIN ut_trace.trace('********************Comenzar proceso de objeto:JPRCP******************************'); END;
/
DECLARE
clXml CLOB;

BEGIN
clXml := '<?xml version="1.0" encoding="WINDOWS-1252"?>
<APPLICATION>
  <INFO>
    <NAME>JPRCP</NAME>
    <DISPLAY>Clientes por plan</DISPLAY>
    <AUTHOR>OpenSystems</AUTHOR>
    <TYPE>GR</TYPE>
    <MODULE>OR</MODULE>
    <SITE>
      <APPLICATION>JPPCL</APPLICATION>
      <QUERY>0c1bc86b-c77d-49d2-9890-890428d3514a</QUERY>
    </SITE>
  </INFO>
  <LAYOUT>
    <REPORT>
      <NAME>d6f173d7-de61-453a-a754-1daa87f1863a</NAME>
      <MODEL>
        <ENTITY>
          <NAME>d6f173d7-de61-453a-a754-1daa87f1863a</NAME>
          <ATTRIBUTE>
            <NAME>TIPO_DE_PLAN</NAME>
            <TYPE>Varchar</TYPE>
            <KEY>false</KEY>
            <LENGTH>4000</LENGTH>
            <SCALE>0</SCALE>
            <ISNULL>false</ISNULL>
          </ATTRIBUTE>
          <ATTRIBUTE>
            <NAME>DOCUMENTO</NAME>
            <TYPE>Varchar</TYPE>
            <KEY>false</KEY>
            <LENGTH>12</LENGTH>
            <SCALE>0</SCALE>
            <ISNULL>false</ISNULL>
          </ATTRIBUTE>
          <ATTRIBUTE>
            <NAME>CLIENTE</NAME>
            <TYPE>Varchar</TYPE>
            <KEY>false</KEY>
            <LENGTH>4000</LENGTH>
            <SCALE>0</SCALE>
            <ISNULL>false</ISNULL>
          </ATTRIBUTE>
          <ATTRIBUTE>
            <NAME>FECHA_REGISTRO</NAME>
            <TYPE>Date</TYPE>
            <KEY>false</KEY>
            <LENGTH>7</LENGTH>
            <SCALE>0</SCALE>
            <ISNULL>false</ISNULL>
          </ATTRIBUTE>
        </ENTITY>
        <PROXY>
          <SOURCE>
SELECT
    /*+
    ORDERED
    USE_NL(OR_JPB_PLAN OR_JPB_CUSTOMER)
    INDEX (OR_JPB_CUSTOMER PK_OR_JPB_CUSTOMER)
    INDEX (OR_JPB_PLAN_TYPE PK_OR_JPB_PLAN_TYPE)
    INDEX  (OR_JPB_PLAN IDX_OR_JPB_PLAN02)
    */
    (
        SELECT
            daor_jpb_plan_type.fsbGetDescription(or_jpb_plan_type.plan_type_id)
        FROM DUAL
    ) TIPO_DE_PLAN,
            OR_jpb_customer.document DOCUMENTO,
    (
        SELECT
            daor_jpb_customer.fsbGetDescription(or_jpb_customer.customer_id)
        FROM DUAL
    ) CLIENTE,
	TRUNC(OR_JPB_CUSTOMER.registration_date) FECHA_REGISTRO

FROM
    OR_jpb_plan,
    OR_jpb_plan_type,
    OR_jpb_customer
WHERE
    OR_jpb_plan.customer_id = OR_jpb_customer.customer_id
    AND OR_jpb_plan.plan_type_id = OR_jpb_plan_type.plan_type_id
    </SOURCE>
          <TYPE>Statement</TYPE>
        </PROXY>
      </MODEL>
      <VIEW>
        <NAME>d6f173d7-de61-453a-a754-1daa87f1863a</NAME>
        <DISPLAY>Clientes por plan</DISPLAY>
        <GROUP>
          <PARAMETER>
            <NAME>TIPO_DE_PLAN</NAME>
            <DISPLAY>TIPODEPLAN</DISPLAY>
            <READONLY>false</READONLY>
            <REQUIRED>false</REQUIRED>
            <VISIBLE>true</VISIBLE>
            <STYLECASE>Upper</STYLECASE>
            <MASK>|</MASK>
          </PARAMETER>
          <PARAMETER>
            <NAME>DOCUMENTO</NAME>
            <DISPLAY>DOCUMENTO</DISPLAY>
            <READONLY>false</READONLY>
            <REQUIRED>false</REQUIRED>
            <VISIBLE>true</VISIBLE>
            <STYLECASE>Upper</STYLECASE>
            <MASK>|</MASK>
          </PARAMETER>
          <PARAMETER>
            <NAME>CLIENTE</NAME>
            <DISPLAY>CLIENTE</DISPLAY>
            <READONLY>false</READONLY>
            <REQUIRED>false</REQUIRED>
            <VISIBLE>true</VISIBLE>
            <STYLECASE>Upper</STYLECASE>
            <MASK>|</MASK>
          </PARAMETER>
          <PARAMETER>
            <NAME>FECHA_REGISTRO</NAME>
            <DISPLAY>FECHAREGISTRO</DISPLAY>
            <READONLY>false</READONLY>
            <REQUIRED>false</REQUIRED>
            <VISIBLE>true</VISIBLE>
            <STYLECASE>Upper</STYLECASE>
            <MASK>|</MASK>
          </PARAMETER>
        </GROUP>
      </VIEW>
      <CTRL>
        <NAME>d6f173d7-de61-453a-a754-1daa87f1863a</NAME>
        <PARAMETERS>
          <NAME>TIPO_DE_PLAN</NAME>
          <COMPONENT>
            <TYPE>String</TYPE>
            <SOURCE>
              <MODEL>
                <PROXY>
                  <TYPE>Statement</TYPE>
                </PROXY>
              </MODEL>
            </SOURCE>
          </COMPONENT>
        </PARAMETERS>
        <PARAMETERS>
          <NAME>DOCUMENTO</NAME>
          <COMPONENT>
            <TYPE>String</TYPE>
            <SOURCE>
              <MODEL>
                <PROXY>
                  <TYPE>Statement</TYPE>
                </PROXY>
              </MODEL>
            </SOURCE>
          </COMPONENT>
        </PARAMETERS>
        <PARAMETERS>
          <NAME>CLIENTE</NAME>
          <COMPONENT>
            <TYPE>String</TYPE>
            <SOURCE>
              <MODEL>
                <PROXY>
                  <TYPE>Statement</TYPE>
                </PROXY>
              </MODEL>
            </SOURCE>
          </COMPONENT>
        </PARAMETERS>
        <PARAMETERS>
          <NAME>FECHA_REGISTRO</NAME>
          <COMPONENT>
            <TYPE>String</TYPE>
            <SOURCE>
              <MODEL>
                <PROXY>
                  <TYPE>Statement</TYPE>
                </PROXY>
              </MODEL>
            </SOURCE>
          </COMPONENT>
        </PARAMETERS>
      </CTRL>
    </REPORT>
  </LAYOUT>
</APPLICATION>
';
ge_boapplication.Save(clXml);
commit;
exception when others then
rollback;
ut_trace.trace('||**ERROR:'|| sqlerrm);
raise;
END;
/
BEGIN ut_trace.trace('********************FIN  proceso de objeto:JPRCP******************************'); end;
/

BEGIN
    EXECUTE IMMEDIATE ''||
        'CREATE OR REPLACE FUNCTION fblB64Clob06052018214724801401'|| chr(10) ||
        '('|| chr(10) ||
            'iclFileContent in clob'|| chr(10) ||
        ')'|| chr(10) ||
        'RETURN BLOB'|| chr(10) ||
        'AS LANGUAGE JAVA NAME ''os.ge.util.Decoder.decodeB64CLOB(java.sql.Clob) return java.sql.Blob'';';
END;
/
BEGIN
    EXECUTE IMMEDIATE 'GRANT EXECUTE ON fblB64Clob06052018214724801401 TO SYSTEM_OBJ_PRIVS_ROLE';
END;
/
DECLARE
    sbDistFileId        ge_distribution_file.distribution_file_id%type;
    blFileContent       ge_distribution_file.app_html%type;
    clB64FileContent    clob;
BEGIN
    sbDistFileId        := 'JPRCP';
    dbms_lob.createtemporary(clB64FileContent, TRUE);
dbms_lob.append(clB64FileContent, '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
AA==');
blFileContent := fblB64Clob06052018214724801401(clB64FileContent);
    UPDATE ge_distribution_file
    SET	app_html = blFileContent
    WHERE distribution_file_id = sbDistFileId;
    dbms_lob.freetemporary(clB64FileContent);
    dbms_lob.freetemporary(blFileContent);
    commit;
EXCEPTION
	when others then
		rollback;
END;
/
BEGIN
    EXECUTE IMMEDIATE 'DROP FUNCTION fblB64Clob06052018214724801401';
END;
/

create OR replace PACKAGE or_wiJPRCP IS
    
    FUNCTION frfGet
    (
        iblIncludeShape in boolean,
        isbSelect  in varchar2,
        isbWhere   in varchar2,
        isbOrderBy in varchar2
    )
    return sys_refcursor;

    FUNCTION fnuGet
    (
        isbWhere in varchar2
    )
    return number;

    FUNCTION fsbGet
    (
        isbSelect  in varchar2,
        isbWhere   in varchar2,
        isbOrderBy in varchar2
    )
    return varchar2;

END or_wiJPRCP;
/
create OR replace PACKAGE body or_wiJPRCP IS

    FUNCTION frfGet
    (
        iblIncludeShape in boolean,
        isbSelect  in varchar2,
        isbWhere   in varchar2,
        isbOrderBy in varchar2
    )
    return sys_refcursor
    IS
        rfResult         sys_refcursor;
        sbSelect         varchar2(32767);
        sbWhere          varchar2(32767) := isbWhere;
        sbOrderBy        varchar2 (32767);
        tbSelectFields   ut_string.TyTB_String;
        nuSelectFieldIdx number;
    BEGIN
        ut_string.ExtString(isbSelect, ',', tbSelectFields);
        nuSelectFieldIdx := tbSelectFields.first;
        loop
            exit when nuSelectFieldIdx IS null;
            
            if(nuSelectFieldIdx > 1) then
                sbSelect := sbSelect || ',';
            END if;
            
            			sbSelect := sbSelect || tbSelectFields(nuSelectFieldIdx);

            
            nuSelectFieldIdx := tbSelectFields.next(nuSelectFieldIdx);
        end loop;

        if (sbWhere IS null) then
            sbWhere := '1 = 1';
        end if;
        
        if (isbOrderBy IS not null) then
            sbOrderBy :=  ' ORDER BY '|| isbOrderBy;
        end if;

        open rfResult for
            'SELECT '||sbSelect||'
             FROM (
SELECT
    /*+
    ORDERED
    USE_NL(OR_JPB_PLAN OR_JPB_CUSTOMER)
    INDEX (OR_JPB_CUSTOMER PK_OR_JPB_CUSTOMER)
    INDEX (OR_JPB_PLAN_TYPE PK_OR_JPB_PLAN_TYPE)
    INDEX  (OR_JPB_PLAN IDX_OR_JPB_PLAN02)
    */
    (
        SELECT
            daor_jpb_plan_type.fsbGetDescription(or_jpb_plan_type.plan_type_id)
        FROM DUAL
    ) TIPO_DE_PLAN,
            OR_jpb_customer.document DOCUMENTO,
    (
        SELECT
            daor_jpb_customer.fsbGetDescription(or_jpb_customer.customer_id)
        FROM DUAL
    ) CLIENTE,
	TRUNC(OR_JPB_CUSTOMER.registration_date) FECHA_REGISTRO

FROM
    OR_jpb_plan,
    OR_jpb_plan_type,
    OR_jpb_customer
WHERE
    OR_jpb_plan.customer_id = OR_jpb_customer.customer_id
    AND OR_jpb_plan.plan_type_id = OR_jpb_plan_type.plan_type_id
    ) t
             WHERE '||sbWhere ||sbOrderBy ;

        return rfResult;
    EXCEPTION
        when login_denied OR ex.CONTROLLED_ERROR OR pkconstante.exERROR_LEVEL2 then
            raise;
        when others then
            Errors.SetError;
            raise ex.CONTROLLED_ERROR;
    END frfGet;

    FUNCTION fnuGet
    (
        isbWhere in varchar2
    )
    return number
    IS
        rfResult sys_refcursor;
        sbWhere  varchar2(32767) := isbWhere;
        nuCount  number := 0;
    BEGIN
        if (sbWhere IS null) then
            sbWhere := '1 = 1';
        end if;

        open rfResult for
            'SELECT count(1) nuCount
             FROM (
SELECT
    /*+
    ORDERED
    USE_NL(OR_JPB_PLAN OR_JPB_CUSTOMER)
    INDEX (OR_JPB_CUSTOMER PK_OR_JPB_CUSTOMER)
    INDEX (OR_JPB_PLAN_TYPE PK_OR_JPB_PLAN_TYPE)
    INDEX  (OR_JPB_PLAN IDX_OR_JPB_PLAN02)
    */
    (
        SELECT
            daor_jpb_plan_type.fsbGetDescription(or_jpb_plan_type.plan_type_id)
        FROM DUAL
    ) TIPO_DE_PLAN,
            OR_jpb_customer.document DOCUMENTO,
    (
        SELECT
            daor_jpb_customer.fsbGetDescription(or_jpb_customer.customer_id)
        FROM DUAL
    ) CLIENTE,
	TRUNC(OR_JPB_CUSTOMER.registration_date) FECHA_REGISTRO

FROM
    OR_jpb_plan,
    OR_jpb_plan_type,
    OR_jpb_customer
WHERE
    OR_jpb_plan.customer_id = OR_jpb_customer.customer_id
    AND OR_jpb_plan.plan_type_id = OR_jpb_plan_type.plan_type_id
    ) t
             WHERE '||sbWhere ;

        fetch rfResult INTO nuCount;
        close rfResult;

        return nuCount;
    EXCEPTION
        when login_denied OR ex.CONTROLLED_ERROR OR pkconstante.exERROR_LEVEL2 then
            if (rfResult%isopen) then
                close rfResult;
            end if;
            raise;
        when others then
            if (rfResult%isopen) then
                close rfResult;
            end if;
            Errors.SetError;
            raise ex.CONTROLLED_ERROR;
    END fnuGet;

    FUNCTION fsbGet
    (
        isbSelect  in varchar2,
        isbWhere   in varchar2,
        isbOrderBy in varchar2
    )
    return varchar2
    IS
        sbQuery          varchar2(32767);
        sbSelect         varchar2(32767);
        sbWhere          varchar2(32767) := isbWhere;
        sbOrderBy        varchar2(32767);
        tbSelectFields   ut_string.TyTB_String;
        nuSelectFieldIdx number;
    BEGIN
        ut_string.ExtString(isbSelect, ',', tbSelectFields);
        nuSelectFieldIdx := tbSelectFields.first;
        loop
            exit when nuSelectFieldIdx IS null;

            if(nuSelectFieldIdx > 1) then
                sbSelect := sbSelect || ',';
            END if;

            			sbSelect := sbSelect || tbSelectFields(nuSelectFieldIdx);


            nuSelectFieldIdx := tbSelectFields.next(nuSelectFieldIdx);
        end loop;

        if (sbWhere IS null) then
            sbWhere := '1 = 1';
        end if;
        
        if (isbOrderBy IS not null) then
            sbOrderBy := ' ORDER BY '|| isbOrderBy;
        end if;

        sbQuery :=
            'SELECT '||sbSelect||'
             FROM (
SELECT
    /*+
    ORDERED
    USE_NL(OR_JPB_PLAN OR_JPB_CUSTOMER)
    INDEX (OR_JPB_CUSTOMER PK_OR_JPB_CUSTOMER)
    INDEX (OR_JPB_PLAN_TYPE PK_OR_JPB_PLAN_TYPE)
    INDEX  (OR_JPB_PLAN IDX_OR_JPB_PLAN02)
    */
    (
        SELECT
            daor_jpb_plan_type.fsbGetDescription(or_jpb_plan_type.plan_type_id)
        FROM DUAL
    ) TIPO_DE_PLAN,
            OR_jpb_customer.document DOCUMENTO,
    (
        SELECT
            daor_jpb_customer.fsbGetDescription(or_jpb_customer.customer_id)
        FROM DUAL
    ) CLIENTE,
	TRUNC(OR_JPB_CUSTOMER.registration_date) FECHA_REGISTRO

FROM
    OR_jpb_plan,
    OR_jpb_plan_type,
    OR_jpb_customer
WHERE
    OR_jpb_plan.customer_id = OR_jpb_customer.customer_id
    AND OR_jpb_plan.plan_type_id = OR_jpb_plan_type.plan_type_id
    ) t
             WHERE '||sbWhere || sbOrderBy;

        return sbQuery;
    EXCEPTION
        when login_denied OR ex.CONTROLLED_ERROR OR pkconstante.exERROR_LEVEL2 then
            raise;
        when others then
            Errors.SetError;
            raise ex.CONTROLLED_ERROR;
    END fsbGet;

END or_wiJPRCP;

/
