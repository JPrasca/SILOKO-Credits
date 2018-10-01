BEGIN ut_trace.trace('********************Comenzar proceso de objeto:JPPAT******************************'); END;
/
DECLARE
clXml CLOB;

BEGIN
clXml := '<?xml version="1.0" encoding="WINDOWS-1252"?>
<APPLICATION>
  <INFO>
    <NAME>JPPAT</NAME>
    <DISPLAY>Registro de parámetros de asignación de cupos (Por ciudad)</DISPLAY>
    <AUTHOR>OpenSystems</AUTHOR>
    <TYPE>PB</TYPE>
    <MODULE>OR</MODULE>
    <SITE>
      <APPLICATION>JPPCL</APPLICATION>
      <QUERY>edcadf33-b8bd-4452-a051-142322e97d22</QUERY>
    </SITE>
  </INFO>
  <VIEW>
    <FORM>
      <ENTITY>
        <NAME>Form</NAME>
        <ATTRIBUTE>
          <NAME>TITLE'||chr(64)||'Titulo_0</NAME>
          <TYPE>Varchar</TYPE>
          <KEY>false</KEY>
          <LENGTH>0</LENGTH>
          <SCALE>0</SCALE>
          <ISNULL>false</ISNULL>
        </ATTRIBUTE>
        <ATTRIBUTE>
          <NAME>OR_JPB_PARAMETERS'||chr(64)||'PLAN_TYPE_ID</NAME>
          <TYPE>Number</TYPE>
          <KEY>false</KEY>
          <LENGTH>4</LENGTH>
          <SCALE>0</SCALE>
          <ISNULL>false</ISNULL>
        </ATTRIBUTE>
        <ATTRIBUTE>
          <NAME>OR_JPB_PARAMETERS'||chr(64)||'ACTIVE_PRODUCTS</NAME>
          <TYPE>Number</TYPE>
          <KEY>false</KEY>
          <LENGTH>4</LENGTH>
          <SCALE>0</SCALE>
          <ISNULL>false</ISNULL>
        </ATTRIBUTE>
        <ATTRIBUTE>
          <NAME>OR_JPB_PARAMETERS'||chr(64)||'INF_LIMIT</NAME>
          <TYPE>Number</TYPE>
          <KEY>false</KEY>
          <LENGTH>4</LENGTH>
          <SCALE>0</SCALE>
          <ISNULL>false</ISNULL>
        </ATTRIBUTE>
        <ATTRIBUTE>
          <NAME>OR_JPB_PARAMETERS'||chr(64)||'SUP_LIMIT</NAME>
          <TYPE>Number</TYPE>
          <KEY>false</KEY>
          <LENGTH>4</LENGTH>
          <SCALE>0</SCALE>
          <ISNULL>false</ISNULL>
        </ATTRIBUTE>
        <ATTRIBUTE>
          <NAME>OR_JPB_PARAMETERS'||chr(64)||'AMOUNT</NAME>
          <TYPE>Number</TYPE>
          <KEY>false</KEY>
          <LENGTH>20</LENGTH>
          <SCALE>4</SCALE>
          <ISNULL>false</ISNULL>
        </ATTRIBUTE>
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
      </ENTITY>
      <VIEW>
        <NAME>Form</NAME>
        <GROUP>
          <PARAMETER>
            <NAME>TITLE'||chr(64)||'Titulo_0</NAME>
            <DISPLAY>Datos de asignación</DISPLAY>
            <READONLY>false</READONLY>
            <REQUIRED>false</REQUIRED>
            <VISIBLE>true</VISIBLE>
            <STYLECASE>Upper</STYLECASE>
          </PARAMETER>
          <PARAMETER>
            <NAME>OR_JPB_PARAMETERS'||chr(64)||'PLAN_TYPE_ID</NAME>
            <DISPLAY>Tipo de plan</DISPLAY>
            <READONLY>false</READONLY>
            <REQUIRED>false</REQUIRED>
            <VISIBLE>true</VISIBLE>
            <STYLECASE>Upper</STYLECASE>
          </PARAMETER>
          <PARAMETER>
            <NAME>OR_JPB_PARAMETERS'||chr(64)||'ACTIVE_PRODUCTS</NAME>
            <DISPLAY>Productos activos</DISPLAY>
            <READONLY>false</READONLY>
            <REQUIRED>false</REQUIRED>
            <VISIBLE>true</VISIBLE>
            <STYLECASE>Upper</STYLECASE>
          </PARAMETER>
          <PARAMETER>
            <NAME>OR_JPB_PARAMETERS'||chr(64)||'INF_LIMIT</NAME>
            <DISPLAY>Límite inferior</DISPLAY>
            <READONLY>false</READONLY>
            <REQUIRED>false</REQUIRED>
            <VISIBLE>true</VISIBLE>
            <STYLECASE>Upper</STYLECASE>
          </PARAMETER>
          <PARAMETER>
            <NAME>OR_JPB_PARAMETERS'||chr(64)||'SUP_LIMIT</NAME>
            <DISPLAY>Límite superior</DISPLAY>
            <READONLY>false</READONLY>
            <REQUIRED>false</REQUIRED>
            <VISIBLE>true</VISIBLE>
            <STYLECASE>Upper</STYLECASE>
          </PARAMETER>
          <PARAMETER>
            <NAME>OR_JPB_PARAMETERS'||chr(64)||'AMOUNT</NAME>
            <DISPLAY>Monto a asignar</DISPLAY>
            <READONLY>false</READONLY>
            <REQUIRED>false</REQUIRED>
            <VISIBLE>true</VISIBLE>
            <STYLECASE>Upper</STYLECASE>
          </PARAMETER>
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
        </GROUP>
      </VIEW>
      <CTRL>
        <NAME>Form</NAME>
        <PARAMETERS>
          <NAME>TITLE'||chr(64)||'Titulo_0</NAME>
          <COMPONENT>
            <TYPE>TitleField</TYPE>
          </COMPONENT>
        </PARAMETERS>
        <PARAMETERS>
          <NAME>OR_JPB_PARAMETERS'||chr(64)||'PLAN_TYPE_ID</NAME>
          <COMPONENT>
            <TYPE>CodeTextField</TYPE>
            <SOURCE>
              <MODEL>
                <ENTITY>
                  <NAME>019676f2-9627-428e-9382-4265dbd2f4ad</NAME>
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
                  <NAME>019676f2-9627-428e-9382-4265dbd2f4ad</NAME>
                  <ENTITY>019676f2-9627-428e-9382-4265dbd2f4ad</ENTITY>
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
                <NAME>019676f2-9627-428e-9382-4265dbd2f4ad</NAME>
                <DISPLAY>Tipos de plan</DISPLAY>
                <ATTRIBUTE>
                  <NAME>ID</NAME>
                  <DISPLAY>Id</DISPLAY>
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
          <NAME>OR_JPB_PARAMETERS'||chr(64)||'ACTIVE_PRODUCTS</NAME>
          <COMPONENT>
            <TYPE>TextBoxField</TYPE>
          </COMPONENT>
        </PARAMETERS>
        <PARAMETERS>
          <NAME>OR_JPB_PARAMETERS'||chr(64)||'INF_LIMIT</NAME>
          <COMPONENT>
            <TYPE>TextBoxField</TYPE>
          </COMPONENT>
        </PARAMETERS>
        <PARAMETERS>
          <NAME>OR_JPB_PARAMETERS'||chr(64)||'SUP_LIMIT</NAME>
          <COMPONENT>
            <TYPE>TextBoxField</TYPE>
          </COMPONENT>
        </PARAMETERS>
        <PARAMETERS>
          <NAME>OR_JPB_PARAMETERS'||chr(64)||'AMOUNT</NAME>
          <COMPONENT>
            <TYPE>TextBoxField</TYPE>
          </COMPONENT>
        </PARAMETERS>
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
            <KEY>false</KEY>
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
        'CREATE OR REPLACE FUNCTION fblB64Clob06052018223117022924'|| chr(10) ||
        '('|| chr(10) ||
            'iclFileContent in clob'|| chr(10) ||
        ')'|| chr(10) ||
        'RETURN BLOB'|| chr(10) ||
        'AS LANGUAGE JAVA NAME ''os.ge.util.Decoder.decodeB64CLOB(java.sql.Clob) return java.sql.Blob'';';
END;
/
BEGIN
    EXECUTE IMMEDIATE 'GRANT EXECUTE ON fblB64Clob06052018223117022924 TO SYSTEM_OBJ_PRIVS_ROLE';
END;
/
DECLARE
    sbDistFileId        ge_distribution_file.distribution_file_id%type;
    blFileContent       ge_distribution_file.app_html%type;
    clB64FileContent    clob;
BEGIN
    sbDistFileId        := 'JPPAT';
    dbms_lob.createtemporary(clB64FileContent, TRUE);
dbms_lob.append(clB64FileContent, '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');
blFileContent := fblB64Clob06052018223117022924(clB64FileContent);
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
    EXECUTE IMMEDIATE 'DROP FUNCTION fblB64Clob06052018223117022924';
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
    END frfLOV_0;
    
    FUNCTION frfLOV_1
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
    END frfLOV_1;
    
    FUNCTION frfLOV_2
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
    END frfLOV_2;

END or_wiJPPAT;

/
