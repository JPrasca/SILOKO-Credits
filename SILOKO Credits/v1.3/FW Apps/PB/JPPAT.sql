BEGIN ut_trace.trace('********************Comenzar proceso de objeto:JPPAT******************************'); END;
/
DECLARE
clXml CLOB;

BEGIN
clXml := '<?xml version="1.0" encoding="WINDOWS-1252"?>
<APPLICATION>
  <INFO>
    <NAME>JPPAT</NAME>
    <DISPLAY>Registrar tarifas de crédito</DISPLAY>
    <AUTHOR>OpenSystems</AUTHOR>
    <TYPE>PB</TYPE>
    <MODULE>OR</MODULE>
    <SITE>
      <APPLICATION>JPPCL</APPLICATION>
      <QUERY>af8883ee-b77a-40c1-bd56-22562bb08c35</QUERY>
    </SITE>
    <SITE>
      <APPLICATION>JPPCL</APPLICATION>
      <QUERY>OR_JPB_TARIFF</QUERY>
    </SITE>
  </INFO>
  <VIEW>
    <FORM>
      <ENTITY>
        <NAME>Form</NAME>
        <ATTRIBUTE>
          <NAME>TITLE'||chr(64)||'Titulo_1</NAME>
          <TYPE>Varchar</TYPE>
          <KEY>false</KEY>
          <LENGTH>0</LENGTH>
          <SCALE>0</SCALE>
          <ISNULL>false</ISNULL>
        </ATTRIBUTE>
        <ATTRIBUTE>
          <NAME>OR_JPB_COUNTRY'||chr(64)||'COUNTRY_ID</NAME>
          <TYPE>Number</TYPE>
          <KEY>true</KEY>
          <LENGTH>4</LENGTH>
          <SCALE>0</SCALE>
          <ISNULL>false</ISNULL>
        </ATTRIBUTE>
        <ATTRIBUTE>
          <NAME>OR_JPB_CITY'||chr(64)||'CITY_ID</NAME>
          <TYPE>Number</TYPE>
          <KEY>true</KEY>
          <LENGTH>4</LENGTH>
          <SCALE>0</SCALE>
          <ISNULL>false</ISNULL>
        </ATTRIBUTE>
        <ATTRIBUTE>
          <NAME>TITLE'||chr(64)||'Titulo_0</NAME>
          <TYPE>Varchar</TYPE>
          <KEY>false</KEY>
          <LENGTH>0</LENGTH>
          <SCALE>0</SCALE>
          <ISNULL>false</ISNULL>
        </ATTRIBUTE>
        <ATTRIBUTE>
          <NAME>OR_JPB_TARIFF'||chr(64)||'PLAN_TYPE_ID</NAME>
          <TYPE>Number</TYPE>
          <KEY>false</KEY>
          <LENGTH>4</LENGTH>
          <SCALE>0</SCALE>
          <ISNULL>false</ISNULL>
        </ATTRIBUTE>
        <ATTRIBUTE>
          <NAME>OR_JPB_TARIFF'||chr(64)||'ACTIVE_PRODUCTS</NAME>
          <TYPE>Number</TYPE>
          <KEY>false</KEY>
          <LENGTH>4</LENGTH>
          <SCALE>0</SCALE>
          <ISNULL>false</ISNULL>
        </ATTRIBUTE>
        <ATTRIBUTE>
          <NAME>OR_JPB_TARIFF'||chr(64)||'INF_LIMIT</NAME>
          <TYPE>Number</TYPE>
          <KEY>false</KEY>
          <LENGTH>4</LENGTH>
          <SCALE>0</SCALE>
          <ISNULL>false</ISNULL>
        </ATTRIBUTE>
        <ATTRIBUTE>
          <NAME>OR_JPB_TARIFF'||chr(64)||'SUP_LIMIT</NAME>
          <TYPE>Number</TYPE>
          <KEY>false</KEY>
          <LENGTH>4</LENGTH>
          <SCALE>0</SCALE>
          <ISNULL>false</ISNULL>
        </ATTRIBUTE>
        <ATTRIBUTE>
          <NAME>OR_JPB_TARIFF'||chr(64)||'AMOUNT</NAME>
          <TYPE>Number</TYPE>
          <KEY>false</KEY>
          <LENGTH>20</LENGTH>
          <SCALE>4</SCALE>
          <ISNULL>false</ISNULL>
        </ATTRIBUTE>
      </ENTITY>
      <VIEW>
        <NAME>Form</NAME>
        <GROUP>
          <PARAMETER>
            <NAME>TITLE'||chr(64)||'Titulo_1</NAME>
            <DISPLAY>Búsqueda</DISPLAY>
            <READONLY>false</READONLY>
            <REQUIRED>false</REQUIRED>
            <VISIBLE>true</VISIBLE>
            <STYLECASE>Upper</STYLECASE>
          </PARAMETER>
          <PARAMETER>
            <NAME>OR_JPB_COUNTRY'||chr(64)||'COUNTRY_ID</NAME>
            <DISPLAY>País</DISPLAY>
            <READONLY>false</READONLY>
            <REQUIRED>true</REQUIRED>
            <VISIBLE>true</VISIBLE>
            <STYLECASE>Upper</STYLECASE>
          </PARAMETER>
          <PARAMETER>
            <NAME>OR_JPB_CITY'||chr(64)||'CITY_ID</NAME>
            <DISPLAY>Ciudad</DISPLAY>
            <READONLY>false</READONLY>
            <REQUIRED>true</REQUIRED>
            <VISIBLE>true</VISIBLE>
            <STYLECASE>Upper</STYLECASE>
          </PARAMETER>
          <PARAMETER>
            <NAME>TITLE'||chr(64)||'Titulo_0</NAME>
            <DISPLAY>Datos de asignación</DISPLAY>
            <READONLY>false</READONLY>
            <REQUIRED>false</REQUIRED>
            <VISIBLE>true</VISIBLE>
            <STYLECASE>Upper</STYLECASE>
          </PARAMETER>
          <PARAMETER>
            <NAME>OR_JPB_TARIFF'||chr(64)||'PLAN_TYPE_ID</NAME>
            <DISPLAY>Tipo de plan.</DISPLAY>
            <READONLY>false</READONLY>
            <REQUIRED>false</REQUIRED>
            <VISIBLE>true</VISIBLE>
            <STYLECASE>Upper</STYLECASE>
          </PARAMETER>
          <PARAMETER>
            <NAME>OR_JPB_TARIFF'||chr(64)||'ACTIVE_PRODUCTS</NAME>
            <DISPLAY>Productos activos</DISPLAY>
            <READONLY>false</READONLY>
            <REQUIRED>false</REQUIRED>
            <VISIBLE>true</VISIBLE>
            <STYLECASE>Upper</STYLECASE>
          </PARAMETER>
          <PARAMETER>
            <NAME>OR_JPB_TARIFF'||chr(64)||'INF_LIMIT</NAME>
            <DISPLAY>Lím. inferior (años)</DISPLAY>
            <READONLY>false</READONLY>
            <REQUIRED>false</REQUIRED>
            <VISIBLE>true</VISIBLE>
            <STYLECASE>Upper</STYLECASE>
          </PARAMETER>
          <PARAMETER>
            <NAME>OR_JPB_TARIFF'||chr(64)||'SUP_LIMIT</NAME>
            <DISPLAY>Lím. superior (años)</DISPLAY>
            <READONLY>false</READONLY>
            <REQUIRED>false</REQUIRED>
            <VISIBLE>true</VISIBLE>
            <STYLECASE>Upper</STYLECASE>
          </PARAMETER>
          <PARAMETER>
            <NAME>OR_JPB_TARIFF'||chr(64)||'AMOUNT</NAME>
            <DISPLAY>Monto a asignar ($)</DISPLAY>
            <READONLY>false</READONLY>
            <REQUIRED>false</REQUIRED>
            <VISIBLE>true</VISIBLE>
            <STYLECASE>Upper</STYLECASE>
          </PARAMETER>
        </GROUP>
      </VIEW>
      <CTRL>
        <NAME>Form</NAME>
        <PARAMETERS>
          <NAME>TITLE'||chr(64)||'Titulo_1</NAME>
          <COMPONENT>
            <TYPE>TitleField</TYPE>
          </COMPONENT>
        </PARAMETERS>
        <PARAMETERS>
          <NAME>OR_JPB_COUNTRY'||chr(64)||'COUNTRY_ID</NAME>
          <COMPONENT>
            <TYPE>CodeTextField</TYPE>
            <SOURCE>
              <MODEL>
                <ENTITY>
                  <NAME>da7bf830-69bc-4c55-9e7f-151cd587cb80</NAME>
                  <ATTRIBUTE>
                    <NAME>ID</NAME>
                    <TYPE>Number</TYPE>
                    <KEY>false</KEY>
                    <LENGTH>4</LENGTH>
                    <SCALE>0</SCALE>
                    <ISNULL>false</ISNULL>
                  </ATTRIBUTE>
                  <ATTRIBUTE>
                    <NAME>DESCRIPTION</NAME>
                    <TYPE>Varchar</TYPE>
                    <KEY>false</KEY>
                    <LENGTH>100</LENGTH>
                    <SCALE>0</SCALE>
                    <ISNULL>false</ISNULL>
                  </ATTRIBUTE>
                </ENTITY>
                <PROXY>
                  <NAME>da7bf830-69bc-4c55-9e7f-151cd587cb80</NAME>
                  <ENTITY>da7bf830-69bc-4c55-9e7f-151cd587cb80</ENTITY>
                  <SOURCE>SELECT
	OR_JPB_COUNTRY.country_id ID,
	OR_JPB_COUNTRY.description DESCRIPTION
