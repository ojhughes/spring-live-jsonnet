local kubeServiceDeployment = import "vendor/service-deployment/service-deployment.libsonnet";

  local webapp = kubeServiceDeployment + {
    serviceName:: customerName + "-webapp",
    dockerImage:: "webapp:" + release,
    serviceConf:: commonConf + {
      managerAddress: customerName + "-manager.prod.svc.cluster.local",
    },
  }
