- dashboard: bughunt_dashboard
  title: bughunt dashboard
  layout: newspaper
  elements:
  - title: New Tile
    name: New Tile
    model: ecommerce
    explore: order_items
    type: table
    fields: [order_items.count, orders.created_date]
    fill_fields: [orders.created_date]
    filters:
      order_items.date_filter: 'true'
      orders.created_date: 7 days
    sorts: [orders.created_date desc]
    limit: 500
    query_timezone: America/Los_Angeles
    hidden_fields: []
    y_axes: []
    listen:
      Untitled Filter: products.brand_name
      Cost: orders.cost
      City: users.city
    row: 0
    col: 0
    width: 8
    height: 6
  - name: A Nuther Test
    title: A Nuther Test
    model: ecommerce
    explore: order_items
    type: table
    fields: [orders.created_date, orders.total_profit, order_items.count]
    filters:
      order_items.date_filter: "{{ _user_attributes['brand_test'] }}"
      orders.created_date: 100 days
    sorts: [orders.created_date desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    show_null_points: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_gridlines: true
    y_axis_combined: true
    stacking: ''
    show_value_labels: false
    x_axis_gridlines: false
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    point_style: none
    interpolation: linear
    discontinuous_nulls: false
    x_axis_datetime_tick_count: 10
    label_density: 25
    legend_position: center
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    series_types: {}
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    y_axes: []
    listen:
      Cost: orders.cost
      City: users.city
    row: 0
    col: 8
    width: 8
    height: 6
  - title: Bug Hunt Test -- Stocks
    name: Bug Hunt Test -- Stocks
    model: thelook_nbd
    explore: inventory_items
    type: table
    fields: [distribution_centers.name, products.brand, products.count]
    sorts: [products.count desc]
    limit: 30
    query_timezone: America/Los_Angeles
    listen:
      City: users.city
    row: 0
    col: 16
    width: 8
    height: 6
  - name: Daily Profit
    title: Daily Profit
    model: ecommerce
    explore: order_items
    type: looker_column
    fields: [orders.created_date, orders.total_revenue, order_items.returned, orders.cost]
    filters:
      order_items.date_filter: 'Yes'
      orders.created_date: 51 days
    sorts: [orders.created_date desc]
    limit: 400
    column_limit: 50
    query_timezone: America/Los_Angeles
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
    show_null_points: false
    point_style: circle
    interpolation: linear
    discontinuous_nulls: false
    x_axis_datetime_tick_count: 10
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Cost: orders.cost
      City: users.city
    row: 6
    col: 0
    width: 8
    height: 6
  - title: Schedule to Dashboard
    name: Schedule to Dashboard
    model: the_look
    explore: orders
    type: looker_scatter
    fields: [users.age, users.count]
    sorts: [users.count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    series_types: {}
    listen:
      City: users.city
    row: 6
    col: 8
    width: 8
    height: 6
  filters:
  - name: Untitled Filter
    title: Untitled Filter
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: true
    model: ecommerce
    explore: order_items
    listens_to_filters: []
    field: products.brand_name
  - name: City
    title: City
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: ecommerce
    explore: order_items
    listens_to_filters: []
    field: users.city
  - name: Cost
    title: Cost
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: range_slider
      display: inline
      options:
        min: 0
        max: 5000
    model: ecommerce
    explore: order_items
    listens_to_filters: []
    field: orders.cost
