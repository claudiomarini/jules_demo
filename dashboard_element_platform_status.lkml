- name: overall_platform_status_element
  title: "Overall Platform Status"
  type: looker_single_value
  explore: data_quality_explore
  dimensions: [data_quality_metrics.platform_status]
  limit: 1 # Fetches the first row for the single value
  # Basic layout properties
  row: 0
  col: 0
  width: 6
  height: 2
