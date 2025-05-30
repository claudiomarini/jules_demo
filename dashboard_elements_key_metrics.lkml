# Note: Configure these elements in the Looker UI to show the primary value
# and use the change measure for comparison or as a secondary statistic.

- name: data_completeness_element
  title: "Data Completeness"
  type: looker_single_value # Or other types like "looker_bar" if change is shown as progress
  explore: data_quality_explore
  measures: [data_quality_metrics.data_completeness, data_quality_metrics.data_completeness_change]
  # Basic layout properties
  row: 2
  col: 0
  width: 6
  height: 3

- name: data_accuracy_element
  title: "Data Accuracy"
  type: looker_single_value
  explore: data_quality_explore
  measures: [data_quality_metrics.data_accuracy, data_quality_metrics.data_accuracy_change]
  # Basic layout properties
  row: 2
  col: 6
  width: 6
  height: 3

- name: data_consistency_element
  title: "Data Consistency"
  type: looker_single_value
  explore: data_quality_explore
  measures: [data_quality_metrics.data_consistency, data_quality_metrics.data_consistency_change]
  # Basic layout properties
  row: 2
  col: 12
  width: 6
  height: 3

- name: data_timeliness_element
  title: "Data Timeliness"
  type: looker_single_value
  explore: data_quality_explore
  measures: [data_quality_metrics.data_timeliness, data_quality_metrics.data_timeliness_change]
  # Basic layout properties
  row: 2
  col: 18
  width: 6
  height: 3
