-- Create a file format that sets the file type as Parquet.
USE NFL_STATS;

CREATE FILE FORMAT my_parquet_format
  TYPE = parquet;

-- -- Query the INFER_SCHEMA function.
-- SELECT *
--   FROM TABLE(
--     INFER_SCHEMA(
--       LOCATION=>'@PBP_PARQUET'
--       , FILE_FORMAT=>'my_parquet_format'
--       )
--     );

-- CREATE TABLE pbp
-- USING TEMPLATE(
-- SELECT ARRAY_AGG(OBJECT_CONSTRUCT(*))
--   FROM TABLE(
--     INFER_SCHEMA(
--       LOCATION=>'@PBP_PARQUET'
--       , FILE_FORMAT=>'my_parquet_format'
--       )
--     ));

--COPY into pbp from @PBP_PARQUET FILE_FORMAT= (FORMAT_NAME='my_parquet_format') MATCH_BY_COLUMN_NAME=CASE_INSENSITIVE;

--next: repeat for years 2018 to 2021

select * from pbp limit 100