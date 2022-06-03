include: "*.view.lkml"

explore: census_fast_facts_core {
  view_name: logrecno_bg_map
  extension: required

  join: block_group_facts {
    from: block_group_facts
    view_label: "Fast Facts"
    sql_on: ${logrecno_bg_map.block_group} = ${block_group_facts.logrecno_bg_map_block_group};;
    relationship: one_to_one
  }

  join: tract_zcta_map {
    from: tract_zcta_map
    sql_on: ${logrecno_bg_map.geoid11} = ${tract_zcta_map.geoid11};;
    relationship: many_to_one
  }

  join: zcta_distances {
    from: zcta_distances
    sql_on: ${tract_zcta_map.ZCTA5} = ${zcta_distances.zip2} ;;
    relationship: one_to_one
    required_joins: [tract_zcta_map]
  }
}
