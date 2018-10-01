BEGIN ut_trace.trace('********************Comenzar proceso de objeto:JPPAC******************************'); END;
/
DECLARE
clXml CLOB;

BEGIN
clXml := '<?xml version="1.0" encoding="WINDOWS-1252"?>
<APPLICATION>
  <INFO>
    <NAME>JPPAC</NAME>
    <DISPLAY>Asignación de cupo de crédito manual</DISPLAY>
    <AUTHOR>OpenSystems</AUTHOR>
    <TYPE>PB</TYPE>
    <MODULE>OR</MODULE>
    <SITE>
      <APPLICATION>JPPCL</APPLICATION>
      <QUERY>OR_JPB_PLAN</QUERY>
    </SITE>
  </INFO>
  <VIEW>
    <FORM>
      <ENTITY>
        <NAME>Form</NAME>
        <ATTRIBUTE>
          <NAME>OR_JPB_ASSIGNED_QUOTA'||chr(64)||'CUSTOMER_ID</NAME>
          <TYPE>Number</TYPE>
          <KEY>false</KEY>
          <LENGTH>15</LENGTH>
          <SCALE>0</SCALE>
          <ISNULL>false</ISNULL>
        </ATTRIBUTE>
        <ATTRIBUTE>
          <NAME>OR_JPB_ASSIGNED_QUOTA'||chr(64)||'ASSIGNED</NAME>
          <TYPE>Number</TYPE>
          <KEY>false</KEY>
          <LENGTH>20</LENGTH>
          <SCALE>4</SCALE>
          <ISNULL>true</ISNULL>
        </ATTRIBUTE>
      </ENTITY>
      <VIEW>
        <NAME>Form</NAME>
        <GROUP>
          <PARAMETER>
            <NAME>OR_JPB_ASSIGNED_QUOTA'||chr(64)||'CUSTOMER_ID</NAME>
            <DISPLAY>Cliente SILOKO</DISPLAY>
            <READONLY>true</READONLY>
            <REQUIRED>false</REQUIRED>
            <VISIBLE>true</VISIBLE>
            <STYLECASE>Upper</STYLECASE>
          </PARAMETER>
          <PARAMETER>
            <NAME>OR_JPB_ASSIGNED_QUOTA'||chr(64)||'ASSIGNED</NAME>
            <DISPLAY>Monto asignado</DISPLAY>
            <READONLY>false</READONLY>
            <REQUIRED>true</REQUIRED>
            <VISIBLE>true</VISIBLE>
            <STYLECASE>Upper</STYLECASE>
          </PARAMETER>
        </GROUP>
      </VIEW>
      <CTRL>
        <NAME>Form</NAME>
        <INIT>OR_UIJPPAC.INITASSIGN</INIT>
        <PARAMETERS>
          <NAME>OR_JPB_ASSIGNED_QUOTA'||chr(64)||'CUSTOMER_ID</NAME>
          <COMPONENT>
            <TYPE>TextBoxField</TYPE>
          </COMPONENT>
        </PARAMETERS>
        <PARAMETERS>
          <NAME>OR_JPB_ASSIGNED_QUOTA'||chr(64)||'ASSIGNED</NAME>
          <COMPONENT>
            <TYPE>TextBoxField</TYPE>
          </COMPONENT>
        </PARAMETERS>
      </CTRL>
    </FORM>
  </VIEW>
  <CTRL>
    <OBJECT>OR_UIJPPAC.ASSIGNSINGLEQUOTA</OBJECT>
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
BEGIN ut_trace.trace('********************FIN  proceso de objeto:JPPAC******************************'); end;
/

BEGIN
    EXECUTE IMMEDIATE ''||
        'CREATE OR REPLACE FUNCTION fblB64Clob06052018223117327767'|| chr(10) ||
        '('|| chr(10) ||
            'iclFileContent in clob'|| chr(10) ||
        ')'|| chr(10) ||
        'RETURN BLOB'|| chr(10) ||
        'AS LANGUAGE JAVA NAME ''os.ge.util.Decoder.decodeB64CLOB(java.sql.Clob) return java.sql.Blob'';';
END;
/
BEGIN
    EXECUTE IMMEDIATE 'GRANT EXECUTE ON fblB64Clob06052018223117327767 TO SYSTEM_OBJ_PRIVS_ROLE';
END;
/
DECLARE
    sbDistFileId        ge_distribution_file.distribution_file_id%type;
    blFileContent       ge_distribution_file.app_html%type;
    clB64FileContent    clob;
BEGIN
    sbDistFileId        := 'JPPAC';
    dbms_lob.createtemporary(clB64FileContent, TRUE);
