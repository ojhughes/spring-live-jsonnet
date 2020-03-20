local common = import "build-meta.jsonnet.TEMPLATE";
local devData = import "dev-data.json";

local myConfig = common.newAppMetadata(
  projectName = devData.projectName,
  commitSha = devData.commitSha,
  minorVersion = devData.minorVersion,
  patchVersion = devData.patchVersion,
  buildPrefix = devData.buildPrefix
);
myConfig
