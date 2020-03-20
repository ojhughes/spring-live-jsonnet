local devData = import "dev-data.json";
local properties = std.mapWithKey(function(k,v) std.format("app.%s=%s", [k, v]), devData);
std.lines(
  std.map(
    function(jsonKey) properties[jsonKey],
    std.objectFields(properties)))
