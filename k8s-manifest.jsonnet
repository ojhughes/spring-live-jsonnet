local devData = import "dev-data.json";
local serviceDeployment = import "vendor/service-deployment/service-deployment.libsonnet";
serviceDeployment + {
  serviceName:: devData.projectName,
  dockerImage:: devData.projectName + ":" + devData.commitSha,
  serviceConf:: {
    envVarName:: "SPRING_APPLICATION_JSON",
    spring: {
      application: {
        name: devData.projectName
      }
    }
  },
}
