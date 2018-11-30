BEGIN ut_trace.trace('********************Comenzar proceso de objeto:JPTPP******************************'); END;
/
DECLARE
clXml CLOB;

BEGIN
clXml := '<?xml version="1.0" encoding="WINDOWS-1252"?>
<APPLICATION>
  <INFO>
    <NAME>JPTPP</NAME>
    <DISPLAY>Gráfica de clientes por plan</DISPLAY>
    <AUTHOR>OpenSystems</AUTHOR>
    <TYPE>DB</TYPE>
    <MODULE>OR</MODULE>
    <SITE>
      <APPLICATION>JPPCL</APPLICATION>
      <QUERY>0c1bc86b-c77d-49d2-9890-890428d3514a</QUERY>
    </SITE>
  </INFO>
  <DASHBOARD>¿'||chr(38)||'lt;?xml version='||chr(38)||'quot;1.0'||chr(38)||'quot; encoding='||chr(38)||'quot;utf-8'||chr(38)||'quot;?'||chr(38)||'gt;
'||chr(38)||'lt;Dashboard'||chr(38)||'gt;
  '||chr(38)||'lt;Title Text='||chr(38)||'quot;Tablero de control'||chr(38)||'quot; /'||chr(38)||'gt;
  '||chr(38)||'lt;DataSources'||chr(38)||'gt;
    '||chr(38)||'lt;ObjectDataSource ComponentName='||chr(38)||'quot;dashboardObjectDataSource1'||chr(38)||'quot;'||chr(38)||'gt;
      '||chr(38)||'lt;Name'||chr(38)||'gt;Clientes por plan'||chr(38)||'lt;/Name'||chr(38)||'gt;
      '||chr(38)||'lt;DataSource Type='||chr(38)||'quot;System.Data.DataTable, System.Data, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'||chr(38)||'quot; /'||chr(38)||'gt;
    '||chr(38)||'lt;/ObjectDataSource'||chr(38)||'gt;
    '||chr(38)||'lt;ObjectDataSource ComponentName='||chr(38)||'quot;dashboardObjectDataSource2'||chr(38)||'quot;'||chr(38)||'gt;
      '||chr(38)||'lt;Name'||chr(38)||'gt;Cupos asignados'||chr(38)||'lt;/Name'||chr(38)||'gt;
      '||chr(38)||'lt;DataSource Type='||chr(38)||'quot;System.Data.DataTable, System.Data, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'||chr(38)||'quot; /'||chr(38)||'gt;
    '||chr(38)||'lt;/ObjectDataSource'||chr(38)||'gt;
  '||chr(38)||'lt;/DataSources'||chr(38)||'gt;
  '||chr(38)||'lt;Items'||chr(38)||'gt;
    '||chr(38)||'lt;Pie ComponentName='||chr(38)||'quot;pieDashboardItem1'||chr(38)||'quot; Name='||chr(38)||'quot;Gráfica 1'||chr(38)||'quot; DataSource='||chr(38)||'quot;dashboardObjectDataSource1'||chr(38)||'quot;'||chr(38)||'gt;
      '||chr(38)||'lt;DataItems'||chr(38)||'gt;
        '||chr(38)||'lt;Measure DataMember='||chr(38)||'quot;CLIENTE'||chr(38)||'quot; Name='||chr(38)||'quot;Clientes por plan'||chr(38)||'quot; SummaryType='||chr(38)||'quot;Count'||chr(38)||'quot; DefaultId='||chr(38)||'quot;DataItem0'||chr(38)||'quot; /'||chr(38)||'gt;
        '||chr(38)||'lt;Dimension DataMember='||chr(38)||'quot;TIPO_DE_PLAN'||chr(38)||'quot; DefaultId='||chr(38)||'quot;DataItem1'||chr(38)||'quot; /'||chr(38)||'gt;
      '||chr(38)||'lt;/DataItems'||chr(38)||'gt;
      '||chr(38)||'lt;Arguments'||chr(38)||'gt;
        '||chr(38)||'lt;Argument DefaultId='||chr(38)||'quot;DataItem1'||chr(38)||'quot; /'||chr(38)||'gt;
      '||chr(38)||'lt;/Arguments'||chr(38)||'gt;
      '||chr(38)||'lt;Values'||chr(38)||'gt;
        '||chr(38)||'lt;Value DefaultId='||chr(38)||'quot;DataItem0'||chr(38)||'quot; /'||chr(38)||'gt;
      '||chr(38)||'lt;/Values'||chr(38)||'gt;
    '||chr(38)||'lt;/Pie'||chr(38)||'gt;
    '||chr(38)||'lt;Card ComponentName='||chr(38)||'quot;cardDashboardItem1'||chr(38)||'quot; Name='||chr(38)||'quot;Fichas 1'||chr(38)||'quot; DataSource='||chr(38)||'quot;dashboardObjectDataSource1'||chr(38)||'quot;'||chr(38)||'gt;
      '||chr(38)||'lt;DataItems'||chr(38)||'gt;
        '||chr(38)||'lt;Measure DataMember='||chr(38)||'quot;CLIENTE'||chr(38)||'quot; SummaryType='||chr(38)||'quot;Count'||chr(38)||'quot; DefaultId='||chr(38)||'quot;DataItem0'||chr(38)||'quot; /'||chr(38)||'gt;
      '||chr(38)||'lt;/DataItems'||chr(38)||'gt;
      '||chr(38)||'lt;Card Name='||chr(38)||'quot;Clientes con plan hasta la fecha'||chr(38)||'quot;'||chr(38)||'gt;
        '||chr(38)||'lt;ActualValue DefaultId='||chr(38)||'quot;DataItem0'||chr(38)||'quot; /'||chr(38)||'gt;
      '||chr(38)||'lt;/Card'||chr(38)||'gt;
    '||chr(38)||'lt;/Card'||chr(38)||'gt;
    '||chr(38)||'lt;Card ComponentName='||chr(38)||'quot;cardDashboardItem2'||chr(38)||'quot; Name='||chr(38)||'quot;Cupos'||chr(38)||'quot; DataSource='||chr(38)||'quot;dashboardObjectDataSource2'||chr(38)||'quot;'||chr(38)||'gt;
      '||chr(38)||'lt;DataItems'||chr(38)||'gt;
        '||chr(38)||'lt;Measure DataMember='||chr(38)||'quot;ASSIGNED'||chr(38)||'quot; DefaultId='||chr(38)||'quot;DataItem0'||chr(38)||'quot; /'||chr(38)||'gt;
        '||chr(38)||'lt;Measure DataMember='||chr(38)||'quot;ASSIGNED'||chr(38)||'quot; SummaryType='||chr(38)||'quot;Count'||chr(38)||'quot; DefaultId='||chr(38)||'quot;DataItem1'||chr(38)||'quot; /'||chr(38)||'gt;
      '||chr(38)||'lt;/DataItems'||chr(38)||'gt;
      '||chr(38)||'lt;Card Name='||chr(38)||'quot;Total asignado'||chr(38)||'quot;'||chr(38)||'gt;
        '||chr(38)||'lt;ActualValue DefaultId='||chr(38)||'quot;DataItem0'||chr(38)||'quot; /'||chr(38)||'gt;
      '||chr(38)||'lt;/Card'||chr(38)||'gt;
      '||chr(38)||'lt;Card Name='||chr(38)||'quot;# Cupos asignados'||chr(38)||'quot;'||chr(38)||'gt;
        '||chr(38)||'lt;ActualValue DefaultId='||chr(38)||'quot;DataItem1'||chr(38)||'quot; /'||chr(38)||'gt;
      '||chr(38)||'lt;/Card'||chr(38)||'gt;
    '||chr(38)||'lt;/Card'||chr(38)||'gt;
  '||chr(38)||'lt;/Items'||chr(38)||'gt;
  '||chr(38)||'lt;LayoutTree'||chr(38)||'gt;
    '||chr(38)||'lt;LayoutGroup'||chr(38)||'gt;
      '||chr(38)||'lt;LayoutGroup Orientation='||chr(38)||'quot;Vertical'||chr(38)||'quot; Weight='||chr(38)||'quot;63.694951664876477'||chr(38)||'quot;'||chr(38)||'gt;
        '||chr(38)||'lt;LayoutItem DashboardItem='||chr(38)||'quot;pieDashboardItem1'||chr(38)||'quot; Weight='||chr(38)||'quot;64.81481481481481'||chr(38)||'quot; /'||chr(38)||'gt;
        '||chr(38)||'lt;LayoutItem DashboardItem='||chr(38)||'quot;cardDashboardItem2'||chr(38)||'quot; Weight='||chr(38)||'quot;35.185185185185183'||chr(38)||'quot; /'||chr(38)||'gt;
      '||chr(38)||'lt;/LayoutGroup'||chr(38)||'gt;
      '||chr(38)||'lt;LayoutItem DashboardItem='||chr(38)||'quot;cardDashboardItem1'||chr(38)||'quot; Weight='||chr(38)||'quot;36.305048335123523'||chr(38)||'quot; /'||chr(38)||'gt;
    '||chr(38)||'lt;/LayoutGroup'||chr(38)||'gt;
  '||chr(38)||'lt;/LayoutTree'||chr(38)||'gt;
