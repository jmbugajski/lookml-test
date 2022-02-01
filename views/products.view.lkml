view: products {
  sql_table_name: public.products ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: brand {
    sql: TRIM(${TABLE}.brand) ;;
    link: {
      label: "Website"
      url: "http://www.google.com/search?q={{ value | encode_uri }}+clothes&btnI"
      icon_url: "http://www.google.com/s2/favicons?domain=www.{{ value | encode_uri }}.com"
    }
    link: {
      label: "Facebook"
      url: "http://www.google.com/search?q=site:facebook.com+{{ value | encode_uri }}+clothes&btnI"
      icon_url: "https://upload.wikimedia.org/wikipedia/commons/c/c2/F_icon.svg"
    }
    link: {
      label: "{{value}} Analytics Dashboard"
      url: "/dashboards/8?Brand%20Name={{ value | encode_uri }}"
      icon_url: "http://www.looker.com/favicon.ico"
    }
    drill_fields: [department, category, name, sku, cost]
  }

  dimension: store_area {
    type: string
    map_layer_name: store_map_layer
    sql: ${TABLE}.category ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: distribution_center_id {
    type: number
    sql: ${TABLE}.distribution_center_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  measure: brand_count {
    type: count_distinct
    sql: ${brand} ;;
  }

  measure: avg_retail_price {
    type: average
    value_format_name: usd
    sql: ${retail_price} ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, distribution_centers.id, distribution_centers.name, inventory_items.count]
  }

}
