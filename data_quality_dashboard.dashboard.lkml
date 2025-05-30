- dashboard: data_quality_dashboard
  title: "Data Quality Dashboard"
  layout: newspaper
  preferred_viewer: dashboards-next # Optional: Use if your Looker version supports/requires this for new dashboards

  filters:
  - name: time_period_filter
    title: "Time Period"
    type: date_filter
    explore: data_quality_explore
    field: data_quality_metrics.time_period
    default_value: "7 days"

  - name: data_source_filter
    title: "Data Source"
    type: field_filter
    explore: data_quality_explore
    field: data_quality_metrics.data_source
    allow_multiple_values: true

  elements:
  - name: overall_platform_status_element
    title: "Overall Platform Status"
    type: looker_single_value
    explore: data_quality_explore
    dimensions: [data_quality_metrics.platform_status]
    limit: 1
    row: 0 # Top row
    col: 0
    width: 24 # Full width
    height: 3

  # Note: Configure the following key metric elements in the Looker UI
  # to show the primary value and use the change measure for comparison or as a secondary statistic.

  - name: data_completeness_element
    title: "Data Completeness"
    type: looker_single_value
    explore: data_quality_explore
    measures: [data_quality_metrics.data_completeness, data_quality_metrics.data_completeness_change]
    row: 3 # Row below platform status, allowing for some space
    col: 0
    width: 6
    height: 4

  - name: data_accuracy_element
    title: "Data Accuracy"
    type: looker_single_value
    explore: data_quality_explore
    measures: [data_quality_metrics.data_accuracy, data_quality_metrics.data_accuracy_change]
    row: 3
    col: 6
    width: 6
    height: 4

  - name: data_consistency_element
    title: "Data Consistency"
    type: looker_single_value
    explore: data_quality_explore
    measures: [data_quality_metrics.data_consistency, data_quality_metrics.data_consistency_change]
    row: 3
    col: 12
    width: 6
    height: 4

  - name: data_timeliness_element
    title: "Data Timeliness"
    type: looker_single_value
    explore: data_quality_explore
    measures: [data_quality_metrics.data_timeliness, data_quality_metrics.data_timeliness_change]
    row: 3
    col: 18
    width: 6
    height: 4
