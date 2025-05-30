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
  # listens_to_filters: [] # This is usually for linking filters, not strictly needed for multiple selections by default.
                          # allow_multiple_values: true is the primary setting.
                          # If specific linking behavior is needed later, listens_to_filters can be added.