dbms_lob.append(clB64FileContent, 'UEsDBAoAAAAAAOmzpkwAAAAAAAAAAAAAAAAGABwASlBQQUMvVVQJAAOFyO9ahcjvWnV4CwABBPUB
AAAE9AEAAFBLAwQUAAIACADps6ZMaYULNBcCAABeBAAADAAcAEpQUEFDL2FwcC5qc1VUCQADhcjv
WoXI71p1eAsAAQT1AQAABPQBAAC9k81uEzEQgF8l8gkkK2oquGyFxOaHakv+6CZcoiryrifJgNd2
13bbVZQH4swj9MXwenfbIgGCCyd7fj3zjWfyYPscdijhFblaLuNRv1AcRD/cP6iymNUioUd4sCB5
RBbDflD1h8xAa9whCG6izVGyArzL9fZqOdzGaZpczifj7af1YhW/H63T1WI2ud4mY0JBWrTVb1wJ
ZdaWmDnrk/0UxtFowXzcSKBPAb00mS4+Lgi1SgmLOiKEHlDacIIIsq20TyNdkUFJ6Feooh0TBqhW
Bi0qGQ1owbRGuY/OqAC5t4do8JaanAnwGjRzJ0QbUwLjCymqyJaulm4dlsBb4x0azHxMsHmmzAn7
mQkHdRXGVgJGHllE1lrXlWhW+hYi6bNTXap8e8cE8hdyIrE156rQSnbeJ/pHzp34L5CfY54Iz5S0
qscM7iXj6i8Ic8ixYOKXiM+fEA86xOdnLeI3HeKWaUu4A94iDsb/Rvjm9PriHiVX980ixFoncqfe
teCDjtACLBszy6KjyWJnD6r0rDXItDIWCuNLysYdzjiAzPHxu+xx6OVOq3CWj984etAFk66GZzK/
U06E6T4TNtkqMF4OCVXZF8htmOo6aVa2GV+azC+nk3a4tw7KqukN6y5fuifzZNWE+Mz5AcJ7De9d
DRxk3vFn5QykizY3/pai/yqbox+kwJyFudYkRtPute6jLafxnHiGp4sfUEsDBBQAAgAIAOmzpkwa
vCu8WwEAAJgCAAAQABwASlBQQUMvaW5kZXguaHRtbFVUCQADhcjvWoXI71p1eAsAAQT1AQAABPQB
AAB9UslOwzAQvfMVg6+o8RWpcRFbBRWIShShnirXmTYGxw6eKbR/j5NuUYXwZTTLe7M85+d3L7eT
6fgeHibPT4Mz2L285MpBpb1dILESoptCXXTcCllDyVz38Gtlv5UwwTN67vGmRgE7TwnGNcuGtg+m
1JGQ1dtk2LsUskPmrP+EiE6J1zJENiuGx8QgoIy4UCLLZEQKq2iQpK30MhmqdOSFw/UPzjNrgoCm
sRJtWq57tsF3WrBlh4PReHx9m8utc0ySibbmY6B5LhjNNvismQEUNFMM3+/HN9L6AtdZs9OVrmvV
cgq46CA0lf0juzylz33YhTqbE28cUonI+1Xa0xmiP88wx0WIOHNBF3JPlzXFg9xWS6Bo/gG0R5od
YB/1UoB2Sa1pKoZ5DD+EEYqABD4w0Kqukyww0t/6dQtJCjtNpIQPsy1LEjQ/TNLZVZ58nHkoNqmy
Nd2qdM7BL1BLAQIeAwoAAAAAAOmzpkwAAAAAAAAAAAAAAAAGABgAAAAAAAAAEAD/QQAAAABKUFBB
Qy9VVAUAA4XI71p1eAsAAQT1AQAABPQBAABQSwECHgMUAAIACADps6ZMaYULNBcCAABeBAAADAAY
AAAAAAABAAAA/4FAAAAASlBQQUMvYXBwLmpzVVQFAAOFyO9adXgLAAEE9QEAAAT0AQAAUEsBAh4D
FAACAAgA6bOmTBq8K7xbAQAAmAIAABAAGAAAAAAAAQAAAP+BnQIAAEpQUEFDL2luZGV4Lmh0bWxV
VAUAA4XI71p1eAsAAQT1AQAABPQBAABQSwUGAAAAAAMAAwD0AAAAQgQAAAAA');
blFileContent := fblB64Clob06052018223117327767(clB64FileContent);
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
    EXECUTE IMMEDIATE 'DROP FUNCTION fblB64Clob06052018223117327767';
END;
/


BEGIN
    if (ut_object.fboExistObject('or_wiJPPAC')) then
        execute immediate 'DROP PACKAGE or_wiJPPAC';
    end if;
END;
/
