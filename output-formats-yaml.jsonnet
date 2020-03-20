local devData = import "dev-data.json";

local myData = devData + {
  buildMeta: {
    versions: [1,2,3]
  }
};
std.manifestYamlDoc(myData)
