connection: "thelook_events"

include: "*.view"

datagroup: jmb_test_default_datagroup {
  max_cache_age: "4 hours"
}
persist_with: jmb_test_default_datagroup

map_layer: store_map_layer {
  format: topojson
  file: "store-map-sample-mod.topojson"
  property_key: "display-name"
}

explore: order_items {
  group_label: "Store Analytics"
  join: users {
    type: left_outer
    sql_on: ${order_items.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: inventory_items {
    type: left_outer
    sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }

  join: distribution_centers {
    type: left_outer
    sql_on: ${products.distribution_center_id} = ${distribution_centers.id} ;;
    relationship: many_to_one
  }
}

explore: events {
  group_label: "Store Analytics"
  join: users {
    type: left_outer
    sql_on: ${events.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: inventory_items {
  group_label: "Store Analytics"
  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }

  join: distribution_centers {
    type: left_outer
    sql_on: ${products.distribution_center_id} = ${distribution_centers.id} ;;
    relationship: many_to_one
  }
}

explore: company_list {
  group_label: "Store Analytics"
}

explore: distribution_centers {
  group_label: "Store Analytics"
}
explore: users {
  group_label: "Store Analytics"
}
