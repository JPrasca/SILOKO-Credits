BEGIN ut_trace.trace('********************Comenzar proceso de objeto:JPPCL******************************'); END;
/
DECLARE
clXml CLOB;

BEGIN
clXml := '<?xml version="1.0" encoding="WINDOWS-1252"?>
<APPLICATION>
  <INFO>
    <NAME>JPPCL</NAME>
    <DISPLAY>Clientes y créditos SILOKO</DISPLAY>
    <AUTHOR>OpenSystems</AUTHOR>
    <TYPE>PI</TYPE>
    <MODULE>OR</MODULE>
    <MENU>orden</MENU>
  </INFO>
  <MENUFORM>
    <VIEW>
      <MENU>
        <NAME>1ffbf9fd-d4db-4c7d-a5c9-e9826ac5b920</NAME>
        <DISPLAY>'||chr(38)||'amp;Operación</DISPLAY>
        <TOOLTIP>Operación</TOOLTIP>
      </MENU>
      <MENU>
        <NAME>edcadf33-b8bd-4452-a051-142322e97d22</NAME>
        <DISPLAY>'||chr(38)||'amp;Parametrización</DISPLAY>
        <TOOLTIP>Parametrización</TOOLTIP>
      </MENU>
      <MENU>
        <NAME>991b702c-378a-4c82-b4fa-9f4843fecac6</NAME>
        <DISPLAY>'||chr(38)||'amp;Herramientas</DISPLAY>
        <TOOLTIP>Herramientas</TOOLTIP>
      </MENU>
      <MENU>
        <NAME>0c1bc86b-c77d-49d2-9890-890428d3514a</NAME>
        <DISPLAY>'||chr(38)||'amp;Reportes</DISPLAY>
        <TOOLTIP>Reportes</TOOLTIP>
      </MENU>
    </VIEW>
  </MENUFORM>
  <SEARCHFORM>
    <VIEW>
      <SEARCHCONTEXT>
        <FORM>
          <VIEW>
            <NAME>A89EB32A-348A-48B2-A7F1-24A644F16E7C</NAME>
            <DISPLAY>Clientes</DISPLAY>
            <GROUP>
              <PARAMETER>
                <NAME>INUCUSTOMERID</NAME>
                <DISPLAY>Código del cliente</DISPLAY>
                <READONLY>false</READONLY>
                <REQUIRED>false</REQUIRED>
                <VISIBLE>true</VISIBLE>
                <STYLECASE>Normal</STYLECASE>
              </PARAMETER>
  ';
