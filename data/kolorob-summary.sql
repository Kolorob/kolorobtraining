
(
  select 'Recreation', ci.area as area, count(t.id)
  from contact_info ci, recreation_table t
  where t._contact_info = ci.id
  group by ci.area
)

union

(
  select 'Legal', ci.area as area, count(t.id)
  from contact_info ci, legal_table t
  where t._contact_info = ci.id
  group by ci.area
)

union

(
  select 'Government', ci.area as area, count(t.id)
  from contact_info ci, government_table t
  where t._contact_info = ci.id
  group by ci.area
)

union

(
  select 'Financial', ci.area as area, count(t.id)
  from contact_info ci, financial_table t
  where t._contact_info = ci.id
  group by ci.area
)

union

(
  select 'Education', ci.area as area, count(t.id)
  from contact_info ci, education_table t
  where t._contact_info = ci.id
  group by ci.area
)

union

(
  select 'Health', ci.area as area, count(t.id)
  from contact_info ci, health_table t
  where t._contact_info = ci.id
  group by ci.area
)

order by 1, 2
;

-- ( select count(*) from health_table; )
