DECLARE
    nuErrorCode NUMBER;
    sbErrorMessage VARCHAR2(4000);
    tabla or_jpb_bccustomer.tytbCustomer;
    i number;
BEGIN                         -- ge_module
    errors.Initialize;
    ut_trace.Init;
    ut_trace.SetOutPut(ut_trace.cnuTRACE_DBMS_OUTPUT);
    ut_trace.SetLevel(0);
    ut_trace.Trace('INICIO');

    or_jpb_boassignedquota.AllAssignQuota;
    --or_jpb_bcplan.GetCustomerPlans(1220, :result);
    --or_jpb_bocustomer.GetGranularTbCustomer(0, tabla, 'N');             or_jpb_assigned_quota
    --dbms_output.put_line('SALIDA onuErrorCode: '||nuErrorCode);
    --dbms_output.put_line('SALIDA osbErrorMess: '||sbErrorMessage);

    i:= 1;
    /*LOOP
        exit when i IS null;
        dbms_output.put_Line(tabla(i).customer_id);
        i := tabla.next(i);
    END LOOP;*/

END;