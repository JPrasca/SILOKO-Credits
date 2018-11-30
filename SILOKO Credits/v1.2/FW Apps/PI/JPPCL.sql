BEGIN ut_trace.trace('********************Comenzar proceso de objeto:JPPCL******************************'); END;
/
DECLARE
clXml CLOB;

BEGIN
clXml := '<?xml version="1.0" encoding="WINDOWS-1252"?>
<APPLICATION>
  <INFO>
    <NAME>JPPCL</NAME>
    <DISPLAY>SILOKO Credits (Funcionario)</DISPLAY>
    <AUTHOR>OpenSystems</AUTHOR>
    <TYPE>PI</TYPE>
    <MODULE>OR</MODULE>
    <SITE>
      <APPLICATION>JPPCL</APPLICATION>
      <QUERY>0fef3474-010f-439a-9a63-dd0b1724edff</QUERY>
    </SITE>
    <MENU>orden</MENU>
  </INFO>
  <MENUFORM>
    <VIEW>
      <MENU>
        <NAME>0fef3474-010f-439a-9a63-dd0b1724edff</NAME>
        <DISPLAY>'||chr(38)||'amp;Parametrización</DISPLAY>
        <TOOLTIP>Parametrización</TOOLTIP>
      </MENU>
      <MENU>
        <NAME>af8883ee-b77a-40c1-bd56-22562bb08c35</NAME>
        <DISPLAY>'||chr(38)||'amp;Operación</DISPLAY>
        <TOOLTIP>Operación</TOOLTIP>
      </MENU>
      <MENU>
        <NAME>5776efb2-5ec9-4c79-ac62-7801e7439bee</NAME>
        <DISPLAY>'||chr(38)||'amp;Herramientas</DISPLAY>
        <TOOLTIP>Herramientas</TOOLTIP>
      </MENU>
      <MENU>
        <NAME>6736e06a-5d98-46f4-860f-72cae84a2ce8</NAME>
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
            <NAME>EC3A8BB7-6C17-48B1-BB6F-407CEDC60320</NAME>
            <DISPLAY>Clientes</DISPLAY>
            <GROUP>
              <PARAMETER>
                <NAME>INUCUSTOMERID</NAME>
                <DISPLAY>Código</DISPLAY>
                <READONLY>false</READONLY>
                <REQUIRED>false</REQUIRED>
     ';
