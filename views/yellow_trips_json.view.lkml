view: yellow_trips_json {
  sql_table_name: `big-query-demo-09.taxi_dataset.yellow_trips_json` ;;

  dimension: taxi_json {
    type: string
    sql: ${TABLE}.taxi_json ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