FROM
	OR_JPB_COUNTRY
ORDER BY
	OR_JPB_COUNTRY.description</SOURCE>
                  <TYPE>Statement</TYPE>
                </PROXY>
              </MODEL>
              <VIEW>
                <NAME>da7bf830-69bc-4c55-9e7f-151cd587cb80</NAME>
                <DISPLAY>Países</DISPLAY>
                <ATTRIBUTE>
                  <NAME>ID</NAME>
                  <DISPLAY>Id</DISPLAY>
                  <VISIBLE>true</VISIBLE>
                </ATTRIBUTE>
                <ATTRIBUTE>
                  <NAME>DESCRIPTION</NAME>
                  <DISPLAY>País</DISPLAY>
                  <VISIBLE>true</VISIBLE>
                </ATTRIBUTE>
                <SINGULARDISPLAY/>
              </VIEW>
            </SOURCE>
          </COMPONENT>
        </PARAMETERS>
        <PARAMETERS>
          <NAME>OR_JPB_CITY'||chr(64)||'CITY_ID</NAME>
          <PARENT>OR_JPB_COUNTRY'||chr(64)||'COUNTRY_ID</PARENT>
          <COMPONENT>
            <TYPE>CodeTextField</TYPE>
            <SOURCE>
              <MODEL>
                <ENTITY>
                  <NAME>692087cb-3f55-42c6-a104-2623f3c475f1</NAME>
                  <ATTRIBUTE>
                    <NAME>ID</NAME>
                    <TYPE>Number</TYPE>
                    <KEY>false</KEY>
                    <LENGTH>4</LENGTH>
                    <SCALE>0</SCALE>
                    <ISNULL>false</ISNULL>
                  </ATTRIBUTE>
                  <ATTRIBUTE>
                    <NAME>DESCRIPTION</NAME>
                    <TYPE>Varchar</TYPE>
                    <KEY>false</KEY>
                    <LENGTH>100</LENGTH>
                    <SCALE>0</SCALE>
                    <ISNULL>false</ISNULL>
                  </ATTRIBUTE>
                </ENTITY>
                <PROXY>
                  <NAME>692087cb-3f55-42c6-a104-2623f3c475f1</NAME>
                  <ENTITY>692087cb-3f55-42c6-a104-2623f3c475f1</ENTITY>
                  <SOURCE>SELECT
	OR_JPB_CITY.city_id ID,
	OR_JPB_CITY.description DESCRIPTION
