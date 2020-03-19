local common = import "common-data-oo.jsonnet.TEMPLATE";
local kubecfg = import "vendor/kubecfg/kubecfg.libsonnet";
//local myConfig = common + {
//  projectName: "spring-microservice",
//  buildInfo+:: {
//    commitSha: "f6b4cd",
//    prefix: "snapshot",
//    author: "ojhughes",
//  },
//};
local myConfig = common.newAppMetadata(
  projectName = "spring-microservice",
  commitSha = "f6b4cd",
  minorVersion = 3,
  patchVersion = 2,
  buildPrefix = "snapshot"
);
myConfig
