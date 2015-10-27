- view: orders
  sql_table_name: public.orders
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: status
    sql: ${TABLE}.status

  - dimension: traffic_source
    sql: ${TABLE}.traffic_source

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    drill_fields: [id, users.id, users.first_name, users.last_name, order_items.count]

