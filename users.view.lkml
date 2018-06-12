view: users {
  sql_table_name: public.users ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: age_group {
    type: tier
    tiers: [18, 35, 51, 71]
    style: integer
    sql: ${age} ;;
  }

  dimension: age_generation {
    type:  string
    sql: |
      CASE
      WHEN ${age} <= 5 THEN 'Gen Alpha'
      WHEN ${age} > 5 AND ${age} <= 23 THEN 'Gen Z'
      WHEN ${age} >= 24 AND ${age} <= 38 THEN 'Gen Y Millenials'
      WHEN ${age} >= 39 AND ${age} <= 53 THEN 'Gen X'
      WHEN ${age} >= 54 AND ${age} <= 72 THEN 'Baby Boomers'
      WHEN ${age} >= 73 AND ${age} <= 93 THEN 'Silent Generation'
      WHEN ${age} >= 94 THEN 'Greatest Generation'
      ELSE 'Unknown'
      END
    ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: traffic_source {
    type: string
    sql: ${TABLE}.traffic_source ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  measure: count {
    type: count
    drill_fields: [id, first_name, last_name, events.count, order_items.count]
  }
}
