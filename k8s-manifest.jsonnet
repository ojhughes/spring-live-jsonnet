local devData = import "dev-data.json";
local serviceDeployment = import "vendor/service-deployment/service-deployment.libsonnet";
serviceDeployment + {
  serviceName:: devData.projectName,
  dockerImage:: devData.projectName + ":" + devData.projectName,
  serviceConf:: {
    customerName: "foocorp",
    database: "user-db.databricks.us-west-2.rds.amazonaws.com",
  },
}
