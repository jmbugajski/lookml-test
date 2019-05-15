- dashboard: business_pulse_dashboard
  title: Business Pulse Dashboard
  layout: newspaper
  description: ''
  elements:
  - name: Number of First Purchasers (copy)
    title: Number of First Purchasers (copy)
    model: thelook
    explore: order_items
    type: single_value
    fields: [order_items.first_purchase_count]
    filters: {}
    sorts: [order_items.first_purchase_count desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: goal, label: Goal, expression: '10000', value_format: !!null '',
        value_format_name: decimal_0}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    custom_color: "#1f78b4"
    show_single_value_title: true
    single_value_title: New Customers Acquired
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    font_size: medium
    colors: ["#5245ed", "#a2dcf3", "#776fdf", "#1ea8df", "#49cec1", "#776fdf", "#49cec1",
      "#1ea8df", "#a2dcf3", "#776fdf", "#776fdf", "#635189"]
    text_color: black
    hidden_fields: []
    y_axes: []
    note_state: collapsed
    note_display: above
    note_text: ''
    listen:
      Date: order_items.created_date
      State: users.state
      City: users.city
      User ID: users.id
    row: 3
    col: 1
    width: 5
    height: 4
  - name: Average Sale Price
    title: Average Sale Price
    model: thelook
    explore: order_items
    type: single_value
    fields: [order_items.average_sale_price]
    filters: {}
    sorts: [orders.average_profit desc, order_items.average_sale_price desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: date, label: date, expression: now(), value_format: !!null '',
        value_format_name: !!null '', _kind_hint: dimension}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    font_size: medium
    text_color: black
    colors: ["#5245ed", "#a2dcf3", "#776fdf", "#1ea8df", "#49cec1", "#776fdf", "#49cec1",
      "#1ea8df", "#a2dcf3", "#776fdf", "#776fdf", "#635189"]
    series_types: {}
    hidden_fields: []
    y_axes: []
    note_state: collapsed
    note_display: below
    note_text: ''
    listen:
      Date: order_items.created_date
      State: users.state
      City: users.city
    row: 3
    col: 12
    width: 6
    height: 4
  - title: Orders by Day and Category
    name: Orders by Day and Category
    model: thelook
    explore: order_items
    type: looker_area
    fields: [products.category, order_items.count, order_items.created_date]
    pivots: [products.category]
    fill_fields: [order_items.created_date]
    filters:
      products.category: Blazers & Jackets,Sweaters,Pants,Shorts,Fashion Hoodies &
        Sweatshirts,Accessories
    sorts: [products.category, order_items.created_date desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    trellis: ''
    stacking: normal
    colors: ["#3EB0D5", "#C2DD67", "#B1399E", "#4276BE", "#72D16D", "#FFD95F", "#B32F37",
      "#9174F0", "#E57947", "#75E2E2", "#FBB555"]
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    show_value_labels: false
    label_density: 25
    legend_position: center
    hide_legend: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors:
      Accessories - order_items.count: "#2B99F7"
      Sweaters - order_items.count: "#3D52B9"
    limit_displayed_rows: false
    y_axes: []
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_labels: ["# Order Items"]
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_datetime_tick_count: 4
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_datetime: true
    hide_points: true
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: ''
    listen:
      Date: order_items.created_date
      State: users.state
      City: users.city
    row: 43
    col: 1
    width: 22
    height: 9
  - title: Website Visit Volume vs Conversion Rate
    name: Website Visit Volume vs Conversion Rate
    model: thelook
    explore: events
    type: looker_column
    fields: [events.event_day_of_week, events.sessions_count, events.unique_visitors,
      sessions.overall_conversion]
    filters: {}
    sorts: [events.event_day_of_week]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    trellis: ''
    stacking: ''
    colors: ["#2196F3", "#03A9F4", "#00BCD4", "#009688", "#4CAF50", "#8BC34A", "#CDDC39",
      "#FFEB3B", "#9E9E9E", "#607D8B", "#607D8B"]
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    show_value_labels: false
    label_density: 25
    label_color: ["#EA8A2F", "#e9b404"]
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: circle_outline
    series_colors: {}
    series_labels:
      sessions.overall_conversion: Conversion Rate
      events.sessions_count: Total Visitors
    series_types:
      events.sessions_count: line
      events.unique_visitors: line
    limit_displayed_rows: false
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: events.unique_visitors,
            name: Unique Visitors}, {id: events.sessions_count, name: Sessions Count}]},
      {label: '', maxValue: !!null '', minValue: !!null '', orientation: right, showLabels: true,
        showValues: true, tickDensity: default, tickDensityCustom: 5, type: linear,
        unpinAxis: false, valueFormat: !!null '', series: [{id: sessions.overall_conversion,
            name: Conversion Rate}]}]
    y_axis_combined: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    y_axis_orientation: [left, right]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    hidden_fields: []
    note_state: collapsed
    note_display: below
    note_text: ''
    listen:
      Date: events.event_date
      State: users.state
      City: users.city
    row: 35
    col: 1
    width: 11
    height: 8
  - title: Percent of Cohort Still Active by Traffic Source
    name: Percent of Cohort Still Active by Traffic Source
    model: thelook
    explore: order_items
    type: looker_line
    fields: [order_items.months_since_signup, users.count, users.traffic_source]
    pivots: [users.traffic_source]
    filters:
      order_items.months_since_signup: "[0, 12]"
      users.created_month: 12 months
    sorts: [order_items.months_since_signup, users.age_tier__sort_, users.traffic_source]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: pct_cohort_still_active, label: Pct Cohort
          Still Active, expression: '100.0 * ${users.count} / max(${users.count})',
        value_format: "#.#\\%"}]
    query_timezone: America/Los_Angeles
    stacking: ''
    colors: ["#592EC2", "#3EB0D5", "#C2DD67", "#B1399E", "#4276BE", "#72D16D", "#FFD95F",
      "#B32F37", "#9174F0", "#E57947", "#75E2E2", "#FBB555"]
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: false
    y_axes: [{label: '', orientation: left, series: [{id: Display - pct_cohort_still_active,
            name: Display, axisId: pct_cohort_still_active}, {id: Email - pct_cohort_still_active,
            name: Email, axisId: pct_cohort_still_active}, {id: Facebook - pct_cohort_still_active,
            name: Facebook, axisId: pct_cohort_still_active}, {id: Organic - pct_cohort_still_active,
            name: Organic, axisId: pct_cohort_still_active}, {id: Search - pct_cohort_still_active,
            name: Search, axisId: pct_cohort_still_active}], showLabels: true, showValues: true,
        maxValue: 20, minValue: !!null '', valueFormat: '#"%"', unpinAxis: true, tickDensity: default,
        tickDensityCustom: 9, type: linear}]
    y_axis_combined: true
    y_axis_max: ['50']
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_labels: [Percent of Cohort still Active]
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_value_format: "#\\%"
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: false
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [cumulative_lifetime_spend, order_items.total_sale_price, users.count]
    note_state: collapsed
    note_display: below
    note_text: ''
    listen: {}
    row: 19
    col: 12
    width: 11
    height: 8
  - title: Total Spend by Cohort
    name: Total Spend by Cohort
    model: thelook
    explore: order_items
    type: looker_area
    fields: [order_items.months_since_signup, users.created_month, order_items.total_sale_price]
    pivots: [users.created_month]
    filters:
      order_items.created_month: 12 months ago for 12 months
      order_items.months_since_signup: "[0, 12]"
      users.created_month: 12 months
    sorts: [order_items.months_since_signup, users.created_month desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: total_sale_price, label: Total Sale Price,
        expression: "if(\nis_null(${order_items.total_sale_price})\n,null\n,running_total(${order_items.total_sale_price}))",
        value_format: "$#,###"}]
    query_timezone: America/Los_Angeles
    stacking: ''
    colors: ["#a6cee3", "#1f78b4", "#2196F3", "#03A9F4", "#00BCD4", "#009688", "#4CAF50",
      "#8BC34A", "#CDDC39", "#FFEB3B", "#9E9E9E", "#607D8B", "#607D8B"]
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors:
      2018-10 - total_sale_price: "#2b8ab4"
      2018-05 - total_sale_price: "#3baf5c"
      2018-04 - total_sale_price: "#52c35f"
      2018-03 - total_sale_price: "#c1dc7c"
      2018-02 - total_sale_price: "#fff76e"
    series_types: {}
    limit_displayed_rows: false
    y_axes: []
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_value_format: "$#,##0"
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: false
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [cumulative_lifetime_spend, order_items.total_sale_price]
    note_state: collapsed
    note_display: below
    note_text: ''
    listen: {}
    row: 35
    col: 12
    width: 11
    height: 8
  - title: Total Sales, Year Over Year
    name: Total Sales, Year Over Year
    model: thelook
    explore: order_items
    type: looker_line
    fields: [order_items.created_year, order_items.created_month_num, order_items.total_sale_price]
    pivots: [order_items.created_year]
    filters:
      order_items.created_date: before 0 months ago
      order_items.created_year: 5 years
    sorts: [order_items.created_year desc, order_items.created_month_num]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    trellis: ''
    colors: ["#592EC2", "#3EB0D5", "#C2DD67", "#B1399E", "#4276BE", "#72D16D", "#FFD95F",
      "#B32F37", "#9174F0", "#E57947", "#75E2E2", "#FBB555"]
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    show_value_labels: false
    label_density: 25
    legend_position: right
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: none
    series_colors:
      2016 - order_items.total_sale_price: "#FC9200"
      2018 - order_items.total_sale_price: "#37c9c5"
      2019 - order_items.total_sale_price: "#FC2E31"
      2015 - order_items.total_sale_price: "#3D52B9"
      2017 - order_items.total_sale_price: "#fa2f90"
    series_types: {}
    limit_displayed_rows: false
    y_axes: [{label: '', orientation: left, series: [{id: 2019 - order_items.total_sale_price,
            name: '2019', axisId: order_items.total_sale_price}, {id: 2018 - order_items.total_sale_price,
            name: '2018', axisId: order_items.total_sale_price}, {id: 2017 - order_items.total_sale_price,
            name: '2017', axisId: order_items.total_sale_price}, {id: 2016 - order_items.total_sale_price,
            name: '2016', axisId: order_items.total_sale_price}, {id: 2015 - order_items.total_sale_price,
            name: '2015', axisId: order_items.total_sale_price}], showLabels: false,
        showValues: true, valueFormat: "$0#,k", unpinAxis: true, tickDensity: default,
        type: linear}]
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_value_format: "$#,##0"
    show_x_axis_label: false
    x_axis_label: Month of Year
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: false
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [calculation_1]
    note_state: collapsed
    note_display: above
    note_text: ''
    listen: {}
    row: 7
    col: 1
    width: 11
    height: 8
  - title: Highest Spending Customers
    name: Highest Spending Customers
    model: thelook
    explore: order_items
    type: looker_map
    fields: [users.approx_location, users.gender, order_items.order_count, users.count,
      order_items.total_sale_price, order_items.average_spend_per_user, users.country]
    pivots: [users.gender]
    filters:
      users.country: USA
    sorts: [users.gender 0, order_items.total_sale_price desc 0]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    map_plot_mode: points
    heatmap_gridlines: true
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_latitude: 39.36827914916014
    map_longitude: -99.140625
    map_zoom: 4
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_radius_max: 15
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    map_marker_color: ["#3EB0D5", "#72D16D"]
    show_view_names: false
    show_legend: true
    map_value_colors: [white]
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_value_scale_clamp_min: 0
    map_value_scale_clamp_max: 200
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    loading: false
    hidden_fields: [orders.count, users.count, order_items.total_sale_price, order_items.order_count,
      users.country]
    map: usa
    map_projection: ''
    quantize_colors: false
    colors: [whitesmoke, "#64518A"]
    outer_border_color: "#64518A"
    inner_border_color: ''
    inner_border_width: 0.6
    outer_border_width: 2
    empty_color: ''
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: Bubble size corresponds to average user spend
    listen:
      Date: order_items.created_date
      State: users.state
      City: users.city
    row: 7
    col: 12
    width: 11
    height: 8
  - title: User Behavior by Traffic Source
    name: User Behavior by Traffic Source
    model: thelook
    explore: order_items
    type: looker_column
    fields: [users.traffic_source, order_items.average_sale_price, user_order_facts.average_lifetime_orders]
    filters: {}
    sorts: [user_order_facts.lifetime_orders_tier__sort_, users.traffic_source]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    trellis: ''
    colors: ["#592EC2", "#3EB0D5", "#C2DD67", "#B1399E", "#4276BE", "#72D16D", "#FFD95F",
      "#B32F37", "#9174F0", "#E57947", "#75E2E2", "#FBB555"]
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
        reverse: false
    show_value_labels: true
    label_density: 25
    font_size: '13'
    legend_position: center
    hide_legend: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: circle_outline
    series_colors: {}
    limit_displayed_rows: false
    y_axes: [{label: '', orientation: left, series: [{id: order_items.average_sale_price,
            name: Average Sale Price, axisId: order_items.average_sale_price}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}, {
        label: !!null '', orientation: right, series: [{id: user_order_facts.average_lifetime_orders,
            name: Average Lifetime Orders, axisId: user_order_facts.average_lifetime_orders}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}]
    y_axis_combined: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_labels: [Average Sale Price ($)]
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_value_format: '0'
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    y_axis_orientation: [left, right]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [percent_repeat_customers]
    value_labels: legend
    label_type: labPer
    show_null_points: true
    interpolation: linear
    listen:
      Date: order_items.created_date
    row: 19
    col: 1
    width: 11
    height: 8
  - title: User Basic Demographic Profile
    name: User Basic Demographic Profile
    model: thelook
    explore: order_items
    type: looker_donut_multiples
    fields: [users.gender, users.traffic_source, order_items.count]
    pivots: [users.traffic_source]
    filters:
      users.gender: "-NULL"
    sorts: [user_order_facts.lifetime_orders_tier__sort_, users.traffic_source, order_items.count
        desc 0]
    limit: 500
    column_limit: 15
    query_timezone: America/Los_Angeles
    show_value_labels: true
    font_size: 15
    hide_legend: false
    colors: ["#592EC2", "#3EB0D5", "#C2DD67", "#B1399E", "#4276BE", "#72D16D", "#FFD95F",
      "#B32F37", "#9174F0", "#E57947", "#75E2E2", "#FBB555"]
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
        reverse: false
    series_colors: {}
    show_view_names: true
    stacking: ''
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    hidden_fields: []
    y_axes: []
    note_state: collapsed
    note_display: below
    note_text: ''
    listen:
      Date: order_items.created_date
    row: 27
    col: 1
    width: 11
    height: 8
  - title: Most Viewed Brands Online
    name: Most Viewed Brands Online
    model: thelook
    explore: sessions
    type: table
    fields: [product_viewed.brand, sessions.count, sessions.cart_to_checkout_conversion]
    filters:
      product_viewed.brand: "-NULL"
    sorts: [sessions.count desc]
    limit: 15
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: true
    subtotals_at_bottom: false
    hide_totals: false
    hide_row_totals: false
    series_labels:
      sessions.cart_to_checkout_conversion: Cart Conversion
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting: [{type: low to high, value: !!null '', background_color: !!null '',
        font_color: !!null '', palette: {name: White to Green, colors: ["#FFFFFF",
            "#4FBC89"]}, bold: false, italic: false, strikethrough: false, fields: [
          sessions.count]}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting_ignored_fields: []
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    colors: ["#5245ed", "#a2dcf3", "#776fdf", "#1ea8df", "#49cec1", "#776fdf", "#49cec1",
      "#1ea8df", "#a2dcf3", "#776fdf", "#776fdf", "#635189"]
    hidden_fields: []
    y_axes: []
    note_state: collapsed
    note_display: above
    note_text: ''
    listen:
      Date: events.event_date
      State: users.state
    row: 27
    col: 12
    width: 11
    height: 8
  - name: 30 Day Repeat Purchase Rate (copy)
    title: 30 Day Repeat Purchase Rate (copy)
    model: thelook
    explore: order_items
    type: single_value
    fields: [order_items.30_day_repeat_purchase_rate]
    filters:
      users.country: "{{ _user_attributes['country'] }}"
    sorts: [repeat_purchase_facts.30_day_repeat_purchase_rate desc, order_items.30_day_repeat_purchase_rate
        desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    font_size: medium
    text_color: black
    colors: ["#1f78b4", "#a6cee3", "#33a02c", "#b2df8a", "#e31a1c", "#fb9a99", "#ff7f00",
      "#fdbf6f", "#6a3d9a", "#cab2d6", "#b15928", "#edbc0e"]
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    single_value_title: Repeat Purchase Rate
    hidden_fields: []
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: What percent of orders are followed by a repeat purchase by the same
      user within 30 days?
    listen:
      Date: order_items.created_date
    row: 3
    col: 6
    width: 6
    height: 4
  - name: Total Order Count (copy)
    title: Total Order Count (copy)
    model: thelook
    explore: order_items
    type: single_value
    fields: [order_items.reporting_period, order_items.count]
    filters:
      order_items.reporting_period: "-NULL"
    sorts: [order_items.reporting_period desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: percent_change, label: Percent Change, expression: "${order_items.count}/offset(${order_items.count},1)\
          \ - 1", value_format: !!null '', value_format_name: percent_0}]
    query_timezone: America/Los_Angeles
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    colors: ["#5245ed", "#a2dcf3", "#776fdf", "#1ea8df", "#49cec1", "#776fdf", "#49cec1",
      "#1ea8df", "#a2dcf3", "#776fdf", "#776fdf", "#635189"]
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_single_value_title: true
    single_value_title: Orders This Year
    hidden_fields: [order_items.reporting_period]
    comparison_label: vs Same Period Last Year
    custom_color_enabled: false
    custom_color: forestgreen
    y_axes: []
    listen:
      State: users.state
      City: users.city
    row: 3
    col: 18
    width: 5
    height: 4
  - name: <font color="purple" >OVERVIEW </font>
    type: text
    title_text: <font color="purple" >OVERVIEW </font>
    subtitle_text: <font  size="6"> Sales and Customer Metrics</font>
    body_text: "***********"
    row: 0
    col: 0
    width: 24
    height: 3
  - name: 'test text1'
    type: text
    title_text: ''
    row: 52
    col: 10
    width: 3
    height: 2
  - name: 'test text2'
    type: text
    body_text: "<hr />"
    row: 54
    col: 1
    width: 22
    height: 2
  - name: <font color="purple" >Website Visitors</font>
    type: text
    title_text: <font color="purple" >Website Visitors</font>
    subtitle_text: <font  size="6">Behavior and Demographics </font>
    body_text: "********"
    row: 15
    col: 0
    width: 24
    height: 4
  filters:
  - name: Date
    title: Date
    type: date_filter
    default_value: 90 days
    allow_multiple_values: true
    required: false
  - name: User ID
    title: User ID
    type: number_filter
    default_value: ''
    allow_multiple_values: true
    required: false
