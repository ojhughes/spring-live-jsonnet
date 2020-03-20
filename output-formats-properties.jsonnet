local devData = import "dev-data.json";
local properties = [
std.format("app.projectName=%s", devData.projectName),
std.format("app.commitSha=%s", devData.commitSha),
std.format("app.minorVersion=%s", devData.minorVersion),
std.format("app.patchVersion=%s", devData.patchVersion),
std.format("app.buildPrefix=%s", devData.buildPrefix)
];
std.lines(properties)