dbms_lob.append(clXml, '           <VISIBLE>true</VISIBLE>
                <STYLECASE>Normal</STYLECASE>
              </PARAMETER>
              <PARAMETER>
                <NAME>ISBCUSTOMERDOC</NAME>
                <DISPLAY>Identificación</DISPLAY>
                <READONLY>false</READONLY>
                <REQUIRED>false</REQUIRED>
                <VISIBLE>true</VISIBLE>
                <STYLECASE>Normal</STYLECASE>
              </PARAMETER>
              <PARAMETER>
                <NAME>ISBDESCRIPTION</NAME>
                <DISPLAY>Nombre</DISPLAY>
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
          <CTRL>
            <NAME>EC3A8BB7-6C17-48B1-BB6F-407CEDC60320</NAME>
            <PARAMETERS>
   ');
dbms_lob.append(clXml, '           <NAME>INUSTRATUMID</NAME>
              <COMPONENT>
                <TYPE>CODETEXTFIELD</TYPE>
                <SOURCE>
                  <NAME>C4D4C73F-DF4F-4485-91E5-12006C20D3F0</NAME>
                  <MODEL>
                    <ENTITY>
                      <NAME>C4D4C73F-DF4F-4485-91E5-12006C20D3F0</NAME>
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
                    </ENTITY>
                    <PROXY>
                      <NAME>C4D4C73F-DF4F-4485-91E5-12006C20D3F0</NAME>
                      <ENTITY>C4D4C73F-DF4F-4485-91E5-12006C20D3F0</ENTITY>
                      <SOURCE>SELECT
	/*+ index(OR_JPB_STRATUM UX_OR_JPB_STRATUM01)*/
	OR_JPB_STRATUM.stratum_id ID,
	OR_JPB_STRATUM.description DESCRIPTION
FROM
	OR_JPB_STRATUM
ORDER BY
	OR_JPB_STRATUM.description</SOURCE>
                      <TYPE>Statement</TYPE>
                    </PROXY>
          ');
dbms_lob.append(clXml, '        </MODEL>
                  <VIEW>
                    <NAME>C4D4C73F-DF4F-4485-91E5-12006C20D3F0</NAME>
                    <DISPLAY>Estratos</DISPLAY>
                    <ATTRIBUTE>
                      <NAME>ID</NAME>
                      <DISPLAY>ID</DISPLAY>
                      <VISIBLE>true</VISIBLE>
                    </ATTRIBUTE>
                    <ATTRIBUTE>
                      <NAME>DESCRIPTION</NAME>
                      <DISPLAY>Estrato</DISPLAY>
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
          <NAME>EC3A8BB7-6C17-48B1-BB6F-407CEDC60320</NAME>
          <MODEL>
            <ENTITY>
              <NAME>EC3A8BB7-6C17-48B1-BB6F-407CEDC60320</NAME>
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
                <NAM');
dbms_lob.append(clXml, 'E>DESCRIPTION</NAME>
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
                <LENGTH>2</LENGTH>
                <SCALE>0</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
            </ENTITY>
            <PROXY>
              <NAME>EC3A8BB7-6C17-48B1-BB6F-407CEDC60320</NAME>
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
                <');
dbms_lob.append(clXml, 'MODE>Input</MODE>
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
              <ENTITY>EC3A8BB7-6C17-48B1-BB6F-407CEDC60320</ENTITY>
              <SOURCE>OR_UIJPPCL.GETCUSTOMERS</SOURCE>
              <TYPE>Service</TYPE>
            </PROXY>
          </MODEL>
          <VIEW>
            <NAME>EC3A8BB7-6C17-48B1-BB6F-407CEDC60320</NAME>
            <DISPLAY>Clientes</DISPLAY>
            <ATTRIBUTE>
              <NAME>CUSTOMER_ID</NAME>
              <DISPLAY>Código</DISPLAY>
              <TOOLTIP>Código</TOOLTIP>
              <VISIBLE>true</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>DOCUMENT</NAME>
              <DISPLAY>Identificación</DISPLAY>
              <TOOLTIP>Identificación</TOOLTIP>
   ');
dbms_lob.append(clXml, '           <VISIBLE>true</VISIBLE>
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
              <VISIBLE>true</VISIBLE>
            </ATTRIBUTE>
            <PARAMETER>
              <NAME>INUCUSTOMERID</NAME>
              <DISPLAY>Código</DISPLAY>
              <READONLY>false</READONLY>
              <REQUIRED>false</REQUIRED>
              <VISIBLE>true</VISIBLE>
              <STYLECASE>Normal</STYLECASE>
            </PARAMETER>
            <PARAMETER>
              <NAME>ISBCUSTOMERDOC</NAME>
              <DISPLAY>Identificación</DISPLAY>
              <READONLY>false</READONLY>
              <REQUIRED>false</REQUIRED>
              <VISIBLE>true</VISIBLE>
              <STYLECASE>Normal</STYLECASE>
            </PAR');
dbms_lob.append(clXml, 'AMETER>
            <PARAMETER>
              <NAME>ISBDESCRIPTION</NAME>
              <DISPLAY>Nombre</DISPLAY>
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
            <SINGULARDISPLAY/>
          </VIEW>
        </GRID>
      </SEARCHCONTEXT>
      <SEARCHCONTEXT>
        <FORM>
          <VIEW>
            <NAME>86D621DE-4B0D-41C9-B23E-48FCB3AD5E2E</NAME>
            <DISPLAY>Planes</DISPLAY>
            <GROUP>
              <PARAMETER>
                <NAME>INUPLANID</NAME>
                <DISPLAY>Código</DISPLAY>
                <READONLY>false</READONLY>
                <REQUIRED>false</REQUIRED>
                <VISIBLE>true</VISIBLE>
                <STYLECASE>Normal</STYLECASE>
              </PARAMETER>
              <PARAMETER>
                <NA');
dbms_lob.append(clXml, 'ME>INUCUSTOMERID</NAME>
                <DISPLAY>Cliente</DISPLAY>
                <READONLY>false</READONLY>
                <REQUIRED>false</REQUIRED>
                <VISIBLE>true</VISIBLE>
                <STYLECASE>Normal</STYLECASE>
              </PARAMETER>
              <PARAMETER>
                <NAME>INUPLANTYPEID</NAME>
                <DISPLAY>Tipo</DISPLAY>
                <READONLY>false</READONLY>
                <REQUIRED>false</REQUIRED>
                <VISIBLE>true</VISIBLE>
                <STYLECASE>Normal</STYLECASE>
              </PARAMETER>
              <PARAMETER>
                <NAME>ISBACTIVE</NAME>
                <DISPLAY>Activo</DISPLAY>
                <READONLY>false</READONLY>
                <REQUIRED>false</REQUIRED>
                <VISIBLE>true</VISIBLE>
                <STYLECASE>Upper</STYLECASE>
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
            <NAME>86D621DE-4B0D-41C9-B23E-48FCB3AD5E2E</NAME>
            <PARAMETERS>
              <NAME>INUCUSTOMERID</NAME>
              <COMPONENT>
                <TYPE>HEAVYSELECTLISTFIELD</TYPE>
                <SOURCE>
                  <NAME>162C40');
dbms_lob.append(clXml, '56-914F-4F79-86AF-A2B067D76336</NAME>
                  <MODEL>
                    <ENTITY>
                      <NAME>162C4056-914F-4F79-86AF-A2B067D76336</NAME>
                      <ATTRIBUTE>
                        <NAME>ID</NAME>
                        <TYPE>Number</TYPE>
                        <KEY>false</KEY>
                        <LENGTH>15</LENGTH>
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
                    </ENTITY>
                    <PROXY>
                      <NAME>162C4056-914F-4F79-86AF-A2B067D76336</NAME>
                      <PARAMETER>
                        <NAME>NOMBRE</NAME>
                        <TYPE>Varchar</TYPE>
                        <MODE>Input</MODE>
                        <SCALE>0</SCALE>
                        <LENGTH>60</LENGTH>
                      </PARAMETER>
                      <PARAMETER>
                        <NAME>IDENTIFICACION</NAME>
                        <TYPE>Varchar</TYPE>
                        <MODE>Input</MODE>
                        <SCALE>0</SCALE>
                        <LENGTH>12</LENGTH>
');
dbms_lob.append(clXml, '                      </PARAMETER>
                      <ENTITY>162C4056-914F-4F79-86AF-A2B067D76336</ENTITY>
                      <SOURCE>SELECT
	/*+ index(OR_JPB_CUSTOMER UX_OR_JPB_CUSTOMER01)*/
	OR_JPB_CUSTOMER.customer_id ID,
	OR_JPB_CUSTOMER.description DESCRIPTION
FROM
	OR_JPB_CUSTOMER
'||chr(64)||'WHERE '||chr(64)||' 
'||chr(64)||'upper(OR_JPB_CUSTOMER.description) LIKE :Nombre '||chr(64)||' 
'||chr(64)||'OR_JPB_CUSTOMER.document LIKE :Identificacion '||chr(64)||'</SOURCE>
                      <TYPE>Statement</TYPE>
                    </PROXY>
                  </MODEL>
                  <VIEW>
                    <NAME>162C4056-914F-4F79-86AF-A2B067D76336</NAME>
                    <DISPLAY>Clientes</DISPLAY>
                    <ATTRIBUTE>
                      <NAME>ID</NAME>
                      <DISPLAY>Identificador</DISPLAY>
                      <VISIBLE>true</VISIBLE>
                    </ATTRIBUTE>
                    <ATTRIBUTE>
                      <NAME>DESCRIPTION</NAME>
                      <DISPLAY>Descripción</DISPLAY>
                      <VISIBLE>true</VISIBLE>
                    </ATTRIBUTE>
                    <PARAMETER>
                      <NAME>NOMBRE</NAME>
                      <DISPLAY>Nombre</DISPLAY>
                      <READONLY>false</READONLY>
                      <REQUIRED>false</REQUIRED>
                      <VISIBLE>false</VISIBLE>
                      <STYLECASE>Normal</STYLECASE>
                    </PARAMETER>
                    <PARAMETER>
                      <NAME>IDENTIFICACION');
dbms_lob.append(clXml, '</NAME>
                      <DISPLAY>Identificación</DISPLAY>
                      <READONLY>false</READONLY>
                      <REQUIRED>false</REQUIRED>
                      <VISIBLE>false</VISIBLE>
                      <STYLECASE>Normal</STYLECASE>
                    </PARAMETER>
                    <SINGULARDISPLAY/>
                  </VIEW>
                </SOURCE>
              </COMPONENT>
            </PARAMETERS>
            <PARAMETERS>
              <NAME>INUPLANTYPEID</NAME>
              <COMPONENT>
                <TYPE>CODETEXTFIELD</TYPE>
                <SOURCE>
                  <NAME>F055EA65-95DE-4767-855C-4A54117A2AF5</NAME>
                  <MODEL>
                    <ENTITY>
                      <NAME>F055EA65-95DE-4767-855C-4A54117A2AF5</NAME>
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
                    </ENTITY>
                 ');
dbms_lob.append(clXml, '   <PROXY>
                      <NAME>F055EA65-95DE-4767-855C-4A54117A2AF5</NAME>
                      <ENTITY>F055EA65-95DE-4767-855C-4A54117A2AF5</ENTITY>
                      <SOURCE>SELECT
	/*+ index(OR_JPB_PLAN_TYPE UX_OR_JPB_PLAN_TYPE01) */
	OR_JPB_PLAN_TYPE.plan_type_id ID,
	upper(OR_JPB_PLAN_TYPE.description) DESCRIPTION
FROM
	OR_JPB_PLAN_TYPE
ORDER BY
	upper(OR_JPB_PLAN_TYPE.description) </SOURCE>
                      <TYPE>Statement</TYPE>
                    </PROXY>
                  </MODEL>
                  <VIEW>
                    <NAME>F055EA65-95DE-4767-855C-4A54117A2AF5</NAME>
                    <DISPLAY>Tipo</DISPLAY>
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
          <NAME>86D621DE-4B0D-41C9-B23E-48FCB3AD5E2E</NAME>
          <MODEL>');
dbms_lob.append(clXml, '
            <ENTITY>
              <NAME>86D621DE-4B0D-41C9-B23E-48FCB3AD5E2E</NAME>
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
        ');
dbms_lob.append(clXml, '        <TYPE>Varchar</TYPE>
                <KEY>false</KEY>
                <LENGTH>2</LENGTH>
                <SCALE>0</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
            </ENTITY>
            <PROXY>
              <NAME>86D621DE-4B0D-41C9-B23E-48FCB3AD5E2E</NAME>
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
              <ENTITY>86D621DE');
dbms_lob.append(clXml, '-4B0D-41C9-B23E-48FCB3AD5E2E</ENTITY>
              <SOURCE>OR_UIJPPCL.GETPLANS</SOURCE>
              <TYPE>Service</TYPE>
            </PROXY>
          </MODEL>
          <VIEW>
            <NAME>86D621DE-4B0D-41C9-B23E-48FCB3AD5E2E</NAME>
            <DISPLAY>Planes</DISPLAY>
            <ATTRIBUTE>
              <NAME>PLAN_ID</NAME>
              <DISPLAY>Código</DISPLAY>
              <TOOLTIP>Código</TOOLTIP>
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
              <DISPLAY>Activo</DISPLAY>
              <TOOLTIP>Activo</TOOLTIP>
              <VISIBLE>true</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>ACTIVO</NAME>
              <DISPLAY>Activo Oculto</DISPLAY>
              <TOOLTIP>Activo Oculto</TOOLTIP>
              <VISIBLE>false</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>PARENT_ID</NAME>
              <DISPLAY>Parent</DISPLAY>
              <TOOLTIP>Parent</TOOLTIP>
              <VISIBLE>false</VISIBLE>
            </AT');
dbms_lob.append(clXml, 'TRIBUTE>
            <PARAMETER>
              <NAME>INUPLANID</NAME>
              <DISPLAY>Código</DISPLAY>
              <READONLY>false</READONLY>
              <REQUIRED>false</REQUIRED>
              <VISIBLE>true</VISIBLE>
              <STYLECASE>Normal</STYLECASE>
            </PARAMETER>
            <PARAMETER>
              <NAME>INUCUSTOMERID</NAME>
              <DISPLAY>Cliente</DISPLAY>
              <READONLY>false</READONLY>
              <REQUIRED>false</REQUIRED>
              <VISIBLE>true</VISIBLE>
              <STYLECASE>Normal</STYLECASE>
            </PARAMETER>
            <PARAMETER>
              <NAME>INUPLANTYPEID</NAME>
              <DISPLAY>Tipo</DISPLAY>
              <READONLY>false</READONLY>
              <REQUIRED>false</REQUIRED>
              <VISIBLE>true</VISIBLE>
              <STYLECASE>Normal</STYLECASE>
            </PARAMETER>
            <PARAMETER>
              <NAME>ISBACTIVE</NAME>
              <DISPLAY>Activo</DISPLAY>
              <READONLY>false</READONLY>
              <REQUIRED>false</REQUIRED>
              <VISIBLE>true</VISIBLE>
              <STYLECASE>Upper</STYLECASE>
            </PARAMETER>
            <PARAMETER>
              <NAME>Cursor5</NAME>
              <DISPLAY>Cursor5</DISPLAY>
              <READONLY>false</READONLY>
              <REQUIRED>false</REQUIRED>
              <VISIBLE>false</VISIBLE>
              <STYLECASE>Normal</STYLECASE>
            </PARAMETER>
            <SINGULARDISPLAY/>
    ');
dbms_lob.append(clXml, '      </VIEW>
        </GRID>
      </SEARCHCONTEXT>
      <SEARCHCONTEXT>
        <FORM>
          <VIEW>
            <NAME>04D4D658-4BF7-4E1B-9E2E-0486F0834113</NAME>
            <DISPLAY>Créditos</DISPLAY>
            <GROUP>
              <PARAMETER>
                <NAME>INUCREDITID</NAME>
                <DISPLAY>Código</DISPLAY>
                <READONLY>false</READONLY>
                <REQUIRED>false</REQUIRED>
                <VISIBLE>true</VISIBLE>
                <STYLECASE>Normal</STYLECASE>
              </PARAMETER>
              <PARAMETER>
                <NAME>INUCUSTOMERID</NAME>
                <DISPLAY>Cliente</DISPLAY>
                <READONLY>false</READONLY>
                <REQUIRED>false</REQUIRED>
                <VISIBLE>true</VISIBLE>
                <STYLECASE>Normal</STYLECASE>
              </PARAMETER>
              <PARAMETER>
                <NAME>INUSTOREID</NAME>
                <DISPLAY>Almacén</DISPLAY>
                <READONLY>false</READONLY>
                <REQUIRED>false</REQUIRED>
                <VISIBLE>true</VISIBLE>
                <STYLECASE>Normal</STYLECASE>
              </PARAMETER>
              <PARAMETER>
                <NAME>Cursor4</NAME>
                <DISPLAY>Cursor4</DISPLAY>
                <READONLY>false</READONLY>
                <REQUIRED>false</REQUIRED>
                <VISIBLE>false</VISIBLE>
                <STYLECASE>Normal</STYLECASE>
              </PARAMETER>
            </GROUP>
          </VIEW>');
dbms_lob.append(clXml, '
          <CTRL>
            <NAME>04D4D658-4BF7-4E1B-9E2E-0486F0834113</NAME>
            <PARAMETERS>
              <NAME>INUCUSTOMERID</NAME>
              <COMPONENT>
                <TYPE>HEAVYSELECTLISTFIELD</TYPE>
                <SOURCE>
                  <NAME>4AD2EC05-FBDF-49B5-8F6C-98F553F3A496</NAME>
                  <MODEL>
                    <ENTITY>
                      <NAME>4AD2EC05-FBDF-49B5-8F6C-98F553F3A496</NAME>
                      <ATTRIBUTE>
                        <NAME>ID</NAME>
                        <TYPE>Number</TYPE>
                        <KEY>false</KEY>
                        <LENGTH>15</LENGTH>
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
                    </ENTITY>
                    <PROXY>
                      <NAME>4AD2EC05-FBDF-49B5-8F6C-98F553F3A496</NAME>
                      <PARAMETER>
                        <NAME>NOMBRE</NAME>
                        <TYPE>Varchar</TYPE>
                        <MODE>Input</MODE>
                        <SCALE>0</SCALE>
                        <LENGTH>60</LENGTH>
                 ');
dbms_lob.append(clXml, '     </PARAMETER>
                      <PARAMETER>
                        <NAME>IDENTIFICACION</NAME>
                        <TYPE>Varchar</TYPE>
                        <MODE>Input</MODE>
                        <SCALE>0</SCALE>
                        <LENGTH>12</LENGTH>
                      </PARAMETER>
                      <ENTITY>4AD2EC05-FBDF-49B5-8F6C-98F553F3A496</ENTITY>
                      <SOURCE>SELECT
	/*+ index(OR_JPB_CUSTOMER UX_OR_JPB_CUSTOMER01)*/
	OR_JPB_CUSTOMER.customer_id ID,
	OR_JPB_CUSTOMER.description DESCRIPTION
FROM
	OR_JPB_CUSTOMER
'||chr(64)||'WHERE '||chr(64)||'  
'||chr(64)||'upper(OR_JPB_CUSTOMER.description) LIKE :Nombre '||chr(64)||' 
'||chr(64)||'OR_JPB_CUSTOMER.document LIKE :Identificacion '||chr(64)||'</SOURCE>
                      <TYPE>Statement</TYPE>
                    </PROXY>
                  </MODEL>
                  <VIEW>
                    <NAME>4AD2EC05-FBDF-49B5-8F6C-98F553F3A496</NAME>
                    <DISPLAY>Clientes</DISPLAY>
                    <ATTRIBUTE>
                      <NAME>ID</NAME>
                      <DISPLAY>ID</DISPLAY>
                      <VISIBLE>true</VISIBLE>
                    </ATTRIBUTE>
                    <ATTRIBUTE>
                      <NAME>DESCRIPTION</NAME>
                      <DISPLAY>Cliente</DISPLAY>
                      <VISIBLE>true</VISIBLE>
                    </ATTRIBUTE>
                    <PARAMETER>
                      <NAME>NOMBRE</NAME>
                      <DISPLAY>Nombre</DISPLAY>
                      <READONLY>false</RE');
dbms_lob.append(clXml, 'ADONLY>
                      <REQUIRED>false</REQUIRED>
                      <VISIBLE>false</VISIBLE>
                      <STYLECASE>Normal</STYLECASE>
                    </PARAMETER>
                    <PARAMETER>
                      <NAME>IDENTIFICACION</NAME>
                      <DISPLAY>Identificación</DISPLAY>
                      <READONLY>false</READONLY>
                      <REQUIRED>false</REQUIRED>
                      <VISIBLE>false</VISIBLE>
                      <STYLECASE>Normal</STYLECASE>
                    </PARAMETER>
                    <SINGULARDISPLAY/>
                  </VIEW>
                </SOURCE>
              </COMPONENT>
            </PARAMETERS>
            <PARAMETERS>
              <NAME>INUSTOREID</NAME>
              <COMPONENT>
                <TYPE>HEAVYSELECTLISTFIELD</TYPE>
                <SOURCE>
                  <NAME>202578AD-5B10-48C8-94CA-75687B52599C</NAME>
                  <MODEL>
                    <ENTITY>
                      <NAME>202578AD-5B10-48C8-94CA-75687B52599C</NAME>
                      <ATTRIBUTE>
                        <NAME>ID</NAME>
                        <TYPE>Number</TYPE>
                        <KEY>false</KEY>
                        <LENGTH>15</LENGTH>
                        <SCALE>0</SCALE>
                        <ISNULL>true</ISNULL>
                      </ATTRIBUTE>
                      <ATTRIBUTE>
                        <NAME>DESCRIPTION</NAME>
                        <TYPE>Va');
dbms_lob.append(clXml, 'rchar</TYPE>
                        <KEY>false</KEY>
                        <LENGTH>60</LENGTH>
                        <SCALE>0</SCALE>
                        <ISNULL>true</ISNULL>
                      </ATTRIBUTE>
                    </ENTITY>
                    <PROXY>
                      <NAME>202578AD-5B10-48C8-94CA-75687B52599C</NAME>
                      <PARAMETER>
                        <NAME>ID</NAME>
                        <TYPE>Varchar</TYPE>
                        <MODE>Input</MODE>
                        <SCALE>0</SCALE>
                        <LENGTH>200</LENGTH>
                      </PARAMETER>
                      <PARAMETER>
                        <NAME>ALMACEN</NAME>
                        <TYPE>Varchar</TYPE>
                        <MODE>Input</MODE>
                        <SCALE>0</SCALE>
                        <LENGTH>60</LENGTH>
                      </PARAMETER>
                      <PARAMETER>
                        <NAME>CIUDAD</NAME>
                        <TYPE>Varchar</TYPE>
                        <MODE>Input</MODE>
                        <SCALE>0</SCALE>
                        <LENGTH>100</LENGTH>
                      </PARAMETER>
                      <PARAMETER>
                        <NAME>PAIS</NAME>
                        <TYPE>Varchar</TYPE>
                        <MODE>Input</MODE>
                        <SCALE>0</SCALE>
                        <LENGTH>100</LENGTH>
                      </PARAMETER>
        ');
dbms_lob.append(clXml, '              <ENTITY>202578AD-5B10-48C8-94CA-75687B52599C</ENTITY>
                      <SOURCE>SELECT
	/*+ 
	ORDERED 
	USE_NL(OR_JPB_COUNTRY OR_JPB_CITY)
	index(OR_JPB_COUNTRY PK_OR_JPB_COUNTRY)
	index(OR_JPB_CITY PK_OR_JPB_CITY)
	index(OR_JPB_STORE UX_OR_JPB_STORE01)
	*/
	OR_JPB_STORE.store_id ID,
	OR_JPB_STORE.description DESCRIPTION
FROM
	OR_JPB_COUNTRY, OR_JPB_CITY, OR_JPB_STORE 
'||chr(64)||'WHERE'||chr(64)||' '||chr(64)||'OR_JPB_STORE.store_id = :ID	'||chr(64)||'
'||chr(64)||'OR_JPB_STORE.city_id = OR_JPB_CITY.city_id '||chr(64)||'
'||chr(64)||'OR_JPB_CITY.country_id = OR_JPB_COUNTRY.country_id '||chr(64)||'
'||chr(64)||'upper(OR_JPB_STORE.description) LIKE :Almacen '||chr(64)||'
'||chr(64)||'upper(OR_JPB_CITY.description) LIKE :Ciudad '||chr(64)||'
'||chr(64)||'upper(OR_JPB_COUNTRY.description) LIKE :Pais '||chr(64)||'
</SOURCE>
                      <TYPE>Statement</TYPE>
                    </PROXY>
                  </MODEL>
                  <VIEW>
                    <NAME>202578AD-5B10-48C8-94CA-75687B52599C</NAME>
                    <DISPLAY>Almacén</DISPLAY>
                    <ATTRIBUTE>
                      <NAME>ID</NAME>
                      <DISPLAY>ID</DISPLAY>
                      <VISIBLE>true</VISIBLE>
                    </ATTRIBUTE>
                    <ATTRIBUTE>
                      <NAME>DESCRIPTION</NAME>
                      <DISPLAY>Almacén</DISPLAY>
                      <VISIBLE>true</VISIBLE>
                    </ATTRIBUTE>
                    <PARAMETER>
                      <NAME>ID</NAME>
                      <DISPLAY>ID</DISPLAY>
                      <READONLY>false</READONLY>
           ');
dbms_lob.append(clXml, '           <REQUIRED>false</REQUIRED>
                      <VISIBLE>false</VISIBLE>
                      <STYLECASE>Normal</STYLECASE>
                    </PARAMETER>
                    <PARAMETER>
                      <NAME>ALMACEN</NAME>
                      <DISPLAY>Almacén</DISPLAY>
                      <READONLY>false</READONLY>
                      <REQUIRED>false</REQUIRED>
                      <VISIBLE>false</VISIBLE>
                      <STYLECASE>Normal</STYLECASE>
                    </PARAMETER>
                    <PARAMETER>
                      <NAME>CIUDAD</NAME>
                      <DISPLAY>Ciudad</DISPLAY>
                      <READONLY>false</READONLY>
                      <REQUIRED>false</REQUIRED>
                      <VISIBLE>false</VISIBLE>
                      <STYLECASE>Normal</STYLECASE>
                    </PARAMETER>
                    <PARAMETER>
                      <NAME>PAIS</NAME>
                      <DISPLAY>País</DISPLAY>
                      <READONLY>false</READONLY>
                      <REQUIRED>false</REQUIRED>
                      <VISIBLE>false</VISIBLE>
                      <STYLECASE>Normal</STYLECASE>
                    </PARAMETER>
                    <SINGULARDISPLAY/>
                  </VIEW>
                </SOURCE>
              </COMPONENT>
            </PARAMETERS>
          </CTRL>
        </FORM>
        <GRID>
          <NAME>04D4D658-4BF7-4E1B-9E2E-0486F0834113</NAME>
          <MODEL>
     ');
dbms_lob.append(clXml, '       <ENTITY>
              <NAME>04D4D658-4BF7-4E1B-9E2E-0486F0834113</NAME>
              <ATTRIBUTE>
                <NAME>CREDIT_ID</NAME>
                <TYPE>Number</TYPE>
                <KEY>false</KEY>
                <LENGTH>15</LENGTH>
                <SCALE>0</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>DOCUMENTO</NAME>
                <TYPE>Varchar</TYPE>
                <KEY>false</KEY>
                <LENGTH>4000</LENGTH>
                <SCALE>0</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>NOMBRE_CLIENTE</NAME>
                <TYPE>Varchar</TYPE>
                <KEY>false</KEY>
                <LENGTH>4000</LENGTH>
                <SCALE>0</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>PRODUCTO</NAME>
                <TYPE>Varchar</TYPE>
                <KEY>false</KEY>
                <LENGTH>4000</LENGTH>
                <SCALE>0</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>ALMACEN</NAME>
                <TYPE>Varchar</TYPE>
                <KEY>false</KEY>
                <LENGTH>4000</LENGTH>
                <SCALE>0</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>PRECIO</NAME>
    ');
dbms_lob.append(clXml, '            <TYPE>Decimal</TYPE>
                <KEY>false</KEY>
                <LENGTH>20</LENGTH>
                <SCALE>4</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>CREDIT_DATE</NAME>
                <TYPE>Date</TYPE>
                <KEY>false</KEY>
                <LENGTH>7</LENGTH>
                <SCALE>0</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>CODIGO_AUTORIZACION</NAME>
                <TYPE>Number</TYPE>
                <KEY>false</KEY>
                <LENGTH>15</LENGTH>
                <SCALE>0</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>APROBADO</NAME>
                <TYPE>Varchar</TYPE>
                <KEY>false</KEY>
                <LENGTH>100</LENGTH>
                <SCALE>0</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>APROBADO_DESC</NAME>
                <TYPE>Varchar</TYPE>
                <KEY>false</KEY>
                <LENGTH>4000</LENGTH>
                <SCALE>0</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>CAUSAL</NAME>
                <TYPE>Varchar</TYPE>
                <KEY>false</KEY>
                <LENGTH>4000</LENGTH>
                <SCALE>0</SCALE>
        ');
dbms_lob.append(clXml, '        <ISNULL>true</ISNULL>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>PARENT_ID</NAME>
                <TYPE>Varchar</TYPE>
                <KEY>false</KEY>
                <LENGTH>2</LENGTH>
                <SCALE>0</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
            </ENTITY>
            <PROXY>
              <NAME>04D4D658-4BF7-4E1B-9E2E-0486F0834113</NAME>
              <PARAMETER>
                <NAME>INUCREDITID</NAME>
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
                <NAME>INUSTOREID</NAME>
                <TYPE>Number</TYPE>
                <MODE>Input</MODE>
                <SCALE>0</SCALE>
                <LENGTH>15</LENGTH>
              </PARAMETER>
              <PARAMETER>
                <NAME>Cursor4</NAME>
                <TYPE>Cursor</TYPE>
                <MODE>Output</MODE>
                <SCALE>0</SCALE>
                <LENGTH>200</LENGTH>
              </PARAMETER>
              <ENTITY>04D4D658-4BF7-4E1B-9E2E-0486F0834113</ENTITY>
              <SOURCE>OR_UIJPPCL.GETCREDITS</SOURCE>
             ');
dbms_lob.append(clXml, ' <TYPE>Service</TYPE>
            </PROXY>
          </MODEL>
          <VIEW>
            <NAME>04D4D658-4BF7-4E1B-9E2E-0486F0834113</NAME>
            <DISPLAY>Créditos</DISPLAY>
            <ATTRIBUTE>
              <NAME>CREDIT_ID</NAME>
              <DISPLAY>Código</DISPLAY>
              <TOOLTIP>Código</TOOLTIP>
              <VISIBLE>true</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>DOCUMENTO</NAME>
              <DISPLAY>Identificación</DISPLAY>
              <TOOLTIP>Identificación</TOOLTIP>
              <VISIBLE>true</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>NOMBRE_CLIENTE</NAME>
              <DISPLAY>Nombre</DISPLAY>
              <TOOLTIP>Nombre</TOOLTIP>
              <VISIBLE>true</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>PRODUCTO</NAME>
              <DISPLAY>Producto</DISPLAY>
              <TOOLTIP>Producto</TOOLTIP>
              <VISIBLE>true</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>ALMACEN</NAME>
              <DISPLAY>Almacén</DISPLAY>
              <TOOLTIP>Almacén</TOOLTIP>
              <VISIBLE>true</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>PRECIO</NAME>
              <DISPLAY>Precio</DISPLAY>
              <TOOLTIP>Precio</TOOLTIP>
              <VISIBLE>true</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>CREDIT_DATE</NAME>
           ');
dbms_lob.append(clXml, '   <DISPLAY>Fecha de realización</DISPLAY>
              <TOOLTIP>Fecha de realización</TOOLTIP>
              <VISIBLE>true</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>CODIGO_AUTORIZACION</NAME>
              <DISPLAY>Autorización</DISPLAY>
              <TOOLTIP>Autorización</TOOLTIP>
              <VISIBLE>true</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>APROBADO</NAME>
              <DISPLAY>Aprobado</DISPLAY>
              <TOOLTIP>Aprobado</TOOLTIP>
              <VISIBLE>true</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>APROBADO_DESC</NAME>
              <DISPLAY>Aprobado (Oculto)</DISPLAY>
              <TOOLTIP>Aprobado (Oculto)</TOOLTIP>
              <VISIBLE>false</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>CAUSAL</NAME>
              <DISPLAY>Detalle causal</DISPLAY>
              <TOOLTIP>Detalle causal</TOOLTIP>
              <VISIBLE>true</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>PARENT_ID</NAME>
              <DISPLAY>Parent</DISPLAY>
              <TOOLTIP>Parent</TOOLTIP>
              <VISIBLE>false</VISIBLE>
            </ATTRIBUTE>
            <PARAMETER>
              <NAME>INUCREDITID</NAME>
              <DISPLAY>Código</DISPLAY>
              <READONLY>false</READONLY>
              <REQUIRED>false</REQUIRED>
              <VISIBLE>true</VISIBLE>
              <STYLECASE>Normal');
dbms_lob.append(clXml, '</STYLECASE>
            </PARAMETER>
            <PARAMETER>
              <NAME>INUCUSTOMERID</NAME>
              <DISPLAY>Cliente</DISPLAY>
              <READONLY>false</READONLY>
              <REQUIRED>false</REQUIRED>
              <VISIBLE>true</VISIBLE>
              <STYLECASE>Normal</STYLECASE>
            </PARAMETER>
            <PARAMETER>
              <NAME>INUSTOREID</NAME>
              <DISPLAY>Almacén</DISPLAY>
              <READONLY>false</READONLY>
              <REQUIRED>false</REQUIRED>
              <VISIBLE>true</VISIBLE>
              <STYLECASE>Normal</STYLECASE>
            </PARAMETER>
            <PARAMETER>
              <NAME>Cursor4</NAME>
              <DISPLAY>Cursor4</DISPLAY>
              <READONLY>false</READONLY>
              <REQUIRED>false</REQUIRED>
              <VISIBLE>false</VISIBLE>
              <STYLECASE>Normal</STYLECASE>
            </PARAMETER>
            <SINGULARDISPLAY/>
          </VIEW>
        </GRID>
      </SEARCHCONTEXT>
      <SEARCHCONTEXT>
        <FORM>
          <VIEW>
            <NAME>61B64752-A6F7-427E-AE92-28BA758D54F4</NAME>
            <DISPLAY>Tarifas</DISPLAY>
            <GROUP>
              <PARAMETER>
                <NAME>INUTARIFFID</NAME>
                <DISPLAY>ID</DISPLAY>
                <READONLY>false</READONLY>
                <REQUIRED>false</REQUIRED>
                <VISIBLE>true</VISIBLE>
                <STYLECASE>Normal</STYLECASE>
              </PARAMETER>
              <PAR');
dbms_lob.append(clXml, 'AMETER>
                <NAME>INUCOUNTRYID</NAME>
                <DISPLAY>País</DISPLAY>
                <READONLY>false</READONLY>
                <REQUIRED>false</REQUIRED>
                <VISIBLE>true</VISIBLE>
                <STYLECASE>Normal</STYLECASE>
              </PARAMETER>
              <PARAMETER>
                <NAME>INUCITYID</NAME>
                <DISPLAY>Ciudad</DISPLAY>
                <READONLY>false</READONLY>
                <REQUIRED>false</REQUIRED>
                <VISIBLE>true</VISIBLE>
                <STYLECASE>Normal</STYLECASE>
              </PARAMETER>
              <PARAMETER>
                <NAME>INUPLANTYPE</NAME>
                <DISPLAY>Tipo de plan</DISPLAY>
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
                <NAME>Cursor6</NAME>
                <DISPLAY>Cursor6</DISPLAY>
                <READONLY>false</READONLY>
                <REQUIRED>false</REQUIRED>
                <VISIBLE>false</VISIBLE>
                <STYLECASE>Normal</STYLECASE>
  ');
dbms_lob.append(clXml, '            </PARAMETER>
            </GROUP>
          </VIEW>
          <CTRL>
            <NAME>61B64752-A6F7-427E-AE92-28BA758D54F4</NAME>
            <PARAMETERS>
              <NAME>INUCOUNTRYID</NAME>
              <COMPONENT>
                <TYPE>HEAVYSELECTLISTFIELD</TYPE>
                <SOURCE>
                  <NAME>B5529507-B235-476C-89BA-E82142CFC43B</NAME>
                  <MODEL>
                    <ENTITY>
                      <NAME>B5529507-B235-476C-89BA-E82142CFC43B</NAME>
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
                    </ENTITY>
                    <PROXY>
                      <NAME>B5529507-B235-476C-89BA-E82142CFC43B</NAME>
                      <PARAMETER>
                        <NAME>ID</NAME>
                        <TYPE>Varchar</TYPE>
                        <MODE>Input</MODE>
                        <SCALE>0</SCALE>
   ');
dbms_lob.append(clXml, '                     <LENGTH>200</LENGTH>
                      </PARAMETER>
                      <PARAMETER>
                        <NAME>NOMBRE</NAME>
                        <TYPE>Varchar</TYPE>
                        <MODE>Input</MODE>
                        <SCALE>0</SCALE>
                        <LENGTH>100</LENGTH>
                      </PARAMETER>
                      <ENTITY>B5529507-B235-476C-89BA-E82142CFC43B</ENTITY>
                      <SOURCE>SELECT
	/*+ index(OR_JPB_COUNTRY IDX_OR_JPB_COUNTRY01)*/
	OR_JPB_COUNTRY .country_id ID,
	OR_JPB_COUNTRY .description DESCRIPTION
FROM
	OR_JPB_COUNTRY 
'||chr(64)||'WHERE '||chr(64)||' '||chr(64)||'OR_JPB_COUNTRY.country_id = :ID '||chr(64)||' 
'||chr(64)||'upper(OR_JPB_COUNTRY.description) LIKE :Nombre '||chr(64)||'
 
</SOURCE>
                      <TYPE>Statement</TYPE>
                    </PROXY>
                  </MODEL>
                  <VIEW>
                    <NAME>B5529507-B235-476C-89BA-E82142CFC43B</NAME>
                    <DISPLAY>Países</DISPLAY>
                    <ATTRIBUTE>
                      <NAME>ID</NAME>
                      <DISPLAY>ID</DISPLAY>
                      <VISIBLE>true</VISIBLE>
                    </ATTRIBUTE>
                    <ATTRIBUTE>
                      <NAME>DESCRIPTION</NAME>
                      <DISPLAY>País</DISPLAY>
                      <VISIBLE>true</VISIBLE>
                    </ATTRIBUTE>
                    <PARAMETER>
                      <NAME>ID</NAME>
                      <DISPLAY>ID</DISPLAY>
                  ');
dbms_lob.append(clXml, '    <READONLY>false</READONLY>
                      <REQUIRED>false</REQUIRED>
                      <VISIBLE>false</VISIBLE>
                      <STYLECASE>Normal</STYLECASE>
                    </PARAMETER>
                    <PARAMETER>
                      <NAME>NOMBRE</NAME>
                      <DISPLAY>Nombre</DISPLAY>
                      <READONLY>false</READONLY>
                      <REQUIRED>false</REQUIRED>
                      <VISIBLE>false</VISIBLE>
                      <STYLECASE>Normal</STYLECASE>
                    </PARAMETER>
                    <SINGULARDISPLAY/>
                  </VIEW>
                </SOURCE>
              </COMPONENT>
            </PARAMETERS>
            <PARAMETERS>
              <NAME>INUCITYID</NAME>
              <COMPONENT>
                <TYPE>HEAVYSELECTLISTFIELD</TYPE>
                <SOURCE>
                  <NAME>C9AD245F-E80B-46EB-B815-6FE3A42E3663</NAME>
                  <MODEL>
                    <ENTITY>
                      <NAME>C9AD245F-E80B-46EB-B815-6FE3A42E3663</NAME>
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
                        <TY');
dbms_lob.append(clXml, 'PE>Varchar</TYPE>
                        <KEY>false</KEY>
                        <LENGTH>100</LENGTH>
                        <SCALE>0</SCALE>
                        <ISNULL>true</ISNULL>
                      </ATTRIBUTE>
                    </ENTITY>
                    <PROXY>
                      <NAME>C9AD245F-E80B-46EB-B815-6FE3A42E3663</NAME>
                      <PARAMETER>
                        <NAME>ID</NAME>
                        <TYPE>Varchar</TYPE>
                        <MODE>Input</MODE>
                        <SCALE>0</SCALE>
                        <LENGTH>200</LENGTH>
                      </PARAMETER>
                      <PARAMETER>
                        <NAME>NOMBRE</NAME>
                        <TYPE>Varchar</TYPE>
                        <MODE>Input</MODE>
                        <SCALE>0</SCALE>
                        <LENGTH>100</LENGTH>
                      </PARAMETER>
                      <PARAMETER>
                        <NAME>INUCOUNTRYID</NAME>
                        <TYPE>Varchar</TYPE>
                        <MODE>Input</MODE>
                        <SCALE>0</SCALE>
                        <LENGTH>200</LENGTH>
                      </PARAMETER>
                      <ENTITY>C9AD245F-E80B-46EB-B815-6FE3A42E3663</ENTITY>
                      <SOURCE>SELECT
	/*+ index(OR_JPB_CITY UX_OR_JPB_CITY01)*/
	OR_JPB_CITY.city_id ID,
	OR_JPB_CITY.description DESCRIPTION
FROM
	OR_JPB_CITY
'||chr(64)||'WHERE '||chr(64)||' '||chr(64)||'OR_JPB_CITY.city_id = :ID '||chr(64)||' 
'||chr(64)||'upper');
dbms_lob.append(clXml, '(OR_JPB_CITY.description) LIKE :Nombre '||chr(64)||'
'||chr(64)||' OR_JPB_CITY.country_id = [INUCOUNTRYID] '||chr(64)||'
</SOURCE>
                      <TYPE>Statement</TYPE>
                    </PROXY>
                  </MODEL>
                  <VIEW>
                    <NAME>C9AD245F-E80B-46EB-B815-6FE3A42E3663</NAME>
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
                    <PARAMETER>
                      <NAME>ID</NAME>
                      <DISPLAY>ID</DISPLAY>
                      <READONLY>false</READONLY>
                      <REQUIRED>false</REQUIRED>
                      <VISIBLE>false</VISIBLE>
                      <STYLECASE>Normal</STYLECASE>
                    </PARAMETER>
                    <PARAMETER>
                      <NAME>NOMBRE</NAME>
                      <DISPLAY>Nombre</DISPLAY>
                      <READONLY>false</READONLY>
                      <REQUIRED>false</REQUIRED>
                      <VISIBLE>false</VISIBLE>
                      <STYLECASE>Normal</STYLECASE>
                    </PARAMETER>
                    <PARAMETER>
                      <NAME>INUCOU');
dbms_lob.append(clXml, 'NTRYID</NAME>
                      <DISPLAY>INUCOUNTRYID</DISPLAY>
                      <READONLY>false</READONLY>
                      <REQUIRED>false</REQUIRED>
                      <VISIBLE>false</VISIBLE>
                      <STYLECASE>Normal</STYLECASE>
                    </PARAMETER>
                    <SINGULARDISPLAY/>
                  </VIEW>
                </SOURCE>
              </COMPONENT>
            </PARAMETERS>
            <PARAMETERS>
              <NAME>INUPLANTYPE</NAME>
              <COMPONENT>
                <TYPE>CODETEXTFIELD</TYPE>
                <SOURCE>
                  <NAME>4AB23985-0CEB-4430-B190-6986E61398E3</NAME>
                  <MODEL>
                    <ENTITY>
                      <NAME>4AB23985-0CEB-4430-B190-6986E61398E3</NAME>
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
                    </ENTITY>
               ');
dbms_lob.append(clXml, '     <PROXY>
                      <NAME>4AB23985-0CEB-4430-B190-6986E61398E3</NAME>
                      <ENTITY>4AB23985-0CEB-4430-B190-6986E61398E3</ENTITY>
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
                    <NAME>4AB23985-0CEB-4430-B190-6986E61398E3</NAME>
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
              <NAME>INUSTRATUMID</NAME>
              <COMPONENT>
                <TYPE>HEAVYSELECTLISTFIELD</TYPE>
                <SOURCE>
                  <NAME>1DF5E718-F17A-4103-89EF-CC91E1A74393</NAME>
                  <MODEL>
                    <ENTITY>
                      <NAME>1DF5E718-F17A-4103-89EF-CC91E1A74393</N');
dbms_lob.append(clXml, 'AME>
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
                    </ENTITY>
                    <PROXY>
                      <NAME>1DF5E718-F17A-4103-89EF-CC91E1A74393</NAME>
                      <ENTITY>1DF5E718-F17A-4103-89EF-CC91E1A74393</ENTITY>
                      <SOURCE>SELECT
	OR_JPB_STRATUM.stratum_id ID,
	OR_JPB_STRATUM.description DESCRIPTION
FROM
	OR_JPB_STRATUM
ORDER BY
	OR_JPB_STRATUM.description</SOURCE>
                      <TYPE>Statement</TYPE>
                    </PROXY>
                  </MODEL>
                  <VIEW>
                    <NAME>1DF5E718-F17A-4103-89EF-CC91E1A74393</NAME>
                    <DISPLAY>Estratos</DISPLAY>
                    <ATTRIBUTE>
                      <NAME>ID</NAME>
                      <DISPLAY>ID</DISPLAY>
                      <VISIBLE>true</VISIBLE>
                    </ATTRIBUTE>
                 ');
dbms_lob.append(clXml, '   <ATTRIBUTE>
                      <NAME>DESCRIPTION</NAME>
                      <DISPLAY>Estrato</DISPLAY>
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
          <NAME>61B64752-A6F7-427E-AE92-28BA758D54F4</NAME>
          <MODEL>
            <ENTITY>
              <NAME>61B64752-A6F7-427E-AE92-28BA758D54F4</NAME>
              <ATTRIBUTE>
                <NAME>TARIFF_ID</NAME>
                <TYPE>Number</TYPE>
                <KEY>false</KEY>
                <LENGTH>15</LENGTH>
                <SCALE>0</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>PAIS</NAME>
                <TYPE>Varchar</TYPE>
                <KEY>false</KEY>
                <LENGTH>4000</LENGTH>
                <SCALE>0</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>CIUDAD</NAME>
                <TYPE>Varchar</TYPE>
                <KEY>false</KEY>
                <LENGTH>4000</LENGTH>
                <SCALE>0</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>TIPO</NAME>
                <TYPE>Varchar</TYPE>
                <KEY>false</KEY>
                <LENGT');
dbms_lob.append(clXml, 'H>4000</LENGTH>
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
                <NAME>ACTIVE_PRODUCTS</NAME>
                <TYPE>Number</TYPE>
                <KEY>false</KEY>
                <LENGTH>4</LENGTH>
                <SCALE>0</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>INF_LIMIT</NAME>
                <TYPE>Number</TYPE>
                <KEY>false</KEY>
                <LENGTH>4</LENGTH>
                <SCALE>0</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>SUP_LIMIT</NAME>
                <TYPE>Number</TYPE>
                <KEY>false</KEY>
                <LENGTH>4</LENGTH>
                <SCALE>0</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>AMOUNT</NAME>
                <TYPE>Decimal</TYPE>
                <KEY>false</KEY>
                <LENGTH>20</LENGTH>
                <SCALE>4</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NA');
dbms_lob.append(clXml, 'ME>PARENT_ID</NAME>
                <TYPE>Varchar</TYPE>
                <KEY>false</KEY>
                <LENGTH>2</LENGTH>
                <SCALE>0</SCALE>
                <ISNULL>true</ISNULL>
              </ATTRIBUTE>
            </ENTITY>
            <PROXY>
              <NAME>61B64752-A6F7-427E-AE92-28BA758D54F4</NAME>
              <PARAMETER>
                <NAME>INUTARIFFID</NAME>
                <TYPE>Number</TYPE>
                <MODE>Input</MODE>
                <SCALE>0</SCALE>
                <LENGTH>15</LENGTH>
              </PARAMETER>
              <PARAMETER>
                <NAME>INUCOUNTRYID</NAME>
                <TYPE>Number</TYPE>
                <MODE>Input</MODE>
                <SCALE>0</SCALE>
                <LENGTH>4</LENGTH>
              </PARAMETER>
              <PARAMETER>
                <NAME>INUCITYID</NAME>
                <TYPE>Number</TYPE>
                <MODE>Input</MODE>
                <SCALE>0</SCALE>
                <LENGTH>4</LENGTH>
              </PARAMETER>
              <PARAMETER>
                <NAME>INUPLANTYPE</NAME>
                <TYPE>Number</TYPE>
                <MODE>Input</MODE>
                <SCALE>0</SCALE>
                <LENGTH>4</LENGTH>
              </PARAMETER>
              <PARAMETER>
                <NAME>INUSTRATUMID</NAME>
                <TYPE>Number</TYPE>
                <MODE>Input</MODE>
                <SCALE>0</SCALE>
                <LENGTH>4</LENGTH>
              </PARAMETER>
     ');
dbms_lob.append(clXml, '         <PARAMETER>
                <NAME>Cursor6</NAME>
                <TYPE>Cursor</TYPE>
                <MODE>Output</MODE>
                <SCALE>0</SCALE>
                <LENGTH>200</LENGTH>
              </PARAMETER>
              <ENTITY>61B64752-A6F7-427E-AE92-28BA758D54F4</ENTITY>
              <SOURCE>OR_UIJPPCL.GETASSINGTARIFFS</SOURCE>
              <TYPE>Service</TYPE>
            </PROXY>
          </MODEL>
          <VIEW>
            <NAME>61B64752-A6F7-427E-AE92-28BA758D54F4</NAME>
            <DISPLAY>Tarifas</DISPLAY>
            <ATTRIBUTE>
              <NAME>TARIFF_ID</NAME>
              <DISPLAY>ID</DISPLAY>
              <TOOLTIP>ID</TOOLTIP>
              <VISIBLE>true</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>PAIS</NAME>
              <DISPLAY>País</DISPLAY>
              <TOOLTIP>País</TOOLTIP>
              <VISIBLE>true</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>CIUDAD</NAME>
              <DISPLAY>Ciudad</DISPLAY>
              <TOOLTIP>Ciudad</TOOLTIP>
              <VISIBLE>true</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>TIPO</NAME>
              <DISPLAY>Tipo de plan</DISPLAY>
              <TOOLTIP>Tipo de plan</TOOLTIP>
              <VISIBLE>true</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>STRATUM_ID</NAME>
              <DISPLAY>Estrato</DISPLAY>
              <TOOLTIP>Estrato</TOOLTIP>
      ');
dbms_lob.append(clXml, '        <VISIBLE>true</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>ACTIVE_PRODUCTS</NAME>
              <DISPLAY>Productos activos</DISPLAY>
              <TOOLTIP>Productos activos</TOOLTIP>
              <VISIBLE>true</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>INF_LIMIT</NAME>
              <DISPLAY>Lím. inferior (años)</DISPLAY>
              <TOOLTIP>Lím. inferior (años)</TOOLTIP>
              <VISIBLE>true</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>SUP_LIMIT</NAME>
              <DISPLAY>Lím. superior (años)</DISPLAY>
              <TOOLTIP>Lím. superior (años)</TOOLTIP>
              <VISIBLE>true</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>AMOUNT</NAME>
              <DISPLAY>Monto ($)</DISPLAY>
              <TOOLTIP>Monto ($)</TOOLTIP>
              <VISIBLE>true</VISIBLE>
            </ATTRIBUTE>
            <ATTRIBUTE>
              <NAME>PARENT_ID</NAME>
              <DISPLAY>Parent</DISPLAY>
              <TOOLTIP>Parent</TOOLTIP>
              <VISIBLE>true</VISIBLE>
            </ATTRIBUTE>
            <PARAMETER>
              <NAME>INUTARIFFID</NAME>
              <DISPLAY>ID</DISPLAY>
              <READONLY>false</READONLY>
              <REQUIRED>false</REQUIRED>
              <VISIBLE>true</VISIBLE>
              <STYLECASE>Normal</STYLECASE>
            </PARAMETER>
            <PARAMETER>
              <NAME>INUC');
dbms_lob.append(clXml, 'OUNTRYID</NAME>
              <DISPLAY>País</DISPLAY>
              <READONLY>false</READONLY>
              <REQUIRED>false</REQUIRED>
              <VISIBLE>true</VISIBLE>
              <STYLECASE>Normal</STYLECASE>
            </PARAMETER>
            <PARAMETER>
              <NAME>INUCITYID</NAME>
              <DISPLAY>Ciudad</DISPLAY>
              <READONLY>false</READONLY>
              <REQUIRED>false</REQUIRED>
              <VISIBLE>true</VISIBLE>
              <STYLECASE>Normal</STYLECASE>
            </PARAMETER>
            <PARAMETER>
              <NAME>INUPLANTYPE</NAME>
              <DISPLAY>Tipo de plan</DISPLAY>
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
              <NAME>Cursor6</NAME>
              <DISPLAY>Cursor6</DISPLAY>
              <READONLY>false</READONLY>
              <REQUIRED>false</REQUIRED>
              <VISIBLE>false</VISIBLE>
              <STYLECASE>Normal</STYLECASE>
            </PARAMETER>
            <SINGULARDISPLAY/>
          </VIEW>
        </GRID>
      </SEARCHCONTEX');
dbms_lob.append(clXml, 'T>
    </VIEW>
  </SEARCHFORM>
  <TREEFORM>
    <VIEW>
      <QUERY>
        <VIEW>
          <HEADERTITLE>'||chr(38)||'lt;?xml version='||chr(38)||'quot;1.0'||chr(38)||'quot; encoding='||chr(38)||'quot;utf-16'||chr(38)||'quot;?'||chr(38)||'gt;'||chr(38)||'lt;OpenQueryHeaderTitle xmlns:xsi='||chr(38)||'quot;http://www.w3.org/2001/XMLSchema-instance'||chr(38)||'quot; xmlns:xsd='||chr(38)||'quot;http://www.w3.org/2001/XMLSchema'||chr(38)||'quot;'||chr(38)||'gt;'||chr(38)||'lt;Title /'||chr(38)||'gt;'||chr(38)||'lt;Subtitle1 /'||chr(38)||'gt;'||chr(38)||'lt;Subtitle2 /'||chr(38)||'gt;'||chr(38)||'lt;/OpenQueryHeaderTitle'||chr(38)||'gt;</HEADERTITLE>
          <GRID>
            <NAME>802A906B-79D6-4213-94B3-A157C5D9BDDE</NAME>
            <MODEL>
              <ENTITY>
                <NAME>802A906B-79D6-4213-94B3-A157C5D9BDDE</NAME>
                <ATTRIBUTE>
                  <NAME>KEY_</NAME>
                  <TYPE>Varchar</TYPE>
                  <KEY>true</KEY>
                  <LENGTH>2</LENGTH>
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
                <NAME>802A906B-79D6-4213-94B3-A157C5D9BDDE</NAME>
                <PARAMETER>
                  <NAME>INUDUMMYID</NAME>
                  <TYPE>Number</TYPE>
                  <MODE>Input</MODE>
                  <SCALE>0</SCALE>
                  <LENGTH>15</LENGTH>
       ');
dbms_lob.append(clXml, '         </PARAMETER>
                <PARAMETER>
                  <NAME>Cursor2</NAME>
                  <TYPE>Cursor</TYPE>
                  <MODE>Output</MODE>
                  <SCALE>0</SCALE>
                  <LENGTH>200</LENGTH>
                </PARAMETER>
                <ENTITY>802A906B-79D6-4213-94B3-A157C5D9BDDE</ENTITY>
                <SOURCE>OR_UIJPPCL.GETELEMENTBYDUMMY</SOURCE>
                <TYPE>Service</TYPE>
              </PROXY>
            </MODEL>
            <VIEW>
              <NAME>802A906B-79D6-4213-94B3-A157C5D9BDDE</NAME>
              <DISPLAY>Siloko Credits</DISPLAY>
              <ATTRIBUTE>
                <NAME>KEY_</NAME>
                <DISPLAY>Llave</DISPLAY>
                <VISIBLE>false</VISIBLE>
              </ATTRIBUTE>
              <ATTRIBUTE>
                <NAME>PARENT</NAME>
                <DISPLAY>PARENT</DISPLAY>
                <VISIBLE>false</VISIBLE>
              </ATTRIBUTE>
              <PARAMETER>
                <NAME>INUDUMMYID</NAME>
                <DISPLAY>INUDUMMYID</DISPLAY>
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
  ');
dbms_lob.append(clXml, '              <STYLECASE>Normal</STYLECASE>
              </PARAMETER>
              <SINGULARDISPLAY>Siloko Credit</SINGULARDISPLAY>
            </VIEW>
          </GRID>
          <QUERY>
            <VIEW>
              <HEADERTITLE>'||chr(38)||'lt;?xml version='||chr(38)||'quot;1.0'||chr(38)||'quot; encoding='||chr(38)||'quot;utf-16'||chr(38)||'quot;?'||chr(38)||'gt;'||chr(38)||'lt;OpenQueryHeaderTitle xmlns:xsi='||chr(38)||'quot;http://www.w3.org/2001/XMLSchema-instance'||chr(38)||'quot; xmlns:xsd='||chr(38)||'quot;http://www.w3.org/2001/XMLSchema'||chr(38)||'quot;'||chr(38)||'gt;'||chr(38)||'lt;Title'||chr(38)||'gt;{CUSTOMER_ID}'||chr(38)||'lt;/Title'||chr(38)||'gt;'||chr(38)||'lt;Subtitle1'||chr(38)||'gt;{DESCRIPTION}'||chr(38)||'lt;/Subtitle1'||chr(38)||'gt;'||chr(38)||'lt;Subtitle2 /'||chr(38)||'gt;'||chr(38)||'lt;/OpenQueryHeaderTitle'||chr(38)||'gt;</HEADERTITLE>
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
                      <NAME>');
dbms_lob.append(clXml, 'DESCRIPTION</NAME>
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
   ');
dbms_lob.append(clXml, '                   <SCALE>0</SCALE>
                      <LENGTH>15</LENGTH>
                    </PARAMETER>
                    <PARAMETER>
                      <NAME>Cursor2</NAME>
                      <TYPE>Cursor</TYPE>
                      <MODE>Output</MODE>
                      <SCALE>0</SCALE>
                      <LENGTH>200</LENGTH>
                    </PARAMETER>
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
                    <VISIBLE>true</VIS');
dbms_lob.append(clXml, 'IBLE>
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
                    <DISPLAY>ID del cliente SILOKO</DISPLAY>
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
                <CTRL>
                  <QUERYTOGO>802A906B-79D6-4213-94B3-A157C5D9BDDE</QUERYTOGO>
                </CTRL>
              </GRID>
              <QUERY>
                <VIEW>
                  <HEADERTITLE>'||chr(38)||'lt;?xml version='||chr(38)||'quot;1.0'||chr(38)||'quot; encoding='||chr(38)||'quot;utf-16');
dbms_lob.append(clXml, ''||chr(38)||'quot;?'||chr(38)||'gt;'||chr(38)||'lt;OpenQueryHeaderTitle xmlns:xsi='||chr(38)||'quot;http://www.w3.org/2001/XMLSchema-instance'||chr(38)||'quot; xmlns:xsd='||chr(38)||'quot;http://www.w3.org/2001/XMLSchema'||chr(38)||'quot;'||chr(38)||'gt;'||chr(38)||'lt;Title'||chr(38)||'gt;PLAN #{PLAN_ID}'||chr(38)||'lt;/Title'||chr(38)||'gt;'||chr(38)||'lt;Subtitle1 /'||chr(38)||'gt;'||chr(38)||'lt;Subtitle2 /'||chr(38)||'gt;'||chr(38)||'lt;/OpenQueryHeaderTitle'||chr(38)||'gt;</HEADERTITLE>
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
                          <NAME>ACTIVO</NAME>
                          <TYPE>Varchar</TYPE>
                          <KEY>false</KEY>
                          <LENGTH>100</LENGTH>
                          <SCALE>0</SCALE>
                          <ISNULL>tru');
dbms_lob.append(clXml, 'e</ISNULL>
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
                          <NAME>INUPLANID</NAME>
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
           ');
dbms_lob.append(clXml, '             <ENTITY>EAEC4455-6D6F-4982-86CB-6A110C21B3B6</ENTITY>
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
                        <DISPLAY>Activo</DISPLAY>
                        <VISIBLE>true</VISIBLE>
                      </ATTRIBUTE>
                      <ATTRIBUTE>
                        <NAME>PARENT_ID</NAME>
                        <DISPLAY>Parent</DISPLAY>
                        <VISIBLE>false</VISIBLE>
                      </ATTRIBUTE>
                      <PARAMETER>
         ');
dbms_lob.append(clXml, '               <NAME>INUPLANID</NAME>
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
                      <QUERYTOGO>802A906B-79D6-4213-94B3-A157C5D9BDDE.E2661711-867A-4075-94F6-BD909454DC10</QUERYTOGO>
                    </CTRL>
                  </GRID>
                </VIEW>
                <CTRL>
                  <NAME>EAEC4455-6D6F-4982-86CB-6A110C21B3B6</NAME>
                  <LOADCHILDS>true</LOADCHILDS>
                  <CHILDSSERV>OR_UIJPPCL.GETCUSTOMERPLANS</CHILDSSERV>
                  <PARENTSERV>OR_UIJPPCL.GETPLANPARENT</PARENTSERV>
                  <PRIMARYKEY>PLAN_ID</PRIMARYKEY>
                  <FOREINGKEY>PARENT_ID</FOREINGKEY>
                  <BASENAME>OR_JPB_PLAN</BASENAME>
                  <BASEIDNAME>PLAN_ID</BASEIDN');
dbms_lob.append(clXml, 'AME>
                  <ISSEARCH>true</ISSEARCH>
                  <SEARCHENTITY>86D621DE-4B0D-41C9-B23E-48FCB3AD5E2E</SEARCHENTITY>
                </CTRL>
              </QUERY>
              <QUERY>
                <VIEW>
                  <HEADERTITLE>'||chr(38)||'lt;?xml version='||chr(38)||'quot;1.0'||chr(38)||'quot; encoding='||chr(38)||'quot;utf-16'||chr(38)||'quot;?'||chr(38)||'gt;'||chr(38)||'lt;OpenQueryHeaderTitle xmlns:xsi='||chr(38)||'quot;http://www.w3.org/2001/XMLSchema-instance'||chr(38)||'quot; xmlns:xsd='||chr(38)||'quot;http://www.w3.org/2001/XMLSchema'||chr(38)||'quot;'||chr(38)||'gt;'||chr(38)||'lt;Title'||chr(38)||'gt;CRÉDITO #{CREDIT_ID}'||chr(38)||'lt;/Title'||chr(38)||'gt;'||chr(38)||'lt;Subtitle1'||chr(38)||'gt;{NOMBRE_CLIENTE}'||chr(38)||'lt;/Subtitle1'||chr(38)||'gt;'||chr(38)||'lt;Subtitle2 /'||chr(38)||'gt;'||chr(38)||'lt;/OpenQueryHeaderTitle'||chr(38)||'gt;</HEADERTITLE>
                  <GRID>
                    <NAME>B9D0DB90-BDDE-455F-94B2-2A0D3A24A58A</NAME>
                    <MODEL>
                      <ENTITY>
                        <NAME>B9D0DB90-BDDE-455F-94B2-2A0D3A24A58A</NAME>
                        <ATTRIBUTE>
                          <NAME>CREDIT_ID</NAME>
                          <TYPE>Number</TYPE>
                          <KEY>true</KEY>
                          <LENGTH>15</LENGTH>
                          <SCALE>0</SCALE>
                          <ISNULL>true</ISNULL>
                        </ATTRIBUTE>
                        <ATTRIBUTE>
                          <NAME>DOCUMENTO</NAME>
                          <TYPE>Varchar</TYPE>
                          <KEY>false</KEY>
                          <LENGTH>4000</LENGTH>
                          <SCALE>0</SCALE>
                          <ISN');
dbms_lob.append(clXml, 'ULL>true</ISNULL>
                        </ATTRIBUTE>
                        <ATTRIBUTE>
                          <NAME>NOMBRE_CLIENTE</NAME>
                          <TYPE>Varchar</TYPE>
                          <KEY>false</KEY>
                          <LENGTH>4000</LENGTH>
                          <SCALE>0</SCALE>
                          <ISNULL>true</ISNULL>
                        </ATTRIBUTE>
                        <ATTRIBUTE>
                          <NAME>PRODUCTO</NAME>
                          <TYPE>Varchar</TYPE>
                          <KEY>false</KEY>
                          <LENGTH>4000</LENGTH>
                          <SCALE>0</SCALE>
                          <ISNULL>true</ISNULL>
                        </ATTRIBUTE>
                        <ATTRIBUTE>
                          <NAME>ALMACEN</NAME>
                          <TYPE>Varchar</TYPE>
                          <KEY>false</KEY>
                          <LENGTH>4000</LENGTH>
                          <SCALE>0</SCALE>
                          <ISNULL>true</ISNULL>
                        </ATTRIBUTE>
                        <ATTRIBUTE>
                          <NAME>PRECIO</NAME>
                          <TYPE>Decimal</TYPE>
                          <KEY>false</KEY>
                          <LENGTH>20</LENGTH>
                          <SCALE>4</SCALE>
                          <ISNULL>true</ISNULL>
                        </ATTRIBUTE>
                        <ATTRIBUTE>
        ');
dbms_lob.append(clXml, '                  <NAME>CREDIT_DATE</NAME>
                          <TYPE>Date</TYPE>
                          <KEY>false</KEY>
                          <LENGTH>7</LENGTH>
                          <SCALE>0</SCALE>
                          <ISNULL>true</ISNULL>
                        </ATTRIBUTE>
                        <ATTRIBUTE>
                          <NAME>CODIGO_AUTORIZACION</NAME>
                          <TYPE>Number</TYPE>
                          <KEY>false</KEY>
                          <LENGTH>15</LENGTH>
                          <SCALE>0</SCALE>
                          <ISNULL>true</ISNULL>
                        </ATTRIBUTE>
                        <ATTRIBUTE>
                          <NAME>APROBADO</NAME>
                          <TYPE>Varchar</TYPE>
                          <KEY>false</KEY>
                          <LENGTH>100</LENGTH>
                          <SCALE>0</SCALE>
                          <ISNULL>true</ISNULL>
                        </ATTRIBUTE>
                        <ATTRIBUTE>
                          <NAME>APROBADO_DESC</NAME>
                          <TYPE>Varchar</TYPE>
                          <KEY>false</KEY>
                          <LENGTH>4000</LENGTH>
                          <SCALE>0</SCALE>
                          <ISNULL>true</ISNULL>
                        </ATTRIBUTE>
                        <ATTRIBUTE>
                          <NAME>CAUSAL</NAME>
                          <TYPE>Varchar</TYPE>
      ');
dbms_lob.append(clXml, '                    <KEY>false</KEY>
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
                        <NAME>B9D0DB90-BDDE-455F-94B2-2A0D3A24A58A</NAME>
                        <PARAMETER>
                          <NAME>INUCREDITID</NAME>
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
                        <ENTITY>B9D0DB90-BDDE-455F-94B2-2A0D3A24A58A</ENTITY>
                        <SOURCE>OR_UIJPPCL.GETCREDIT</SOURCE>
                        <TYPE>Service</TYPE>
            ');
dbms_lob.append(clXml, '          </PROXY>
                    </MODEL>
                    <VIEW>
                      <NAME>B9D0DB90-BDDE-455F-94B2-2A0D3A24A58A</NAME>
                      <DISPLAY>Créditos</DISPLAY>
                      <ATTRIBUTE>
                        <NAME>CREDIT_ID</NAME>
                        <DISPLAY>Código</DISPLAY>
                        <VISIBLE>true</VISIBLE>
                      </ATTRIBUTE>
                      <ATTRIBUTE>
                        <NAME>DOCUMENTO</NAME>
                        <DISPLAY>Identificación</DISPLAY>
                        <VISIBLE>false</VISIBLE>
                      </ATTRIBUTE>
                      <ATTRIBUTE>
                        <NAME>NOMBRE_CLIENTE</NAME>
                        <DISPLAY>Nombre</DISPLAY>
                        <VISIBLE>false</VISIBLE>
                      </ATTRIBUTE>
                      <ATTRIBUTE>
                        <NAME>PRODUCTO</NAME>
                        <DISPLAY>Producto</DISPLAY>
                        <VISIBLE>true</VISIBLE>
                      </ATTRIBUTE>
                      <ATTRIBUTE>
                        <NAME>ALMACEN</NAME>
                        <DISPLAY>Almacén</DISPLAY>
                        <VISIBLE>true</VISIBLE>
                      </ATTRIBUTE>
                      <ATTRIBUTE>
                        <NAME>PRECIO</NAME>
                        <DISPLAY>Precio del artículo</DISPLAY>
                        <VISIBLE>true</VISIBLE>
                      </ATTRI');
dbms_lob.append(clXml, 'BUTE>
                      <ATTRIBUTE>
                        <NAME>CREDIT_DATE</NAME>
                        <DISPLAY>Fecha de realización</DISPLAY>
                        <VISIBLE>true</VISIBLE>
                      </ATTRIBUTE>
                      <ATTRIBUTE>
                        <NAME>CODIGO_AUTORIZACION</NAME>
                        <DISPLAY>Código de autorización</DISPLAY>
                        <VISIBLE>true</VISIBLE>
                      </ATTRIBUTE>
                      <ATTRIBUTE>
                        <NAME>APROBADO</NAME>
                        <DISPLAY>Aprobado (Oculto)</DISPLAY>
                        <VISIBLE>false</VISIBLE>
                      </ATTRIBUTE>
                      <ATTRIBUTE>
                        <NAME>APROBADO_DESC</NAME>
                        <DISPLAY>Aprobado</DISPLAY>
                        <VISIBLE>true</VISIBLE>
                      </ATTRIBUTE>
                      <ATTRIBUTE>
                        <NAME>CAUSAL</NAME>
                        <DISPLAY>Detalle causal </DISPLAY>
                        <VISIBLE>true</VISIBLE>
                      </ATTRIBUTE>
                      <ATTRIBUTE>
                        <NAME>PARENT_ID</NAME>
                        <DISPLAY>Parent</DISPLAY>
                        <VISIBLE>false</VISIBLE>
                      </ATTRIBUTE>
                      <PARAMETER>
                        <NAME>INUCREDITID</NAME>
                        <DISPLAY>Código</DISPLAY>
           ');
dbms_lob.append(clXml, '             <READONLY>false</READONLY>
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
                      <SINGULARDISPLAY>Crédito</SINGULARDISPLAY>
                    </VIEW>
                    <CTRL>
                      <QUERYTOGO>802A906B-79D6-4213-94B3-A157C5D9BDDE.E2661711-867A-4075-94F6-BD909454DC10</QUERYTOGO>
                      <ROWORDER>
                        <ATTRIBUTE>
                          <NAME>CREDIT_ID</NAME>
                          <TYPE>ASC</TYPE>
                        </ATTRIBUTE>
                      </ROWORDER>
                    </CTRL>
                  </GRID>
                </VIEW>
                <CTRL>
                  <NAME>B9D0DB90-BDDE-455F-94B2-2A0D3A24A58A</NAME>
                  <LOADCHILDS>true</LOADCHILDS>
                  <CHILDSSERV>OR_UIJPPCL.GETCUSTOMERCREDITS</CHILDSSERV>
                  <PARENTSERV>OR_UIJPPCL.GETCREDITPARENT</PARENTSERV>
                  <PRIMARYKEY>CREDIT_ID</PRIMARYKEY>
                 ');
dbms_lob.append(clXml, ' <FOREINGKEY>PARENT_ID</FOREINGKEY>
                  <BASENAME>OR_JPB_CREDIT</BASENAME>
                  <BASEIDNAME>CREDIT_ID</BASEIDNAME>
                  <ISSEARCH>true</ISSEARCH>
                  <SEARCHENTITY>04D4D658-4BF7-4E1B-9E2E-0486F0834113</SEARCHENTITY>
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
              <SEARCHENTITY>EC3A8BB7-6C17-48B1-BB6F-407CEDC60320</SEARCHENTITY>
            </CTRL>
          </QUERY>
          <QUERY>
            <VIEW>
              <HEADERTITLE>'||chr(38)||'lt;?xml version='||chr(38)||'quot;1.0'||chr(38)||'quot; encoding='||chr(38)||'quot;utf-16'||chr(38)||'quot;?'||chr(38)||'gt;'||chr(38)||'lt;OpenQueryHeaderTitle xmlns:xsi='||chr(38)||'quot;http://www.w3.org/2001/XMLSchema-instance'||chr(38)||'quot; xmlns:xsd='||chr(38)||'quot;http://www.w3.org/2001/XMLSchema'||chr(38)||'quot;'||chr(38)||'gt;'||chr(38)||'lt;Title'||chr(38)||'gt;REGISTRO DE TARIFA #{TARIFF_ID}'||chr(38)||'lt;/Title'||chr(38)||'gt;'||chr(38)||'lt;Subtitle1 /'||chr(38)||'gt;'||chr(38)||'lt;Subtitle2 /'||chr(38)||'gt;'||chr(38)||'lt;/OpenQueryHeaderTitle'||chr(38)||'gt;</HEADERTITLE>
              <GRID>
                <NAME>672E5A4B-0971-40BE-8142-252F5F62EDA5</NAME>
                <MODEL>
                  <ENTITY>
                    <NAME>672E5A4B-0971-40BE-8142-252F5F62EDA5</NAME>
                    <ATTRIBUTE>
                      ');
dbms_lob.append(clXml, '<NAME>TARIFF_ID</NAME>
                      <TYPE>Number</TYPE>
                      <KEY>true</KEY>
                      <LENGTH>15</LENGTH>
                      <SCALE>0</SCALE>
                      <ISNULL>true</ISNULL>
                    </ATTRIBUTE>
                    <ATTRIBUTE>
                      <NAME>PAIS</NAME>
                      <TYPE>Varchar</TYPE>
                      <KEY>false</KEY>
                      <LENGTH>4000</LENGTH>
                      <SCALE>0</SCALE>
                      <ISNULL>true</ISNULL>
                    </ATTRIBUTE>
                    <ATTRIBUTE>
                      <NAME>CIUDAD</NAME>
                      <TYPE>Varchar</TYPE>
                      <KEY>false</KEY>
                      <LENGTH>4000</LENGTH>
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
                      <NAME>STRATUM_ID</NAME>
                      <TYPE>Number</TYPE>
                      <KEY>false</KEY>
                      <LENGTH>4</LENGTH>
                      <SCALE>0</SCALE>
                      <ISNULL>true</ISNULL>
            ');
dbms_lob.append(clXml, '        </ATTRIBUTE>
                    <ATTRIBUTE>
                      <NAME>ACTIVE_PRODUCTS</NAME>
                      <TYPE>Number</TYPE>
                      <KEY>false</KEY>
                      <LENGTH>4</LENGTH>
                      <SCALE>0</SCALE>
                      <ISNULL>true</ISNULL>
                    </ATTRIBUTE>
                    <ATTRIBUTE>
                      <NAME>INF_LIMIT</NAME>
                      <TYPE>Number</TYPE>
                      <KEY>false</KEY>
                      <LENGTH>4</LENGTH>
                      <SCALE>0</SCALE>
                      <ISNULL>true</ISNULL>
                    </ATTRIBUTE>
                    <ATTRIBUTE>
                      <NAME>SUP_LIMIT</NAME>
                      <TYPE>Number</TYPE>
                      <KEY>false</KEY>
                      <LENGTH>4</LENGTH>
                      <SCALE>0</SCALE>
                      <ISNULL>true</ISNULL>
                    </ATTRIBUTE>
                    <ATTRIBUTE>
                      <NAME>AMOUNT</NAME>
                      <TYPE>Decimal</TYPE>
                      <KEY>false</KEY>
                      <LENGTH>20</LENGTH>
                      <SCALE>4</SCALE>
                      <ISNULL>true</ISNULL>
                    </ATTRIBUTE>
                    <ATTRIBUTE>
                      <NAME>PARENT_ID</NAME>
                      <TYPE>Varchar</TYPE>
                      <KEY>false</KEY>
                      <LENGTH>2</LENGTH>
              ');
dbms_lob.append(clXml, '        <SCALE>0</SCALE>
                      <ISNULL>true</ISNULL>
                    </ATTRIBUTE>
                  </ENTITY>
                  <PROXY>
                    <NAME>672E5A4B-0971-40BE-8142-252F5F62EDA5</NAME>
                    <PARAMETER>
                      <NAME>INUTARIFFID</NAME>
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
                    <ENTITY>672E5A4B-0971-40BE-8142-252F5F62EDA5</ENTITY>
                    <SOURCE>OR_UIJPPCL.GETASSINGTARIFF</SOURCE>
                    <TYPE>Service</TYPE>
                  </PROXY>
                </MODEL>
                <VIEW>
                  <NAME>672E5A4B-0971-40BE-8142-252F5F62EDA5</NAME>
                  <DISPLAY>Tarifas</DISPLAY>
                  <ATTRIBUTE>
                    <NAME>TARIFF_ID</NAME>
                    <DISPLAY>ID</DISPLAY>
                    <VISIBLE>true</VISIBLE>
                  </ATTRIBUTE>
                  <ATTRIBUTE>
                    <NAME>PAIS</NAME>
                    <DISPLAY>País</DISPLAY>
                    <VISIBLE>true</VISIBLE>
           ');
dbms_lob.append(clXml, '       </ATTRIBUTE>
                  <ATTRIBUTE>
                    <NAME>CIUDAD</NAME>
                    <DISPLAY>Ciudad</DISPLAY>
                    <VISIBLE>true</VISIBLE>
                  </ATTRIBUTE>
                  <ATTRIBUTE>
                    <NAME>TIPO</NAME>
                    <DISPLAY>Tipo de plan</DISPLAY>
                    <VISIBLE>true</VISIBLE>
                  </ATTRIBUTE>
                  <ATTRIBUTE>
                    <NAME>STRATUM_ID</NAME>
                    <DISPLAY>Estrato</DISPLAY>
                    <VISIBLE>true</VISIBLE>
                  </ATTRIBUTE>
                  <ATTRIBUTE>
                    <NAME>ACTIVE_PRODUCTS</NAME>
                    <DISPLAY>Productos activos</DISPLAY>
                    <VISIBLE>true</VISIBLE>
                  </ATTRIBUTE>
                  <ATTRIBUTE>
                    <NAME>INF_LIMIT</NAME>
                    <DISPLAY>Lím. inferior (años)</DISPLAY>
                    <VISIBLE>true</VISIBLE>
                  </ATTRIBUTE>
                  <ATTRIBUTE>
                    <NAME>SUP_LIMIT</NAME>
                    <DISPLAY>Lím. superior (años)</DISPLAY>
                    <VISIBLE>true</VISIBLE>
                  </ATTRIBUTE>
                  <ATTRIBUTE>
                    <NAME>AMOUNT</NAME>
                    <DISPLAY>Monto ($)</DISPLAY>
                    <VISIBLE>true</VISIBLE>
                  </ATTRIBUTE>
                  <ATTRIBUTE>
                    <NAME>PARENT_ID</NAME>
    ');
dbms_lob.append(clXml, '                <DISPLAY>Parent</DISPLAY>
                    <VISIBLE>false</VISIBLE>
                  </ATTRIBUTE>
                  <PARAMETER>
                    <NAME>INUTARIFFID</NAME>
                    <DISPLAY>ID</DISPLAY>
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
                  <SINGULARDISPLAY>Tarifa</SINGULARDISPLAY>
                </VIEW>
                <CTRL>
                  <QUERYTOGO>802A906B-79D6-4213-94B3-A157C5D9BDDE</QUERYTOGO>
                </CTRL>
              </GRID>
            </VIEW>
            <CTRL>
              <NAME>672E5A4B-0971-40BE-8142-252F5F62EDA5</NAME>
              <LOADCHILDS>true</LOADCHILDS>
              <PRIMARYKEY>TARIFF_ID</PRIMARYKEY>
              <FOREINGKEY>PARENT_ID</FOREINGKEY>
              <BASENAME>OR_JPB_TARIFF</BASENAME>
              <BASEIDNAME>TARIFF_ID</BASEIDNAME>
              <ISSEARCH>true</ISSEARCH>
              <SEARCHENTITY>61B64752-A6F7-427E-AE92-28BA758D54F4</SEARCHENTITY>
            <');
dbms_lob.append(clXml, '/CTRL>
          </QUERY>
        </VIEW>
        <CTRL>
          <NAME>802A906B-79D6-4213-94B3-A157C5D9BDDE</NAME>
          <LOADCHILDS>true</LOADCHILDS>
          <PRIMARYKEY>KEY_</PRIMARYKEY>
          <FOREINGKEY>PARENT</FOREINGKEY>
          <BASENAME>OR_JPB_CUSTOMER</BASENAME>
          <BASEIDNAME>KEY_</BASEIDNAME>
          <ISSEARCH>false</ISSEARCH>
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
        'CREATE OR REPLACE FUNCTION fblB64Clob11052018182739971666'|| chr(10) ||
        '('|| chr(10) ||
            'iclFileContent in clob'|| chr(10) ||
        ')'|| chr(10) ||
        'RETURN BLOB'|| chr(10) ||
        'AS LANGUAGE JAVA NAME ''os.ge.util.Decoder.decodeB64CLOB(java.sql.Clob) return java.sql.Blob'';';
END;
/
BEGIN
    EXECUTE IMMEDIATE 'GRANT EXECUTE ON fblB64Clob11052018182739971666 TO SYSTEM_OBJ_PRIVS_ROLE';
END;
/
DECLARE
    sbDistFileId        ge_distribution_file.distribution_file_id%type;
    blFileContent       ge_distribution_file.app_html%type;
    clB64FileContent    clob;
BEGIN
    sbDistFileId        := 'JPPCL';
    dbms_lob.createtemporary(clB64FileContent, TRUE);
dbms_lob.append(clB64FileContent, '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');
blFileContent := fblB64Clob11052018182739971666(clB64FileContent);
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
    EXECUTE IMMEDIATE 'DROP FUNCTION fblB64Clob11052018182739971666';
END;
/

create OR replace PACKAGE or_wiJPPCL IS
	type tytbStringTable IS TABLE OF varchar2(32767) INDEX BY varchar2(4000);
    gtbAdditionalConditions tytbStringTable;
    gtbProtectionFormats    tytbStringTable;


    FUNCTION frfLOV_1 
    return sys_refcursor;

    FUNCTION frfLOV_2 
    (
        isbNOMBRE in Varchar,
        isbIDENTIFICACION in Varchar
    )
    return sys_refcursor;

    FUNCTION frfLOV_3 
    return sys_refcursor;

    FUNCTION frfLOV_4 
    (
        isbNOMBRE in Varchar,
        isbIDENTIFICACION in Varchar
    )
    return sys_refcursor;

    FUNCTION frfLOV_5 
    (
        isbID in Varchar,
        isbALMACEN in Varchar,
        isbCIUDAD in Varchar,
        isbPAIS in Varchar
    )
    return sys_refcursor;

    FUNCTION frfLOV_6 
    (
        isbID in Varchar,
        isbNOMBRE in Varchar
    )
    return sys_refcursor;

    FUNCTION frfLOV_7 
    (
        isbID in Varchar,
        isbNOMBRE in Varchar,
        isbINUCOUNTRYID in Varchar
    )
    return sys_refcursor;

    FUNCTION frfLOV_8 
    return sys_refcursor;

    FUNCTION frfLOV_9 
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
	/*+ index(OR_JPB_STRATUM UX_OR_JPB_STRATUM01)*/
	OR_JPB_STRATUM.stratum_id ID,
	OR_JPB_STRATUM.description DESCRIPTION
FROM
	OR_JPB_STRATUM
ORDER BY
	OR_JPB_STRATUM.description) t;

        return rfResult;
    EXCEPTION
        when login_denied OR ex.CONTROLLED_ERROR OR pkconstante.exERROR_LEVEL2 then
            raise;
        when others then
            Errors.SetError;
            raise ex.CONTROLLED_ERROR;
    END frfLOV_1;

    FUNCTION frfLOV_2 
    (
        isbNOMBRE in Varchar,
        isbIDENTIFICACION in Varchar
    )
    return sys_refcursor
    IS
        rfResult sys_refcursor;
    BEGIN
        open rfResult for
            SELECT t.* FROM (SELECT
 /*+ INDEX(OR_JPB_CUSTOMER UX_OR_JPB_CUSTOMER01)*/
 OR_JPB_CUSTOMER.CUSTOMER_ID ID,
 OR_JPB_CUSTOMER.DESCRIPTION DESCRIPTION
FROM
 OR_JPB_CUSTOMER

            WHERE  1 = 1
              AND UPPER(OR_JPB_CUSTOMER.DESCRIPTION) LIKE  isbNOMBRE||'%' 
              AND OR_JPB_CUSTOMER.DOCUMENT LIKE  isbIDENTIFICACION||'%' ) t;

        return rfResult;
    EXCEPTION
        when login_denied OR ex.CONTROLLED_ERROR OR pkconstante.exERROR_LEVEL2 then
            raise;
        when others then
            Errors.SetError;
            raise ex.CONTROLLED_ERROR;
    END frfLOV_2;

    FUNCTION frfLOV_3 
    return sys_refcursor
    IS
        rfResult sys_refcursor;
    BEGIN
        open rfResult for
            SELECT t.* FROM (SELECT
	/*+ index(OR_JPB_PLAN_TYPE UX_OR_JPB_PLAN_TYPE01) */
	OR_JPB_PLAN_TYPE.plan_type_id ID,
	upper(OR_JPB_PLAN_TYPE.description) DESCRIPTION
FROM
	OR_JPB_PLAN_TYPE
ORDER BY
	upper(OR_JPB_PLAN_TYPE.description) ) t;

        return rfResult;
    EXCEPTION
        when login_denied OR ex.CONTROLLED_ERROR OR pkconstante.exERROR_LEVEL2 then
            raise;
        when others then
            Errors.SetError;
            raise ex.CONTROLLED_ERROR;
    END frfLOV_3;

    FUNCTION frfLOV_4 
    (
        isbNOMBRE in Varchar,
        isbIDENTIFICACION in Varchar
    )
    return sys_refcursor
    IS
        rfResult sys_refcursor;
    BEGIN
        open rfResult for
            SELECT t.* FROM (SELECT
 /*+ INDEX(OR_JPB_CUSTOMER UX_OR_JPB_CUSTOMER01)*/
 OR_JPB_CUSTOMER.CUSTOMER_ID ID,
 OR_JPB_CUSTOMER.DESCRIPTION DESCRIPTION
FROM
 OR_JPB_CUSTOMER

            WHERE  1 = 1
              AND UPPER(OR_JPB_CUSTOMER.DESCRIPTION) LIKE  isbNOMBRE||'%' 
              AND OR_JPB_CUSTOMER.DOCUMENT LIKE  isbIDENTIFICACION||'%' ) t;

        return rfResult;
    EXCEPTION
        when login_denied OR ex.CONTROLLED_ERROR OR pkconstante.exERROR_LEVEL2 then
            raise;
        when others then
            Errors.SetError;
            raise ex.CONTROLLED_ERROR;
    END frfLOV_4;

    FUNCTION frfLOV_5 
    (
        isbID in Varchar,
        isbALMACEN in Varchar,
        isbCIUDAD in Varchar,
        isbPAIS in Varchar
    )
    return sys_refcursor
    IS
        rfResult sys_refcursor;
    BEGIN
        open rfResult for
            SELECT t.* FROM (SELECT
 /*+ 
 ORDERED 
 USE_NL(OR_JPB_COUNTRY OR_JPB_CITY)
 INDEX(OR_JPB_COUNTRY PK_OR_JPB_COUNTRY)
 INDEX(OR_JPB_CITY PK_OR_JPB_CITY)
 INDEX(OR_JPB_STORE UX_OR_JPB_STORE01)
 */
 OR_JPB_STORE.STORE_ID ID,
 OR_JPB_STORE.DESCRIPTION DESCRIPTION
FROM
 OR_JPB_COUNTRY, OR_JPB_CITY, OR_JPB_STORE 

            WHERE 1 = 1
              AND OR_JPB_STORE.STORE_ID =  isbID 
              AND OR_JPB_STORE.city_id = OR_JPB_CITY.city_id 
              AND OR_JPB_CITY.country_id = OR_JPB_COUNTRY.country_id 
              AND UPPER(OR_JPB_STORE.DESCRIPTION) LIKE  isbALMACEN||'%' 
              AND UPPER(OR_JPB_CITY.DESCRIPTION) LIKE  isbCIUDAD||'%' 
              AND UPPER(OR_JPB_COUNTRY.DESCRIPTION) LIKE  isbPAIS||'%' ) t;

        return rfResult;
    EXCEPTION
        when login_denied OR ex.CONTROLLED_ERROR OR pkconstante.exERROR_LEVEL2 then
            raise;
        when others then
            Errors.SetError;
            raise ex.CONTROLLED_ERROR;
    END frfLOV_5;

    FUNCTION frfLOV_6 
    (
        isbID in Varchar,
        isbNOMBRE in Varchar
    )
    return sys_refcursor
    IS
        rfResult sys_refcursor;
    BEGIN
        open rfResult for
            SELECT t.* FROM (SELECT
 /*+ INDEX(OR_JPB_COUNTRY IDX_OR_JPB_COUNTRY01)*/
 OR_JPB_COUNTRY .COUNTRY_ID ID,
 OR_JPB_COUNTRY .DESCRIPTION DESCRIPTION
FROM
 OR_JPB_COUNTRY 

            WHERE  1 = 1
              AND OR_JPB_COUNTRY.COUNTRY_ID =  isbID 
              AND UPPER(OR_JPB_COUNTRY.DESCRIPTION) LIKE  isbNOMBRE||'%' ) t;

        return rfResult;
    EXCEPTION
        when login_denied OR ex.CONTROLLED_ERROR OR pkconstante.exERROR_LEVEL2 then
            raise;
        when others then
            Errors.SetError;
            raise ex.CONTROLLED_ERROR;
    END frfLOV_6;

    FUNCTION frfLOV_7 
    (
        isbID in Varchar,
        isbNOMBRE in Varchar,
        isbINUCOUNTRYID in Varchar
    )
    return sys_refcursor
    IS
        rfResult sys_refcursor;
    BEGIN
        open rfResult for
            SELECT t.* FROM (SELECT
 /*+ INDEX(OR_JPB_CITY UX_OR_JPB_CITY01)*/
 OR_JPB_CITY.CITY_ID ID,
 OR_JPB_CITY.DESCRIPTION DESCRIPTION
FROM
 OR_JPB_CITY

            WHERE  1 = 1
              AND OR_JPB_CITY.CITY_ID =  isbID 
              AND UPPER(OR_JPB_CITY.DESCRIPTION) LIKE  isbNOMBRE||'%' 
              AND  OR_JPB_CITY.COUNTRY_ID =  isbINUCOUNTRYID ) t;

        return rfResult;
    EXCEPTION
        when login_denied OR ex.CONTROLLED_ERROR OR pkconstante.exERROR_LEVEL2 then
            raise;
        when others then
            Errors.SetError;
            raise ex.CONTROLLED_ERROR;
    END frfLOV_7;

    FUNCTION frfLOV_8 
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
    END frfLOV_8;

    FUNCTION frfLOV_9 
    return sys_refcursor
    IS
        rfResult sys_refcursor;
    BEGIN
        open rfResult for
            SELECT t.* FROM (SELECT
 OR_JPB_STRATUM.stratum_id ID,
 OR_JPB_STRATUM.description DESCRIPTION
FROM
 OR_JPB_STRATUM
ORDER BY
 OR_JPB_STRATUM.description) t;

        return rfResult;
    EXCEPTION
        when login_denied OR ex.CONTROLLED_ERROR OR pkconstante.exERROR_LEVEL2 then
            raise;
        when others then
            Errors.SetError;
            raise ex.CONTROLLED_ERROR;
    END frfLOV_9;
BEGIN
null;
END or_wiJPPCL;

/
