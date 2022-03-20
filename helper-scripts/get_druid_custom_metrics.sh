function f() {
  kubectl get --raw /apis/custom.metrics.k8s.io/v1beta1/namespaces/apachecon/pods/*/$1 | jq .
}

f druid_ingestion_num_peons
f druid_ingestion_num_workers
f druid_ingestion_num_pending_tasks
f druid_ingestion_num_running_tasks
f druid_ingestion_expected_num_workers
f druid_ingestion_current_load