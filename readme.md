# Jsonnet: Data driven configuration language
![](springlive.png)

![](jsonnet-overview.png)

## Talk Outline
* Jsonnet overview
* Advantage of string templating
* Simple example

## Useful Links
* https://twitter.com/olliehughes82[@olliehughes82]
* https://github.com/databricks/jsonnet-style-guide[Databricks Jsonnet Style Guide]
* https://github.com/grafana/jsonnet-libs[Grafana Jsonnet tools and mixins]

## Jsonnet Overview
* Superset of JSON
* Reuse
* Icky
* Merge
* Transform
* Function
* Conditionals
* Std lib

## Tools
* [Jsonnet](https://jsonnet.org/)
* [Jsonnet Bundler](https://github.com/jsonnet-bundler/jsonnet-bundler)
* [yq](https://mikefarah.gitbook.io/yq/)
* [jq](https://stedolan.github.io/jq/)
* [Bitnami Kubcfg](https://github.com/bitnami/kubecfg)

Superset of JSON designed for describing cloud resources

## Pros & Cons
✅ Data is smart, text is dumb

✅ Reuse curated "data models"

✅ More machine readable / writable than YAML (because it's data not text)

✅ Excellent at merging or overriding deeply nested data structures

✅ Create "native" functions easily in Go

✅ JVM bindings (integrate with your build easily)

🛑 Can be a hard sell to colleagues

🛑 It has Json in the name

🛑 Looks a bit like the spawn of JSON & Python

🛑 To quote my colleague "Ugh... It's Icky"

## Alternative approaches
* Plain old, duplicated, hand cranked YAML
* Kustomize
* Helm charts

## Output formats
* Arbitary String
* Properties file
* YAML

## Simple example

```json
{
  "projectName": "spring-microservice",
  "appMeta": {
    "buildInfo": {
      "commitSha": "f6b4cd",
      "prefix": "SNAPSHOT",
      "releaseNumber": "SNAPSHOT-f6b4cd"
    },
    "versionInfo": {
      "humanized": "1.3.2-SNAPSHOT-f6b4cd",
      "major": 1,
      "minor": 3,
      "patch": 2
    },
    "artifacts": [
      "spring-microservice-1.3.2-SNAPSHOT-f6b4cd.src.jar",
      "spring-microservice-1.3.2-SNAPSHOT-f6b4cd.javadoc.jar",
      "spring-microservice-1.3.2-SNAPSHOT-f6b4cd.bin.jar",
      "spring-microservice-1.3.2-SNAPSHOT-f6b4cd.tar.gz"
    ]
  }
}
```
