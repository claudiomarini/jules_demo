view: data_quality_metrics {
  sql_table_name: quality_metrics_table ;;

  dimension_group: time_period {
    label: "Time Period"
    type: time
    timeframes: [date, week, month, year]
    sql: ${TABLE}.event_date ;; # Assuming event_date, change if your column is named 'date'
  }

  dimension: data_source {
    type: string
    sql: ${TABLE}.source_name ;;
    label: "Data Source"
  }

  dimension: platform_status {
    type: string
    sql: ${TABLE}.status_indicator ;;
    label: "Platform Status"
  }

  measure: data_completeness {
    type: average
    sql: ${TABLE}.completeness_score ;;
    value_format_name: percent_2
    label: "Data Completeness"
  }

  measure: data_accuracy {
    type: average
    sql: ${TABLE}.accuracy_score ;;
    value_format_name: percent_2
    label: "Data Accuracy"
  }

  measure: data_consistency {
    type: average
    sql: ${TABLE}.consistency_score ;;
    value_format_name: percent_2
    label: "Data Consistency"
  }

  measure: data_timeliness {
    type: average
    sql: ${TABLE}.timeliness_score ;;
    value_format_name: percent_2
    label: "Data Timeliness"
  }

  measure: data_completeness_change {
    type: number
    sql: ${TABLE}.completeness_change ;;
    value_format_name: percent_2
    label: "Data Completeness Change"
  }

  measure: data_accuracy_change {
    type: number
    sql: ${TABLE}.accuracy_change ;;
    value_format_name: percent_2
    label: "Data Accuracy Change"
  }

  measure: data_consistency_change {
    type: number
    sql: ${TABLE}.consistency_change ;;
    value_format_name: percent_2
    label: "Data Consistency Change"
  }

  measure: data_timeliness_change {
    type: number
    sql: ${TABLE}.timeliness_change ;;
    value_format_name: percent_2
    label: "Data Timeliness Change"
  }
}
