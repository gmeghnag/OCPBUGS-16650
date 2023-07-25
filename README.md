# OCPBUGS-16650
```
oc get --raw /api/v1/nodes/$(oc get pod ocpbugs-16650-1-build -o jsonpath='{.spec.nodeName}')/proxy/stats/summary  | jq '.pods[] | . as $parent | select($parent.podRef.name| contains("build"))| "Namespace: " + $parent.podRef.namespace + "\n" + "PodName  :" + $parent.podRef.name + "\n" + "UsedGB   :" + ($parent."ephemeral-storage".usedBytes/1024/1024/1024|tostring)' -r
```
