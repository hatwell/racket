DROP TABLE IF EXISTS jobs;

CREATE TABLE jobs(
  id SERIAL4 PRIMARY KEY,
  company VARCHAR(255),
  position VARCHAR(255),
  stage_of_process VARCHAR(255),
  application_sent BOOLEAN,
  job_offer BOOLEAN
);
