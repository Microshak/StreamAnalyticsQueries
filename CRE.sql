WITH test AS
(
SELECT
    *
    ,UDF.ParseJSON(TestProp) as Something
FROM
  AvroIotHub
  )
  
  select Something.car.name from test

