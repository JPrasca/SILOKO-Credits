SELECT
    OR_JPB_plan.plan_id,
    OR_JPB_plan.plan_type_id,
    OR_jpb_customer.customer_id,
    OR_jpb_customer.description,
    OR_jpb_customer.country_id,
    OR_jpb_customer.city_id,
    OR_jpb_customer.stratum_id,
    round((ut_date.fdtSysdate-OR_jpb_customer.registration_date)/365) stay_time,
    OR_jpb_assigned_quota.assigned
FROM
OR_JPB_plan, OR_jpb_customer, OR_jpb_assigned_quota
WHERE
    OR_jpb_plan.customer_id = OR_jpb_customer.customer_id
AND
    or_jpb_assigned_quota.customer_id = OR_jpb_customer.customer_id
AND
    OR_jpb_customer.has_quota = 'Y'            --ge_message or_jpb_assigned_quota