FROM
	OR_JPB_CITY
WHERE
	OR_JPB_CITY.country_id = 
	ge_boInstanceControl.fsbGetFieldValue('||chr(38)||'apos;OR_JPB_COUNTRY'||chr(38)||'apos;, '||chr(38)||'apos;COUNTRY_ID'||chr(38)||'apos;)</SOURCE>
                  <TYPE>Statement</TYPE>
                </PROXY>
              </MODEL>
              <VIEW>
                <NAME>692087cb-3f55-42c6-a104-2623f3c475f1</NAME>
                <DISPLAY>Ciudades</DISPLAY>
                <ATTRIBUTE>
                  <NAME>ID</NAME>
                  <DISPLAY>ID</DISPLAY>
                  <VISIBLE>true</VISIBLE>
                </ATTRIBUTE>
                <ATTRIBUTE>
                  <NAME>DESCRIPTION</NAME>
                  <DISPLAY>Ciudad</DISPLAY>
                  <VISIBLE>true</VISIBLE>
                </ATTRIBUTE>
                <SINGULARDISPLAY/>
              </VIEW>
            </SOURCE>
          </COMPONENT>
        </PARAMETERS>
        <PARAMETERS>
          <NAME>TITLE'||chr(64)||'Titulo_0</NAME>
          <COMPONENT>
            <TYPE>TitleField</TYPE>
          </COMPONENT>
        </PARAMETERS>
        <PARAMETERS>
          <NAME>OR_JPB_TARIFF'||chr(64)||'PLAN_TYPE_ID</NAME>
          <COMPONENT>
            <TYPE>CodeTextField</TYPE>
            <SOURCE>
              <MODEL>
                <ENTITY>
                  <NAME>5a220232-4925-49ac-897a-93c12bb8bae8</NAME>
                  <ATTRIBUTE>
                    <NAME>ID</NAME>
                    <TYPE>Number</TYPE>
                    <KEY>false</KEY>
                    <LENGTH>4</LENGTH>
                    <SCALE>0</SCALE>
                    <ISNULL>false</ISNULL>
                  </ATTRIBUTE>
                  <ATTRIBUTE>
                    <NAME>DESCRIPTION</NAME>
                    <TYPE>Varchar</TYPE>
                    <KEY>false</KEY>
                    <LENGTH>100</LENGTH>
                    <SCALE>0</SCALE>
                    <ISNULL>false</ISNULL>
                  </ATTRIBUTE>
                </ENTITY>
                <PROXY>
                  <NAME>5a220232-4925-49ac-897a-93c12bb8bae8</NAME>
                  <ENTITY>5a220232-4925-49ac-897a-93c12bb8bae8</ENTITY>
                  <SOURCE>SELECT
	OR_JPB_PLAN_TYPE.plan_type_id ID,
	OR_JPB_PLAN_TYPE.description DESCRIPTION