'||chr(38)||'lt;/Dashboard'||chr(38)||'gt;</DASHBOARD>
  <CTRL>
    <MODEL>
      <ENTITY>
        <NAME>88d48db7-5d0d-4e20-bad2-9a877150b4df</NAME>
        <ATTRIBUTE>
          <NAME>TIPO_DE_PLAN</NAME>
          <TYPE>Varchar</TYPE>
          <KEY>false</KEY>
          <LENGTH>4000</LENGTH>
          <SCALE>0</SCALE>
          <ISNULL>true</ISNULL>
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
          <ISNULL>true</ISNULL>
        </ATTRIBUTE>
        <ATTRIBUTE>
          <NAME>FECHA_REGISTRO</NAME>
          <TYPE>Date</TYPE>
          <KEY>false</KEY>
          <LENGTH>7</LENGTH>
          <SCALE>0</SCALE>
          <ISNULL>true</ISNULL>
        </ATTRIBUTE>
      </ENTITY>
      <PROXY>
        <NAME>88d48db7-5d0d-4e20-bad2-9a877150b4df</NAME>
        <ENTITY>88d48db7-5d0d-4e20-bad2-9a877150b4df</ENTITY>
        <SOURCE>SELECT
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
    AND OR_jpb_plan.plan_type_id = OR_jpb_plan_type.plan_type_id</SOURCE>
        <TYPE>Statement</TYPE>
      </PROXY>
    </MODEL>
    <VIEW>
      <NAME>88d48db7-5d0d-4e20-bad2-9a877150b4df</NAME>
      <DISPLAY>Clientes por plan</DISPLAY>
      <ATTRIBUTE>
        <NAME>TIPO_DE_PLAN</NAME>
        <DISPLAY>TIPO_DE_PLAN</DISPLAY>
        <VISIBLE>true</VISIBLE>
      </ATTRIBUTE>
      <ATTRIBUTE>
        <NAME>DOCUMENTO</NAME>
        <DISPLAY>DOCUMENTO</DISPLAY>
        <VISIBLE>true</VISIBLE>
      </ATTRIBUTE>
      <ATTRIBUTE>
        <NAME>CLIENTE</NAME>
        <DISPLAY>CLIENTE</DISPLAY>
        <VISIBLE>true</VISIBLE>
      </ATTRIBUTE>
      <ATTRIBUTE>
        <NAME>FECHA_REGISTRO</NAME>
        <DISPLAY>FECHA_REGISTRO</DISPLAY>
        <VISIBLE>true</VISIBLE>
      </ATTRIBUTE>
      <SINGULARDISPLAY/>
    </VIEW>
  </CTRL>
  <CTRL>
    <MODEL>
      <ENTITY>
        <NAME>f80f1bd8-4f73-41f3-be1d-c71d551bbf3b</NAME>
        <ATTRIBUTE>
          <NAME>CUSTOMER_ID</NAME>
          <TYPE>Number</TYPE>
          <KEY>false</KEY>
          <LENGTH>15</LENGTH>
          <SCALE>0</SCALE>
          <ISNULL>true</ISNULL>
        </ATTRIBUTE>
        <ATTRIBUTE>
          <NAME>ASSIGNED</NAME>
          <TYPE>Decimal</TYPE>
          <KEY>false</KEY>
          <LENGTH>20</LENGTH>
          <SCALE>4</SCALE>
          <ISNULL>true</ISNULL>
        </ATTRIBUTE>
      </ENTITY>
      <PROXY>
        <NAME>f80f1bd8-4f73-41f3-be1d-c71d551bbf3b</NAME>
        <ENTITY>f80f1bd8-4f73-41f3-be1d-c71d551bbf3b</ENTITY>
        <SOURCE>SELECT
    /*+ INDEX (OR_JPB_ASSIGNED_QUOTA UX_OR_JPB_ASSIGNED_QUOTA02)*/
    OR_JPB_ASSIGNED_QUOTA.customer_id,
    OR_JPB_ASSIGNED_QUOTA.assigned
FROM
    OR_JPB_ASSIGNED_QUOTA</SOURCE>
        <TYPE>Statement</TYPE>
      </PROXY>
    </MODEL>
    <VIEW>
      <NAME>f80f1bd8-4f73-41f3-be1d-c71d551bbf3b</NAME>
      <DISPLAY>Cupos asignados</DISPLAY>
      <ATTRIBUTE>
        <NAME>CUSTOMER_ID</NAME>
        <DISPLAY>Cliente</DISPLAY>
        <VISIBLE>true</VISIBLE>
      </ATTRIBUTE>
      <ATTRIBUTE>
        <NAME>ASSIGNED</NAME>
        <DISPLAY>Asignado</DISPLAY>
        <VISIBLE>true</VISIBLE>
      </ATTRIBUTE>
      <SINGULARDISPLAY/>
    </VIEW>
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
BEGIN ut_trace.trace('********************FIN  proceso de objeto:JPTPP******************************'); end;
/
