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
      '53477' as id,
      '/admin/users' as biggest_ttr_changer,
      '-0.109s' as biggest_ttr_change,
      '/explore' as biggest_tti_changer,
      '-0.493s' as biggest_tti_change,
      '' as significantly_degraded_routes

 UNION ALL SELECT
      '53476' as id,
      '/dashboards-next/{large}' as biggest_ttr_changer,
      '-0.239s' as biggest_ttr_change,
      '/dashboards-next/{small}' as biggest_tti_changer,
      '-0.119s' as biggest_tti_change,
      '' as significantly_degraded_routes

 UNION ALL SELECT
      '53474' as id,
      '/dashboards/{small}' as biggest_ttr_changer,
      '0.034s' as biggest_ttr_change,
      '/explore' as biggest_tti_changer,
      '0.146s' as biggest_tti_change,
      '/dashboards/{lookml}' as significantly_degraded_routes

 UNION ALL SELECT
      '53473' as id,
      '/dashboards-next/{large}' as biggest_ttr_changer,
      '-0.038s' as biggest_ttr_change,
      '/explore' as biggest_tti_changer,
      '0.783s' as biggest_tti_change,
      '' as significantly_degraded_routes

 UNION ALL SELECT
      '53472' as id,
      '/dashboards/{small}' as biggest_ttr_changer,
      '-0.440s' as biggest_ttr_change,
      '/dashboards-next/{large}' as biggest_tti_changer,
      '0.225s' as biggest_tti_change,
      '' as significantly_degraded_routes

 UNION ALL SELECT
      '53471' as id,
      '/dashboards/{small}' as biggest_ttr_changer,
      '-0.543s' as biggest_ttr_change,
      '/dashboards/{small}' as biggest_tti_changer,
      '-0.538s' as biggest_tti_change,
      '/dashboards/{lookml}' as significantly_degraded_routes

 UNION ALL SELECT
      '53470' as id,
      '/explore' as biggest_ttr_changer,
      '0.128s' as biggest_ttr_change,
      '/dashboards-next/{small}' as biggest_tti_changer,
      '-0.172s' as biggest_tti_change,
      '' as significantly_degraded_routes

 UNION ALL SELECT
      '53469' as id,
      '/explore' as biggest_ttr_changer,
      '-0.526s' as biggest_ttr_change,
      '/dashboards-next/{small}' as biggest_tti_changer,
      '0.378s' as biggest_tti_change,
      '' as significantly_degraded_routes

 UNION ALL SELECT
      '53468' as id,
      '/dashboards-next/{small}' as biggest_ttr_changer,
      '-0.369s' as biggest_ttr_change,
      '/explore' as biggest_tti_changer,
      '-0.475s' as biggest_tti_change,
      '/sql' as significantly_degraded_routes

 UNION ALL SELECT
      '53467' as id,
      '/explore' as biggest_ttr_changer,
      '0.779s' as biggest_ttr_change,
      '/dashboards-next/{large}' as biggest_tti_changer,
      '0.105s' as biggest_tti_change,
      '/dashboards/{lookml}' as significantly_degraded_routes

 UNION ALL SELECT
      '53466' as id,
      '/dashboards-next/{small}' as biggest_ttr_changer,
      '-0.482s' as biggest_ttr_change,
      '/dashboards-next/{small}' as biggest_tti_changer,
      '-0.545s' as biggest_tti_change,
      '/login/embed' as significantly_degraded_routes

 UNION ALL SELECT
      '53464' as id,
      '/dashboards/{large}' as biggest_ttr_changer,
      '-0.485s' as biggest_ttr_change,
      '/dashboards/{large}' as biggest_tti_changer,
      '-0.264s' as biggest_tti_change,
      '' as significantly_degraded_routes

 UNION ALL SELECT
      '53460' as id,
      '/admin/users' as biggest_ttr_changer,
      '0.079s' as biggest_ttr_change,
      '/admin/users' as biggest_tti_changer,
      '0.196s' as biggest_tti_change,
      '' as significantly_degraded_routes

 UNION ALL SELECT
      '53458' as id,
      '/admin/users' as biggest_ttr_changer,
      '0.273s' as biggest_ttr_change,
      '/dashboards-next/{large}' as biggest_tti_changer,
      '0.256s' as biggest_tti_change,
      '/dashboards/{lookml}' as significantly_degraded_routes

 UNION ALL SELECT
      '53456' as id,
      '/admin/users' as biggest_ttr_changer,
      '-0.168s' as biggest_ttr_change,
      '/dashboards-next/{small}' as biggest_tti_changer,
      '-0.101s' as biggest_tti_change,
      '' as significantly_degraded_routes

 UNION ALL SELECT
      '53455' as id,
      '/dashboards-next/{large}' as biggest_ttr_changer,
      '0.292s' as biggest_ttr_change,
      '/dashboards/{small}' as biggest_tti_changer,
      '-0.363s' as biggest_tti_change,
      '' as significantly_degraded_routes

 UNION ALL SELECT
      '53452' as id,
      '/dashboards-next/{small}' as biggest_ttr_changer,
      '0.300s' as biggest_ttr_change,
      '/dashboards-next/{small}' as biggest_tti_changer,
      '0.139s' as biggest_tti_change,
      '' as significantly_degraded_routes

 UNION ALL SELECT
      '53450' as id,
      '/dashboards-next/{small}' as biggest_ttr_changer,
      '-0.052s' as biggest_ttr_change,
      '/dashboards/{small}' as biggest_tti_changer,
      '-0.088s' as biggest_tti_change,
      '' as significantly_degraded_routes

 UNION ALL SELECT
      '53446' as id,
      '/dashboards/{small}' as biggest_ttr_changer,
      '0.138s' as biggest_ttr_change,
      '/dashboards-next/{small}' as biggest_tti_changer,
      '-0.224s' as biggest_tti_change,
      '' as significantly_degraded_routes

 UNION ALL SELECT
      '53445' as id,
      '/dashboards/{small}' as biggest_ttr_changer,
      '-0.285s' as biggest_ttr_change,
      '/dashboards/{large}' as biggest_tti_changer,
      '-0.236s' as biggest_tti_change,
      '' as significantly_degraded_routes

 UNION ALL SELECT
      '53444' as id,
      '/admin/users' as biggest_ttr_changer,
      '-0.032s' as biggest_ttr_change,
      '/dashboards/{large}' as biggest_tti_changer,
      '-0.257s' as biggest_tti_change,
      '/sql' as significantly_degraded_routes

 UNION ALL SELECT
      '53443' as id,
      '/dashboards-next/{small}' as biggest_ttr_changer,
      '-0.344s' as biggest_ttr_change,
      '/dashboards-next/{small}' as biggest_tti_changer,
      '0.423s' as biggest_tti_change,
      '' as significantly_degraded_routes

 UNION ALL SELECT
      '53442' as id,
      '/dashboards/{large}' as biggest_ttr_changer,
      '-0.035s' as biggest_ttr_change,
      '/admin/users' as biggest_tti_changer,
      '-0.047s' as biggest_tti_change,
      '/sql' as significantly_degraded_routes

 UNION ALL SELECT
      '53441' as id,
      '/dashboards-next/{large}' as biggest_ttr_changer,
      '-0.140s' as biggest_ttr_change,
      '/dashboards-next/{small}' as biggest_tti_changer,
      '0.075s' as biggest_tti_change,
      '' as significantly_degraded_routes

 UNION ALL SELECT
      '53440' as id,
      '/explore' as biggest_ttr_changer,
      '-0.436s' as biggest_ttr_change,
      '/explore' as biggest_tti_changer,
      '0.073s' as biggest_tti_change,
      '' as significantly_degraded_routes
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