FROM
	OR_JPB_PLAN_TYPE
ORDER BY
	OR_JPB_PLAN_TYPE.description</SOURCE>
                  <TYPE>Statement</TYPE>
                </PROXY>
              </MODEL>
              <VIEW>
                <NAME>5a220232-4925-49ac-897a-93c12bb8bae8</NAME>
                <DISPLAY>Tipos de plan</DISPLAY>
                <ATTRIBUTE>
                  <NAME>ID</NAME>
                  <DISPLAY>ID</DISPLAY>
                  <VISIBLE>true</VISIBLE>
                </ATTRIBUTE>
                <ATTRIBUTE>
                  <NAME>DESCRIPTION</NAME>
                  <DISPLAY>Tipo de plan</DISPLAY>
                  <VISIBLE>true</VISIBLE>
                </ATTRIBUTE>
                <SINGULARDISPLAY/>
              </VIEW>
            </SOURCE>
          </COMPONENT>
        </PARAMETERS>
        <PARAMETERS>
          <NAME>OR_JPB_TARIFF'||chr(64)||'ACTIVE_PRODUCTS</NAME>
          <COMPONENT>
            <TYPE>TextBoxField</TYPE>
          </COMPONENT>
        </PARAMETERS>
        <PARAMETERS>
          <NAME>OR_JPB_TARIFF'||chr(64)||'INF_LIMIT</NAME>
          <COMPONENT>
            <TYPE>TextBoxField</TYPE>
          </COMPONENT>
        </PARAMETERS>
        <PARAMETERS>
          <NAME>OR_JPB_TARIFF'||chr(64)||'SUP_LIMIT</NAME>
          <COMPONENT>
            <TYPE>TextBoxField</TYPE>
          </COMPONENT>
        </PARAMETERS>
        <PARAMETERS>
          <NAME>OR_JPB_TARIFF'||chr(64)||'AMOUNT</NAME>
          <COMPONENT>
            <TYPE>TextBoxField</TYPE>
          </COMPONENT>
        </PARAMETERS>
      </CTRL>
    </FORM>
    <GRID>
      <NAME>GRID</NAME>
      <MODEL>
        <ENTITY>
          <NAME>b2225cd9-6de3-4880-931c-2cebcb8499a3</NAME>
          <ATTRIBUTE>
            <NAME>STRAT_BY_CITY_ID</NAME>
            <TYPE>Number</TYPE>
            <KEY>false</KEY>
            <LENGTH>15</LENGTH>
            <SCALE>0</SCALE>
            <ISNULL>false</ISNULL>
          </ATTRIBUTE>
          <ATTRIBUTE>
            <NAME>STRATUM_ID</NAME>
            <TYPE>Number</TYPE>
            <KEY>true</KEY>
            <LENGTH>4</LENGTH>
            <SCALE>0</SCALE>
            <ISNULL>false</ISNULL>
          </ATTRIBUTE>
        </ENTITY>
        <PROXY>
          <NAME>b2225cd9-6de3-4880-931c-2cebcb8499a3</NAME>
          <PARAMETER>
            <NAME>Cursor1</NAME>
            <TYPE>Cursor</TYPE>
            <MODE>Output</MODE>
            <SCALE>0</SCALE>
            <LENGTH>200</LENGTH>
          </PARAMETER>
          <ENTITY>b2225cd9-6de3-4880-931c-2cebcb8499a3</ENTITY>
          <SOURCE>OR_UIJPPAT.FRFGETSTRATUMCITY</SOURCE>
          <TYPE>Service</TYPE>
        </PROXY>
      </MODEL>
      <VIEW>
        <NAME>b2225cd9-6de3-4880-931c-2cebcb8499a3</NAME>
        <DISPLAY>Estratos por ciudad</DISPLAY>
        <ATTRIBUTE>
          <NAME>STRAT_BY_CITY_ID</NAME>
          <DISPLAY>ID</DISPLAY>
          <VISIBLE>true</VISIBLE>
        </ATTRIBUTE>
        <ATTRIBUTE>
          <NAME>STRATUM_ID</NAME>
          <DISPLAY>Estrato</DISPLAY>
          <VISIBLE>true</VISIBLE>
        </ATTRIBUTE>
        <PARAMETER>
          <NAME>Cursor1</NAME>
          <DISPLAY>Cursor1</DISPLAY>
          <READONLY>false</READONLY>
          <REQUIRED>false</REQUIRED>
          <VISIBLE>false</VISIBLE>
          <STYLECASE>Normal</STYLECASE>
        </PARAMETER>
        <SINGULARDISPLAY/>
      </VIEW>
    </GRID>
  </VIEW>
  <CTRL>
    <OBJECT>OR_UIJPPAT.PROCESS</OBJECT>
    <FREQUENCY>false</FREQUENCY>
    <SCHEDULE>false</SCHEDULE>
  </CTRL>
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
BEGIN ut_trace.trace('********************FIN  proceso de objeto:JPPAT******************************'); end;
/