dbms_lob.append(clXml, '            <PARAMETER>
                <NAME>ISBCUSTOMERDOC</NAME>
                <DISPLAY>No. de documento de identidad</DISPLAY>
                <READONLY>false</READONLY>
                <REQUIRED>false</REQUIRED>
                <VISIBLE>true</VISIBLE>
                <STYLECASE>Normal</STYLECASE>
              </PARAMETER>
              <PARAMETER>
                <NAME>ISBDESCRIPTION</NAME>
                <DISPLAY>Nombre del cliente</DISPLAY>
                <READONLY>false</READONLY>
                <REQUIRED>false</REQUIRED>
                <VISIBLE>true</VISIBLE>
                <STYLECASE>Normal</STYLECASE>
              </PARAMETER>
              <PARAMETER>
                <NAME>INUSTRATUMID</NAME>
                <DISPLAY>Estrato</DISPLAY>
                <READONLY>false</READONLY>
                <REQUIRED>false</REQUIRED>
                <VISIBLE>true</VISIBLE>
                <STYLECASE>Normal</STYLECASE>
              </PARAMETER>
              <PARAMETER>
                <NAME>Cursor5</NAME>
                <DISPLAY>Cursor5</DISPLAY>
                <READONLY>false</READONLY>
                <REQUIRED>false</REQUIRED>
                <VISIBLE>false</VISIBLE>
                <STYLECASE>Normal</STYLECASE>
              </PARAMETER>
            </GROUP>
          </VIEW>
        </FORM>
        <GRID>
          <NAME>A89EB32A-348A-48B2-A7F1-24A644F16E7C</NAME>
          <MODEL>
            <ENTITY>
              <NAME>A89EB32A-348A-48B2-A7F1-24A644F16E7C</NA');
dbms_lob.append(clXml, 'ME>
              <ATTRIBUTE>
                <NAME>CUSTOMER_ID</NAME>
                <TYPE>Number</TYPE>
                <KEY>false</KEY>
                <LENGTH>15</LENGTH>
                <SCALE>0</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>DOCUMENT</NAME>
                <TYPE>Varchar</TYPE>
                <KEY>false</KEY>
                <LENGTH>12</LENGTH>
                <SCALE>0</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>DESCRIPTION</NAME>
                <TYPE>Varchar</TYPE>
                <KEY>false</KEY>
                <LENGTH>60</LENGTH>
                <SCALE>0</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>STRATUM_ID</NAME>
                <TYPE>Number</TYPE>
                <KEY>false</KEY>
                <LENGTH>4</LENGTH>
                <SCALE>0</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>REGISTRATION_DATE</NAME>
                <TYPE>Date</TYPE>
                <KEY>false</KEY>
                <LENGTH>7</LENGTH>
                <SCALE>0</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>PARENT_ID</NAME>
                <TYPE>Varchar</TYPE>
                <KEY>false</KEY>
           ');
dbms_lob.append(clXml, '     <LENGTH>2</LENGTH>
                <SCALE>0</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
            </ENTITY>
            <PROXY>
              <NAME>A89EB32A-348A-48B2-A7F1-24A644F16E7C</NAME>
              <PARAMETER>
                <NAME>INUCUSTOMERID</NAME>
                <TYPE>Number</TYPE>
                <MODE>Input</MODE>
                <SCALE>0</SCALE>
                <LENGTH>15</LENGTH>
              </PARAMETER>
              <PARAMETER>
                <NAME>ISBCUSTOMERDOC</NAME>
                <TYPE>Varchar</TYPE>
                <MODE>Input</MODE>
                <SCALE>0</SCALE>
                <LENGTH>12</LENGTH>
              </PARAMETER>
              <PARAMETER>
                <NAME>ISBDESCRIPTION</NAME>
                <TYPE>Varchar</TYPE>
                <MODE>Input</MODE>
                <SCALE>0</SCALE>
                <LENGTH>60</LENGTH>
              </PARAMETER>
              <PARAMETER>
                <NAME>INUSTRATUMID</NAME>
                <TYPE>Number</TYPE>
                <MODE>Input</MODE>
                <SCALE>0</SCALE>
                <LENGTH>4</LENGTH>
              </PARAMETER>
              <PARAMETER>
                <NAME>Cursor5</NAME>
                <TYPE>Cursor</TYPE>
                <MODE>Output</MODE>
                <SCALE>0</SCALE>
                <LENGTH>200</LENGTH>
              </PARAMETER>
              <ENTITY>A89EB32A-348A-48B2-A7F1-24A644F16E7C</ENTITY>
              <SOURCE>OR_U');
dbms_lob.append(clXml, 'IJPPCL.GETCUSTOMERS</SOURCE>
              <TYPE>Service</TYPE>
            </PROXY>
          </MODEL>
          <VIEW>
            <NAME>A89EB32A-348A-48B2-A7F1-24A644F16E7C</NAME>
            <DISPLAY>Clientes</DISPLAY>
            <ATTRIBUTE>
              <NAME>CUSTOMER_ID</NAME>
              <DISPLAY>ID del cliente</DISPLAY>
              <TOOLTIP>ID del cliente</TOOLTIP>
              <VISIBLE>true</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>DOCUMENT</NAME>
              <DISPLAY>Doc. de identidad</DISPLAY>
              <TOOLTIP>Doc. de identidad</TOOLTIP>
              <VISIBLE>true</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>DESCRIPTION</NAME>
              <DISPLAY>Nombre</DISPLAY>
              <TOOLTIP>Nombre</TOOLTIP>
              <VISIBLE>true</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>STRATUM_ID</NAME>
              <DISPLAY>Estrato</DISPLAY>
              <TOOLTIP>Estrato</TOOLTIP>
              <VISIBLE>true</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>REGISTRATION_DATE</NAME>
              <DISPLAY>Fecha de registro</DISPLAY>
              <TOOLTIP>Fecha de registro</TOOLTIP>
              <VISIBLE>true</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>PARENT_ID</NAME>
              <DISPLAY>Parent</DISPLAY>
              <TOOLTIP>Parent</TOOLTIP>
              <VISIBLE>false</VISIBLE>
   ');
dbms_lob.append(clXml, '         </ATTRIBUTE>
            <PARAMETER>
              <NAME>INUCUSTOMERID</NAME>
              <DISPLAY>Código del cliente</DISPLAY>
              <READONLY>false</READONLY>
              <REQUIRED>false</REQUIRED>
              <VISIBLE>true</VISIBLE>
              <STYLECASE>Normal</STYLECASE>
            </PARAMETER>
            <PARAMETER>
              <NAME>ISBCUSTOMERDOC</NAME>
              <DISPLAY>No. de documento de identidad</DISPLAY>
              <READONLY>false</READONLY>
              <REQUIRED>false</REQUIRED>
              <VISIBLE>true</VISIBLE>
              <STYLECASE>Normal</STYLECASE>
            </PARAMETER>
            <PARAMETER>
              <NAME>ISBDESCRIPTION</NAME>
              <DISPLAY>Nombre del cliente</DISPLAY>
              <READONLY>false</READONLY>
              <REQUIRED>false</REQUIRED>
              <VISIBLE>true</VISIBLE>
              <STYLECASE>Normal</STYLECASE>
            </PARAMETER>
            <PARAMETER>
              <NAME>INUSTRATUMID</NAME>
              <DISPLAY>Estrato</DISPLAY>
              <READONLY>false</READONLY>
              <REQUIRED>false</REQUIRED>
              <VISIBLE>true</VISIBLE>
              <STYLECASE>Normal</STYLECASE>
            </PARAMETER>
            <PARAMETER>
              <NAME>Cursor5</NAME>
              <DISPLAY>Cursor5</DISPLAY>
              <READONLY>false</READONLY>
              <REQUIRED>false</REQUIRED>
              <VISIBLE>false</VISIBLE>
              <STYLECASE>Normal<');
dbms_lob.append(clXml, '/STYLECASE>
            </PARAMETER>
            <SINGULARDISPLAY/>
          </VIEW>
        </GRID>
      </SEARCHCONTEXT>
      <SEARCHCONTEXT>
        <FORM>
          <VIEW>
            <NAME>7531F1C8-DA7F-4DFC-B352-063D793D6D84</NAME>
            <DISPLAY>Planes</DISPLAY>
            <GROUP>
              <PARAMETER>
                <NAME>INUPLANID</NAME>
                <DISPLAY>Código del plan</DISPLAY>
                <READONLY>false</READONLY>
                <REQUIRED>false</REQUIRED>
                <VISIBLE>true</VISIBLE>
                <STYLECASE>Normal</STYLECASE>
              </PARAMETER>
              <PARAMETER>
                <NAME>INUCUSTOMERID</NAME>
                <DISPLAY>Código del cliente</DISPLAY>
                <READONLY>false</READONLY>
                <REQUIRED>false</REQUIRED>
                <VISIBLE>true</VISIBLE>
                <STYLECASE>Normal</STYLECASE>
              </PARAMETER>
              <PARAMETER>
                <NAME>INUPLANTYPEID</NAME>
                <DISPLAY>Tipo de plan</DISPLAY>
                <READONLY>false</READONLY>
                <REQUIRED>false</REQUIRED>
                <VISIBLE>true</VISIBLE>
                <STYLECASE>Normal</STYLECASE>
              </PARAMETER>
              <PARAMETER>
                <NAME>ISBACTIVE</NAME>
                <DISPLAY>¿Activo?</DISPLAY>
                <READONLY>false</READONLY>
                <REQUIRED>false</REQUIRED>
                <VISIBLE>true</VISIBLE>
             ');
dbms_lob.append(clXml, '   <STYLECASE>Normal</STYLECASE>
              </PARAMETER>
              <PARAMETER>
                <NAME>Cursor5</NAME>
                <DISPLAY>Cursor5</DISPLAY>
                <READONLY>false</READONLY>
                <REQUIRED>false</REQUIRED>
                <VISIBLE>false</VISIBLE>
                <STYLECASE>Normal</STYLECASE>
              </PARAMETER>
            </GROUP>
          </VIEW>
          <CTRL>
            <NAME>7531F1C8-DA7F-4DFC-B352-063D793D6D84</NAME>
            <PARAMETERS>
              <NAME>INUPLANTYPEID</NAME>
              <COMPONENT>
                <TYPE>CODETEXTFIELD</TYPE>
                <SOURCE>
                  <NAME>1A4C9C51-AEF9-463B-AC48-B8A2AB6AF697</NAME>
                  <MODEL>
                    <ENTITY>
                      <NAME>1A4C9C51-AEF9-463B-AC48-B8A2AB6AF697</NAME>
                      <ATTRIBUTE>
                        <NAME>ID</NAME>
                        <TYPE>Number</TYPE>
                        <KEY>false</KEY>
                        <LENGTH>4</LENGTH>
                        <SCALE>0</SCALE>
                        <ISNULL>true</ISNULL>
                      </ATTRIBUTE>
                      <ATTRIBUTE>
                        <NAME>DESCRIPTION</NAME>
                        <TYPE>Varchar</TYPE>
                        <KEY>false</KEY>
                        <LENGTH>100</LENGTH>
                        <SCALE>0</SCALE>
                        <ISNULL>true</ISNULL>
                      </ATTRIBUTE>
 ');
dbms_lob.append(clXml, '                   </ENTITY>
                    <PROXY>
                      <NAME>1A4C9C51-AEF9-463B-AC48-B8A2AB6AF697</NAME>
                      <ENTITY>1A4C9C51-AEF9-463B-AC48-B8A2AB6AF697</ENTITY>
                      <SOURCE>SELECT 
	or_jpb_plan_type.plan_type_id ID,
	or_jpb_plan_type.description DESCRIPTION
FROM
	or_jpb_plan_type
ORDER BY
	or_jpb_plan_type.description</SOURCE>
                      <TYPE>Statement</TYPE>
                    </PROXY>
                  </MODEL>
                  <VIEW>
                    <NAME>1A4C9C51-AEF9-463B-AC48-B8A2AB6AF697</NAME>
                    <DISPLAY>Tipo de plan</DISPLAY>
                    <ATTRIBUTE>
                      <NAME>ID</NAME>
                      <DISPLAY>ID</DISPLAY>
                      <VISIBLE>true</VISIBLE>
                    </ATTRIBUTE>
                    <ATTRIBUTE>
                      <NAME>DESCRIPTION</NAME>
                      <DISPLAY>Tipo</DISPLAY>
                      <VISIBLE>true</VISIBLE>
                    </ATTRIBUTE>
                    <SINGULARDISPLAY/>
                  </VIEW>
                </SOURCE>
              </COMPONENT>
            </PARAMETERS>
            <PARAMETERS>
              <NAME>ISBACTIVE</NAME>
              <COMPONENT>
                <TYPE>FLAGFIELD</TYPE>
              </COMPONENT>
            </PARAMETERS>
          </CTRL>
        </FORM>
        <GRID>
          <NAME>7531F1C8-DA7F-4DFC-B352-063D793D6D84</NAME>
          <MODEL>
            <');
dbms_lob.append(clXml, 'ENTITY>
              <NAME>7531F1C8-DA7F-4DFC-B352-063D793D6D84</NAME>
              <ATTRIBUTE>
                <NAME>PLAN_ID</NAME>
                <TYPE>Number</TYPE>
                <KEY>false</KEY>
                <LENGTH>15</LENGTH>
                <SCALE>0</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>TIPO</NAME>
                <TYPE>Varchar</TYPE>
                <KEY>false</KEY>
                <LENGTH>4000</LENGTH>
                <SCALE>0</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>CLIENTE</NAME>
                <TYPE>Varchar</TYPE>
                <KEY>false</KEY>
                <LENGTH>4000</LENGTH>
                <SCALE>0</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>ACTIVO_DESC</NAME>
                <TYPE>Varchar</TYPE>
                <KEY>false</KEY>
                <LENGTH>4000</LENGTH>
                <SCALE>0</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>ACTIVO</NAME>
                <TYPE>Varchar</TYPE>
                <KEY>false</KEY>
                <LENGTH>100</LENGTH>
                <SCALE>0</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>PARENT_ID</NAME>
                <TYPE>');
dbms_lob.append(clXml, 'Varchar</TYPE>
                <KEY>false</KEY>
                <LENGTH>2</LENGTH>
                <SCALE>0</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
            </ENTITY>
            <PROXY>
              <NAME>7531F1C8-DA7F-4DFC-B352-063D793D6D84</NAME>
              <PARAMETER>
                <NAME>INUPLANID</NAME>
                <TYPE>Number</TYPE>
                <MODE>Input</MODE>
                <SCALE>0</SCALE>
                <LENGTH>15</LENGTH>
              </PARAMETER>
              <PARAMETER>
                <NAME>INUCUSTOMERID</NAME>
                <TYPE>Number</TYPE>
                <MODE>Input</MODE>
                <SCALE>0</SCALE>
                <LENGTH>15</LENGTH>
              </PARAMETER>
              <PARAMETER>
                <NAME>INUPLANTYPEID</NAME>
                <TYPE>Number</TYPE>
                <MODE>Input</MODE>
                <SCALE>0</SCALE>
                <LENGTH>4</LENGTH>
              </PARAMETER>
              <PARAMETER>
                <NAME>ISBACTIVE</NAME>
                <TYPE>Varchar</TYPE>
                <MODE>Input</MODE>
                <SCALE>0</SCALE>
                <LENGTH>100</LENGTH>
              </PARAMETER>
              <PARAMETER>
                <NAME>Cursor5</NAME>
                <TYPE>Cursor</TYPE>
                <MODE>Output</MODE>
                <SCALE>0</SCALE>
                <LENGTH>200</LENGTH>
              </PARAMETER>
              <ENTITY>7531F1C8-DA7F-4DFC-B35');
dbms_lob.append(clXml, '2-063D793D6D84</ENTITY>
              <SOURCE>OR_UIJPPCL.GETPLANS</SOURCE>
              <TYPE>Service</TYPE>
            </PROXY>
          </MODEL>
          <VIEW>
            <NAME>7531F1C8-DA7F-4DFC-B352-063D793D6D84</NAME>
            <DISPLAY>Planes</DISPLAY>
            <ATTRIBUTE>
              <NAME>PLAN_ID</NAME>
              <DISPLAY>Código del plan</DISPLAY>
              <TOOLTIP>Código del plan</TOOLTIP>
              <VISIBLE>true</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>TIPO</NAME>
              <DISPLAY>Tipo</DISPLAY>
              <TOOLTIP>Tipo</TOOLTIP>
              <VISIBLE>true</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>CLIENTE</NAME>
              <DISPLAY>Cliente</DISPLAY>
              <TOOLTIP>Cliente</TOOLTIP>
              <VISIBLE>true</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>ACTIVO_DESC</NAME>
              <DISPLAY>¿Activo?</DISPLAY>
              <TOOLTIP>¿Activo?</TOOLTIP>
              <VISIBLE>true</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>ACTIVO</NAME>
              <DISPLAY>¿Activo? Oculto</DISPLAY>
              <TOOLTIP>¿Activo? Oculto</TOOLTIP>
              <VISIBLE>false</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>PARENT_ID</NAME>
              <DISPLAY>Parent</DISPLAY>
              <TOOLTIP>Parent</TOOLTIP>
              <VISIBLE>false</VISIBLE>
    ');
dbms_lob.append(clXml, '        </ATTRIBUTE>
            <PARAMETER>
              <NAME>INUPLANID</NAME>
              <DISPLAY>Código del plan</DISPLAY>
              <READONLY>false</READONLY>
              <REQUIRED>false</REQUIRED>
              <VISIBLE>true</VISIBLE>
              <STYLECASE>Normal</STYLECASE>
            </PARAMETER>
            <PARAMETER>
              <NAME>INUCUSTOMERID</NAME>
              <DISPLAY>Código del cliente</DISPLAY>
              <READONLY>false</READONLY>
              <REQUIRED>false</REQUIRED>
              <VISIBLE>true</VISIBLE>
              <STYLECASE>Normal</STYLECASE>
            </PARAMETER>
            <PARAMETER>
              <NAME>INUPLANTYPEID</NAME>
              <DISPLAY>Tipo de plan</DISPLAY>
              <READONLY>false</READONLY>
              <REQUIRED>false</REQUIRED>
              <VISIBLE>true</VISIBLE>
              <STYLECASE>Normal</STYLECASE>
            </PARAMETER>
            <PARAMETER>
              <NAME>ISBACTIVE</NAME>
              <DISPLAY>¿Activo?</DISPLAY>
              <READONLY>false</READONLY>
              <REQUIRED>false</REQUIRED>
              <VISIBLE>true</VISIBLE>
              <STYLECASE>Normal</STYLECASE>
            </PARAMETER>
            <PARAMETER>
              <NAME>Cursor5</NAME>
              <DISPLAY>Cursor5</DISPLAY>
              <READONLY>false</READONLY>
              <REQUIRED>false</REQUIRED>
              <VISIBLE>false</VISIBLE>
              <STYLECASE>Normal</STYLECASE>
            </PAR');
dbms_lob.append(clXml, 'AMETER>
            <SINGULARDISPLAY/>
          </VIEW>
        </GRID>
      </SEARCHCONTEXT>
    </VIEW>
  </SEARCHFORM>
  <TREEFORM>
    <VIEW>
      <QUERY>
        <VIEW>
          <HEADERTITLE>'||chr(38)||'lt;?xml version='||chr(38)||'quot;1.0'||chr(38)||'quot; encoding='||chr(38)||'quot;utf-16'||chr(38)||'quot;?'||chr(38)||'gt;'||chr(38)||'lt;OpenQueryHeaderTitle xmlns:xsi='||chr(38)||'quot;http://www.w3.org/2001/XMLSchema-instance'||chr(38)||'quot; xmlns:xsd='||chr(38)||'quot;http://www.w3.org/2001/XMLSchema'||chr(38)||'quot;'||chr(38)||'gt;'||chr(38)||'lt;Title /'||chr(38)||'gt;'||chr(38)||'lt;Subtitle1 /'||chr(38)||'gt;'||chr(38)||'lt;Subtitle2 /'||chr(38)||'gt;'||chr(38)||'lt;/OpenQueryHeaderTitle'||chr(38)||'gt;</HEADERTITLE>
          <GRID>
            <NAME>E2661711-867A-4075-94F6-BD909454DC10</NAME>
            <MODEL>
              <ENTITY>
                <NAME>E2661711-867A-4075-94F6-BD909454DC10</NAME>
                <ATTRIBUTE>
                  <NAME>CUSTOMER_ID</NAME>
                  <TYPE>Number</TYPE>
                  <KEY>true</KEY>
                  <LENGTH>15</LENGTH>
                  <SCALE>0</SCALE>
                  <ISNULL>true</ISNULL>
                </ATTRIBUTE>
                <ATTRIBUTE>
                  <NAME>DOCUMENT</NAME>
                  <TYPE>Varchar</TYPE>
                  <KEY>false</KEY>
                  <LENGTH>12</LENGTH>
                  <SCALE>0</SCALE>
                  <ISNULL>true</ISNULL>
                </ATTRIBUTE>
                <ATTRIBUTE>
                  <NAME>DESCRIPTION</NAME>
                  <TYPE>Varchar</TYPE>
                  <KEY>false</KEY>
                  <LENGTH>60</LENGTH>
                  <SCALE>0</SCALE>
                ');
dbms_lob.append(clXml, '  <ISNULL>true</ISNULL>
                </ATTRIBUTE>
                <ATTRIBUTE>
                  <NAME>STRATUM_ID</NAME>
                  <TYPE>Number</TYPE>
                  <KEY>false</KEY>
                  <LENGTH>4</LENGTH>
                  <SCALE>0</SCALE>
                  <ISNULL>true</ISNULL>
                </ATTRIBUTE>
                <ATTRIBUTE>
                  <NAME>REGISTRATION_DATE</NAME>
                  <TYPE>Date</TYPE>
                  <KEY>false</KEY>
                  <LENGTH>7</LENGTH>
                  <SCALE>0</SCALE>
                  <ISNULL>true</ISNULL>
                </ATTRIBUTE>
                <ATTRIBUTE>
                  <NAME>PARENT</NAME>
                  <TYPE>Varchar</TYPE>
                  <KEY>false</KEY>
                  <LENGTH>2</LENGTH>
                  <SCALE>0</SCALE>
                  <ISNULL>true</ISNULL>
                </ATTRIBUTE>
              </ENTITY>
              <PROXY>
                <NAME>E2661711-867A-4075-94F6-BD909454DC10</NAME>
                <PARAMETER>
                  <NAME>INUCUSTOMERID</NAME>
                  <TYPE>Number</TYPE>
                  <MODE>Input</MODE>
                  <SCALE>0</SCALE>
                  <LENGTH>15</LENGTH>
                </PARAMETER>
                <PARAMETER>
                  <NAME>Cursor2</NAME>
                  <TYPE>Cursor</TYPE>
                  <MODE>Output</MODE>
                  <SCALE>0</SCALE>
                  <LENGTH>200</LENGTH>
              ');
dbms_lob.append(clXml, '  </PARAMETER>
                <ENTITY>E2661711-867A-4075-94F6-BD909454DC10</ENTITY>
                <SOURCE>OR_UIJPPCL.GETCUSTOMER</SOURCE>
                <TYPE>Service</TYPE>
              </PROXY>
            </MODEL>
            <VIEW>
              <NAME>E2661711-867A-4075-94F6-BD909454DC10</NAME>
              <DISPLAY>Clientes</DISPLAY>
              <ATTRIBUTE>
                <NAME>CUSTOMER_ID</NAME>
                <DISPLAY>ID</DISPLAY>
                <VISIBLE>true</VISIBLE>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>DOCUMENT</NAME>
                <DISPLAY>Doc. de identidad</DISPLAY>
                <VISIBLE>true</VISIBLE>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>DESCRIPTION</NAME>
                <DISPLAY>Nombre</DISPLAY>
                <VISIBLE>true</VISIBLE>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>STRATUM_ID</NAME>
                <DISPLAY>Estrato</DISPLAY>
                <VISIBLE>true</VISIBLE>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>REGISTRATION_DATE</NAME>
                <DISPLAY>Fecha de registro</DISPLAY>
                <VISIBLE>true</VISIBLE>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>PARENT</NAME>
                <DISPLAY>Parent</DISPLAY>
                <VISIBLE>false</VISIBLE>
              </ATTRIBUTE>
              <PARAMETER>
                <NAME>INUCUSTOMERID</NAME>
           ');
dbms_lob.append(clXml, '     <DISPLAY>ID del cliente SILOKO</DISPLAY>
                <READONLY>false</READONLY>
                <REQUIRED>false</REQUIRED>
                <VISIBLE>false</VISIBLE>
                <STYLECASE>Normal</STYLECASE>
              </PARAMETER>
              <PARAMETER>
                <NAME>Cursor2</NAME>
                <DISPLAY>Cursor2</DISPLAY>
                <READONLY>false</READONLY>
                <REQUIRED>false</REQUIRED>
                <VISIBLE>false</VISIBLE>
                <STYLECASE>Normal</STYLECASE>
              </PARAMETER>
              <SINGULARDISPLAY>Cliente</SINGULARDISPLAY>
            </VIEW>
          </GRID>
          <QUERY>
            <VIEW>
              <HEADERTITLE>'||chr(38)||'lt;?xml version='||chr(38)||'quot;1.0'||chr(38)||'quot; encoding='||chr(38)||'quot;utf-16'||chr(38)||'quot;?'||chr(38)||'gt;'||chr(38)||'lt;OpenQueryHeaderTitle xmlns:xsi='||chr(38)||'quot;http://www.w3.org/2001/XMLSchema-instance'||chr(38)||'quot; xmlns:xsd='||chr(38)||'quot;http://www.w3.org/2001/XMLSchema'||chr(38)||'quot;'||chr(38)||'gt;'||chr(38)||'lt;Title /'||chr(38)||'gt;'||chr(38)||'lt;Subtitle1 /'||chr(38)||'gt;'||chr(38)||'lt;Subtitle2 /'||chr(38)||'gt;'||chr(38)||'lt;/OpenQueryHeaderTitle'||chr(38)||'gt;</HEADERTITLE>
              <GRID>
                <NAME>EAEC4455-6D6F-4982-86CB-6A110C21B3B6</NAME>
                <MODEL>
                  <ENTITY>
                    <NAME>EAEC4455-6D6F-4982-86CB-6A110C21B3B6</NAME>
                    <ATTRIBUTE>
                      <NAME>PLAN_ID</NAME>
                      <TYPE>Number</TYPE>
                      <KEY>true</KEY>
                      <LENGTH>15</LENGTH>
                      <SCALE>0</SCALE>
                      <ISNULL>true</');
dbms_lob.append(clXml, 'ISNULL>
                    </ATTRIBUTE>
                    <ATTRIBUTE>
                      <NAME>TIPO</NAME>
                      <TYPE>Varchar</TYPE>
                      <KEY>false</KEY>
                      <LENGTH>4000</LENGTH>
                      <SCALE>0</SCALE>
                      <ISNULL>true</ISNULL>
                    </ATTRIBUTE>
                    <ATTRIBUTE>
                      <NAME>ACTIVO</NAME>
                      <TYPE>Varchar</TYPE>
                      <KEY>false</KEY>
                      <LENGTH>100</LENGTH>
                      <SCALE>0</SCALE>
                      <ISNULL>true</ISNULL>
                    </ATTRIBUTE>
                    <ATTRIBUTE>
                      <NAME>ACTIVO_DESC</NAME>
                      <TYPE>Varchar</TYPE>
                      <KEY>false</KEY>
                      <LENGTH>4000</LENGTH>
                      <SCALE>0</SCALE>
                      <ISNULL>true</ISNULL>
                    </ATTRIBUTE>
                    <ATTRIBUTE>
                      <NAME>PARENT_ID</NAME>
                      <TYPE>Number</TYPE>
                      <KEY>false</KEY>
                      <LENGTH>15</LENGTH>
                      <SCALE>0</SCALE>
                      <ISNULL>true</ISNULL>
                    </ATTRIBUTE>
                  </ENTITY>
                  <PROXY>
                    <NAME>EAEC4455-6D6F-4982-86CB-6A110C21B3B6</NAME>
                    <PARAMETER>
                      <NAME>INUPLANID');
dbms_lob.append(clXml, '</NAME>
                      <TYPE>Number</TYPE>
                      <MODE>Input</MODE>
                      <SCALE>0</SCALE>
                      <LENGTH>15</LENGTH>
                    </PARAMETER>
                    <PARAMETER>
                      <NAME>Cursor2</NAME>
                      <TYPE>Cursor</TYPE>
                      <MODE>Output</MODE>
                      <SCALE>0</SCALE>
                      <LENGTH>200</LENGTH>
                    </PARAMETER>
                    <ENTITY>EAEC4455-6D6F-4982-86CB-6A110C21B3B6</ENTITY>
                    <SOURCE>OR_UIJPPCL.GETPLAN</SOURCE>
                    <TYPE>Service</TYPE>
                  </PROXY>
                </MODEL>
                <VIEW>
                  <NAME>EAEC4455-6D6F-4982-86CB-6A110C21B3B6</NAME>
                  <DISPLAY>Planes</DISPLAY>
                  <ATTRIBUTE>
                    <NAME>PLAN_ID</NAME>
                    <DISPLAY>Código del plan</DISPLAY>
                    <VISIBLE>true</VISIBLE>
                  </ATTRIBUTE>
                  <ATTRIBUTE>
                    <NAME>TIPO</NAME>
                    <DISPLAY>Tipo</DISPLAY>
                    <VISIBLE>true</VISIBLE>
                  </ATTRIBUTE>
                  <ATTRIBUTE>
                    <NAME>ACTIVO</NAME>
                    <DISPLAY>Activo oculto</DISPLAY>
                    <VISIBLE>false</VISIBLE>
                  </ATTRIBUTE>
                  <ATTRIBUTE>
                    <NAME>ACTIVO_DESC</NAME>
 ');
dbms_lob.append(clXml, '                   <DISPLAY>Activo</DISPLAY>
                    <VISIBLE>true</VISIBLE>
                  </ATTRIBUTE>
                  <ATTRIBUTE>
                    <NAME>PARENT_ID</NAME>
                    <DISPLAY>Parent</DISPLAY>
                    <VISIBLE>false</VISIBLE>
                  </ATTRIBUTE>
                  <PARAMETER>
                    <NAME>INUPLANID</NAME>
                    <DISPLAY>Código del plan</DISPLAY>
                    <READONLY>false</READONLY>
                    <REQUIRED>false</REQUIRED>
                    <VISIBLE>false</VISIBLE>
                    <STYLECASE>Normal</STYLECASE>
                  </PARAMETER>
                  <PARAMETER>
                    <NAME>Cursor2</NAME>
                    <DISPLAY>Cursor2</DISPLAY>
                    <READONLY>false</READONLY>
                    <REQUIRED>false</REQUIRED>
                    <VISIBLE>false</VISIBLE>
                    <STYLECASE>Normal</STYLECASE>
                  </PARAMETER>
                  <SINGULARDISPLAY>Plan</SINGULARDISPLAY>
                </VIEW>
                <CTRL>
                  <QUERYTOGO>E2661711-867A-4075-94F6-BD909454DC10</QUERYTOGO>
                </CTRL>
              </GRID>
            </VIEW>
            <CTRL>
              <NAME>EAEC4455-6D6F-4982-86CB-6A110C21B3B6</NAME>
              <LOADCHILDS>true</LOADCHILDS>
              <CHILDSSERV>OR_UIJPPCL.GETCUSTOMERPLANS</CHILDSSERV>
              <PARENTSERV>OR_UIJPPCL.GETPLANPARENT</PARE');
dbms_lob.append(clXml, 'NTSERV>
              <PRIMARYKEY>PLAN_ID</PRIMARYKEY>
              <FOREINGKEY>PARENT_ID</FOREINGKEY>
              <BASENAME>OR_JPB_PLAN</BASENAME>
              <BASEIDNAME>PLAN_ID</BASEIDNAME>
              <ISSEARCH>true</ISSEARCH>
              <SEARCHENTITY>7531F1C8-DA7F-4DFC-B352-063D793D6D84</SEARCHENTITY>
            </CTRL>
          </QUERY>
        </VIEW>
        <CTRL>
          <NAME>E2661711-867A-4075-94F6-BD909454DC10</NAME>
          <LOADCHILDS>true</LOADCHILDS>
          <PRIMARYKEY>CUSTOMER_ID</PRIMARYKEY>
          <FOREINGKEY>PARENT</FOREINGKEY>
          <BASENAME>OR_JPB_CUSTOMER</BASENAME>
          <BASEIDNAME>CUSTOMER_ID</BASEIDNAME>
          <ISSEARCH>true</ISSEARCH>
          <SEARCHENTITY>A89EB32A-348A-48B2-A7F1-24A644F16E7C</SEARCHENTITY>
        </CTRL>
      </QUERY>
    </VIEW>
  </TREEFORM>
</APPLICATION>
');

ge_boapplication.Save(clXml);
commit;
exception when others then
rollback;
ut_trace.trace('||**ERROR:'|| sqlerrm);
raise;
END;
/
BEGIN ut_trace.trace('********************FIN  proceso de objeto:JPPCL******************************'); end;
/

BEGIN
    EXECUTE IMMEDIATE ''||
        'CREATE OR REPLACE FUNCTION fblB64Clob06052018223030953670'|| chr(10) ||
        '('|| chr(10) ||
            'iclFileContent in clob'|| chr(10) ||
        ')'|| chr(10) ||
        'RETURN BLOB'|| chr(10) ||
        'AS LANGUAGE JAVA NAME ''os.ge.util.Decoder.decodeB64CLOB(java.sql.Clob) return java.sql.Blob'';';
END;
/
BEGIN
    EXECUTE IMMEDIATE 'GRANT EXECUTE ON fblB64Clob06052018223030953670 TO SYSTEM_OBJ_PRIVS_ROLE';
END;
/
DECLARE
    sbDistFileId        ge_distribution_file.distribution_file_id%type;
    blFileContent       ge_distribution_file.app_html%type;
    clB64FileContent    clob;
BEGIN
    sbDistFileId        := 'JPPCL';
    dbms_lob.createtemporary(clB64FileContent, TRUE);
dbms_lob.append(clB64FileContent, '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
8s8q/ekM0Z9nWOMmRFy5oAv5Q5d1xZPcVlugaP4B9EdaHWFv9VaAdkmt11QM6xi+CCMUAQl8YKCm
rpMsMNef+mkPSQo7TaSED6s9SxI0P04y2FX++jjrUOxSZW+GVemck29QSwECHgMKAAAAAADPs6ZM
AAAAAAAAAAAAAAAABgAYAAAAAAAAABAA/0EAAAAASlBQQ0wvVVQFAANWyO9adXgLAAEE9QEAAAT0
AQAAUEsBAh4DCgAAAAAAz7OmTAAAAAAAAAAAAAAAABAAGAAAAAAAAAAQAP9BQAAAAEpQUENML3Jl
c291cmNlcy9VVAUAA1bI71p1eAsAAQT1AQAABPQBAABQSwECHgMUAAIACADPs6ZMi2+BjhkCAADU
CQAAHAAYAAAAAAABAAAA/4GKAAAASlBQQ0wvcmVzb3VyY2VzL0FsbE1vZGVscy5qc1VUBQADVsjv
WnV4CwABBPUBAAAE9AEAAFBLAQIeAxQAAgAIAM+zpkzuQk/HYQIAACQIAAAcABgAAAAAAAEAAAD/
gfkCAABKUFBDTC9yZXNvdXJjZXMvQWxsU3RvcmVzLmpzVVQFAANWyO9adXgLAAEE9QEAAAT0AQAA
UEsBAh4DFAACAAgAz7OmTAbC8RIHBwAA3SAAAAwAGAAAAAAAAQAAAP+BsAUAAEpQUENML2FwcC5q
c1VUBQADVsjvWnV4CwABBPUBAAAE9AEAAFBLAQIeAxQAAgAIAM+zpkyIlYiqWwEAAJgCAAAQABgA
AAAAAAEAAAD/gf0MAABKUFBDTC9pbmRleC5odG1sVVQFAANWyO9adXgLAAEE9QEAAAT0AQAAUEsF
BgAAAAAGAAYADgIAAKIOAAAAAA==');
blFileContent := fblB64Clob06052018223030953670(clB64FileContent);
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
    EXECUTE IMMEDIATE 'DROP FUNCTION fblB64Clob06052018223030953670';
END;
/

create OR replace PACKAGE or_wiJPPCL IS
	type tytbStringTable IS TABLE OF varchar2(32767) INDEX BY varchar2(4000);
    gtbAdditionalConditions tytbStringTable;
    gtbProtectionFormats    tytbStringTable;


    FUNCTION frfLOV_1 
    return sys_refcursor;

END or_wiJPPCL;
/
create OR replace PACKAGE body or_wiJPPCL IS

    FUNCTION frfLOV_1 
    return sys_refcursor
    IS
        rfResult sys_refcursor;
    BEGIN
        open rfResult for
            SELECT t.* FROM (SELECT 
	or_jpb_plan_type.plan_type_id ID,
	or_jpb_plan_type.description DESCRIPTION
FROM
	or_jpb_plan_type
ORDER BY
	or_jpb_plan_type.description) t;

        return rfResult;
    EXCEPTION
        when login_denied OR ex.CONTROLLED_ERROR OR pkconstante.exERROR_LEVEL2 then
            raise;
        when others then
            Errors.SetError;
            raise ex.CONTROLLED_ERROR;
    END frfLOV_1;
BEGIN
null;
END or_wiJPPCL;

/
