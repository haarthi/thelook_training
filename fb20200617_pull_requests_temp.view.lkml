explore: pull_requests {hidden:yes}
view: pull_requests {
  # function rand(lo,hi){return parseInt(Math.random()*(hi-lo))+lo}
  # function randTime(){return (parseInt(rand(1,3)*rand(0,7)*rand(0,7))/49+Math.random()*0.5-0.6).toString().split('.').map(p=>p.slice(0,3)).join('.')}
  # var routes = ['/dashboards/{small}','/dashboards/{large}','/dashboards-next/{small}','/dashboards-next/{large}','/explore','/admin/users','/admin/groups']
  # var badroutes = ['/dashboards/{lookml}','/sql','/explore/{system_activity}','/login/embed']
  # ;[].slice.apply(document.querySelectorAll(".pr-md-2"))
  #   .map(el=>document.querySelector("a[data-hovercard-type=pull_request]",el))
  #   .map(el=>(''+el.href))
  #   .map(attr=>(attr.match(/pull\/([0-9]+)/)||[])[1])
  #   .map(id => {
  #     let testsFailed
  #     return `SELECT
  #       {id} as id,
  #       '{routes[rand(0,6)]}' as biggest_ttr_changer,
  #       '{randTime()}s' as biggest_ttr_change,
  #       '{routes[rand(0,6)]}' as biggest_tti_changer,
  #       '{randTime()}s' as biggest_tti_change,
  #       '{badroutes[rand(0,15)]||''}' as significantly_degraded_routes
  #       `
  #     })
  #   .join('\n UNION ALL ')
  derived_table: {
    persist_for: "12 hours"
    indexes: ["id"]
    sql: SELECT
      53477 as id,
      '/admin/users' as biggest_ttr_changer,
      '-0.136s' as biggest_ttr_change,
      '/dashboards/{large}' as biggest_tti_changer,
      '0.343s' as biggest_tti_change,
      '' as significantly_degraded_routes

 UNION ALL SELECT
      53477 as id,
      '/dashboards/{small}' as biggest_ttr_changer,
      '-0.070s' as biggest_ttr_change,
      '/admin/users' as biggest_tti_changer,
      '0.508s' as biggest_tti_change,
      '/explore/{system_activity}' as significantly_degraded_routes

 UNION ALL SELECT
      53477 as id,
      '/dashboards-next/{small}' as biggest_ttr_changer,
      '-0.033s' as biggest_ttr_change,
      '/dashboards-next/{large}' as biggest_tti_changer,
      '-0.478s' as biggest_tti_change,
      '/explore/{system_activity}' as significantly_degraded_routes

 UNION ALL SELECT
      53477 as id,
      '/admin/users' as biggest_ttr_changer,
      '-0.542s' as biggest_ttr_change,
      '/dashboards/{large}' as biggest_tti_changer,
      '-0.317s' as biggest_tti_change,
      '' as significantly_degraded_routes

 UNION ALL SELECT
      53477 as id,
      '/explore' as biggest_ttr_changer,
      '0.317s' as biggest_ttr_change,
      '/explore' as biggest_tti_changer,
      '-0.317s' as biggest_tti_change,
      '' as significantly_degraded_routes

 UNION ALL SELECT
      53477 as id,
      '/dashboards-next/{small}' as biggest_ttr_changer,
      '-0.160s' as biggest_ttr_change,
      '/dashboards/{small}' as biggest_tti_changer,
      '-0.100s' as biggest_tti_change,
      '' as significantly_degraded_routes

 UNION ALL SELECT
      53477 as id,
      '/admin/users' as biggest_ttr_changer,
      '-0.328s' as biggest_ttr_change,
      '/dashboards/{large}' as biggest_tti_changer,
      '-0.114s' as biggest_tti_change,
      '' as significantly_degraded_routes

 UNION ALL SELECT
      53477 as id,
      '/explore' as biggest_ttr_changer,
      '0.077s' as biggest_ttr_change,
      '/dashboards-next/{large}' as biggest_tti_changer,
      '-0.168s' as biggest_tti_change,
      '/sql' as significantly_degraded_routes

 UNION ALL SELECT
      53477 as id,
      '/dashboards-next/{large}' as biggest_ttr_changer,
      '0.894s' as biggest_ttr_change,
      '/dashboards/{small}' as biggest_tti_changer,
      '-0.175s' as biggest_tti_change,
      '/explore/{system_activity}' as significantly_degraded_routes

 UNION ALL SELECT
      53477 as id,
      '/admin/users' as biggest_ttr_changer,
      '0.594s' as biggest_ttr_change,
      '/dashboards/{large}' as biggest_tti_changer,
      '0.463s' as biggest_tti_change,
      '' as significantly_degraded_routes

 UNION ALL SELECT
      53477 as id,
      '/dashboards-next/{large}' as biggest_ttr_changer,
      '-0.287s' as biggest_ttr_change,
      '/admin/users' as biggest_tti_changer,
      '-0.279s' as biggest_tti_change,
      '' as significantly_degraded_routes

 UNION ALL SELECT
      53477 as id,
      '/admin/users' as biggest_ttr_changer,
      '-0.436s' as biggest_ttr_change,
      '/dashboards/{small}' as biggest_tti_changer,
      '-0.512s' as biggest_tti_change,
      '' as significantly_degraded_routes

 UNION ALL SELECT
      53477 as id,
      '/dashboards-next/{small}' as biggest_ttr_changer,
      '-0.385s' as biggest_ttr_change,
      '/dashboards-next/{large}' as biggest_tti_changer,
      '1.039s' as biggest_tti_change,
      '' as significantly_degraded_routes

 UNION ALL SELECT
      53477 as id,
      '/explore' as biggest_ttr_changer,
      '-0.219s' as biggest_ttr_change,
      '/admin/users' as biggest_tti_changer,
      '-0.375s' as biggest_tti_change,
      '' as significantly_degraded_routes

 UNION ALL SELECT
      53477 as id,
      '/dashboards/{small}' as biggest_ttr_changer,
      '0.891s' as biggest_ttr_change,
      '/dashboards/{large}' as biggest_tti_changer,
      '-0.245s' as biggest_tti_change,
      '' as significantly_degraded_routes

 UNION ALL SELECT
      53477 as id,
      '/admin/users' as biggest_ttr_changer,
      '-0.229s' as biggest_ttr_change,
      '/explore' as biggest_tti_changer,
      '-0.289s' as biggest_tti_change,
      '/dashboards/{lookml}' as significantly_degraded_routes

 UNION ALL SELECT
      53477 as id,
      '/dashboards-next/{large}' as biggest_ttr_changer,
      '-0.266s' as biggest_ttr_change,
      '/dashboards/{small}' as biggest_tti_changer,
      '0.192s' as biggest_tti_change,
      '' as significantly_degraded_routes

 UNION ALL SELECT
      53477 as id,
      '/dashboards-next/{large}' as biggest_ttr_changer,
      '-0.503s' as biggest_ttr_change,
      '/dashboards-next/{small}' as biggest_tti_changer,
      '0.307s' as biggest_tti_change,
      '' as significantly_degraded_routes

 UNION ALL SELECT
      53477 as id,
      '/dashboards/{large}' as biggest_ttr_changer,
      '-0.313s' as biggest_ttr_change,
      '/dashboards-next/{small}' as biggest_tti_changer,
      '0.684s' as biggest_tti_change,
      '/login/embed' as significantly_degraded_routes

 UNION ALL SELECT
      53477 as id,
      '/admin/users' as biggest_ttr_changer,
      '-0.156s' as biggest_ttr_change,
      '/dashboards-next/{small}' as biggest_tti_changer,
      '-0.454s' as biggest_tti_change,
      '/sql' as significantly_degraded_routes

 UNION ALL SELECT
      53477 as id,
      '/admin/users' as biggest_ttr_changer,
      '-0.408s' as biggest_ttr_change,
      '/dashboards-next/{small}' as biggest_tti_changer,
      '-0.558s' as biggest_tti_change,
      '/explore/{system_activity}' as significantly_degraded_routes

 UNION ALL SELECT
      53477 as id,
      '/admin/users' as biggest_ttr_changer,
      '-0.582s' as biggest_ttr_change,
      '/explore' as biggest_tti_changer,
      '-0.083s' as biggest_tti_change,
      '' as significantly_degraded_routes

 UNION ALL SELECT
      53477 as id,
      '/dashboards/{small}' as biggest_ttr_changer,
      '0.030s' as biggest_ttr_change,
      '/dashboards-next/{large}' as biggest_tti_changer,
      '-0.112s' as biggest_tti_change,
      '' as significantly_degraded_routes

 UNION ALL SELECT
      53477 as id,
      '/dashboards-next/{small}' as biggest_ttr_changer,
      '-0.186s' as biggest_ttr_change,
      '/dashboards-next/{large}' as biggest_tti_changer,
      '-0.166s' as biggest_tti_change,
      '' as significantly_degraded_routes

 UNION ALL SELECT
      53477 as id,
      '/dashboards-next/{small}' as biggest_ttr_changer,
      '0.249s' as biggest_ttr_change,
      '/explore' as biggest_tti_changer,
      '-0.258s' as biggest_tti_change,
      '/dashboards/{lookml}' as significantly_degraded_routes
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: biggest_ttr_changer {
    type: string
    label: "Biggest TtR Changer"
    sql: ${TABLE}.biggest_ttr_changer ;;
  }

  dimension: biggest_ttr_change {
    type: string
    label: "Biggest TtR Change"
    sql: ${TABLE}.biggest_ttr_change ;;
  }

  dimension: biggest_tti_changer {
    type: string
    label: "Biggest TtI Changer"
    sql: ${TABLE}.biggest_tti_changer ;;
  }

  dimension: biggest_tti_change {
    type: string
    label: "Biggest TtI Change"
    sql: ${TABLE}.biggest_tti_change ;;
  }

  dimension: significantly_degraded_routes {
    type: string
    sql: ${TABLE}.significantly_degraded_routes ;;
  }

  set: detail {
    fields: [
      id,
      biggest_ttr_changer,
      biggest_ttr_change,
      biggest_tti_changer,
      biggest_tti_change,
      significantly_degraded_routes
    ]
  }
}
