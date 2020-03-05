view: derived_table {

  derived_table: {
    publish_as_db_view: yes
    sql_trigger_value: select curdate() ;;
    sql: SELECT
        *
      FROM orders
      GROUP BY user_id
      ;;
  }

  # Define your dimensions and measures here, like this:
  dimension: user_id {
    description: "Unique ID for each user that has ordered"
    type: number
    sql: ${TABLE}.user_id ;;
  }


  measure: count {
    type: count

  }
}