BEGIN
    EXECUTE IMMEDIATE ''||
        'CREATE OR REPLACE FUNCTION fblB64Clob11052018182856253427'|| chr(10) ||
        '('|| chr(10) ||
            'iclFileContent in clob'|| chr(10) ||
        ')'|| chr(10) ||
        'RETURN BLOB'|| chr(10) ||
        'AS LANGUAGE JAVA NAME ''os.ge.util.Decoder.decodeB64CLOB(java.sql.Clob) return java.sql.Blob'';';
END;
/
BEGIN
    EXECUTE IMMEDIATE 'GRANT EXECUTE ON fblB64Clob11052018182856253427 TO SYSTEM_OBJ_PRIVS_ROLE';
END;
/
DECLARE
    sbDistFileId        ge_distribution_file.distribution_file_id%type;
    blFileContent       ge_distribution_file.app_html%type;
    clB64FileContent    clob;
BEGIN
    sbDistFileId        := 'JPPAT';
    dbms_lob.createtemporary(clB64FileContent, TRUE);
dbms_lob.append(clB64FileContent, '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
AAMA9AAAACMGAAAAAA==');
blFileContent := fblB64Clob11052018182856253427(clB64FileContent);
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
    EXECUTE IMMEDIATE 'DROP FUNCTION fblB64Clob11052018182856253427';
END;
/

create OR replace PACKAGE or_wiJPPAT IS

    
    FUNCTION frfLOV_0
    return sys_refcursor;
    
    FUNCTION frfLOV_1
    return sys_refcursor;
    
    FUNCTION frfLOV_2
    return sys_refcursor;

END or_wiJPPAT;
/
create OR replace PACKAGE body or_wiJPPAT IS
    
    FUNCTION frfLOV_0
    return sys_refcursor
    IS
        rfResult sys_refcursor;
    BEGIN
        open rfResult for
            SELECT t.* FROM (SELECT
	OR_JPB_COUNTRY.country_id ID,
	OR_JPB_COUNTRY.description DESCRIPTION
FROM
	OR_JPB_COUNTRY
ORDER BY
	OR_JPB_COUNTRY.description) t;

        return rfResult;
    EXCEPTION
        when login_denied OR ex.CONTROLLED_ERROR OR pkconstante.exERROR_LEVEL2 then
            raise;
        when others then
            Errors.SetError;
            raise ex.CONTROLLED_ERROR;
    END frfLOV_0;
    
    FUNCTION frfLOV_1
    return sys_refcursor
    IS
        rfResult sys_refcursor;
    BEGIN
        open rfResult for
            SELECT t.* FROM (SELECT
	OR_JPB_CITY.city_id ID,
	OR_JPB_CITY.description DESCRIPTION
FROM
	OR_JPB_CITY
WHERE
	OR_JPB_CITY.country_id = 
	ge_boInstanceControl.fsbGetFieldValue('OR_JPB_COUNTRY', 'COUNTRY_ID')) t;

        return rfResult;
    EXCEPTION
        when login_denied OR ex.CONTROLLED_ERROR OR pkconstante.exERROR_LEVEL2 then
            raise;
        when others then
            Errors.SetError;
            raise ex.CONTROLLED_ERROR;
    END frfLOV_1;
    
    FUNCTION frfLOV_2
    return sys_refcursor
    IS
        rfResult sys_refcursor;
    BEGIN
        open rfResult for
            SELECT t.* FROM (SELECT
	OR_JPB_PLAN_TYPE.plan_type_id ID,
	OR_JPB_PLAN_TYPE.description DESCRIPTION
FROM
	OR_JPB_PLAN_TYPE
ORDER BY
	OR_JPB_PLAN_TYPE.description) t;

        return rfResult;
    EXCEPTION
        when login_denied OR ex.CONTROLLED_ERROR OR pkconstante.exERROR_LEVEL2 then
            raise;
        when others then
            Errors.SetError;
            raise ex.CONTROLLED_ERROR;
    END frfLOV_2;

END or_wiJPPAT;

/
