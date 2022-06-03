include: "//@{CONFIG_PROJECT_NAME}/zcta_distances.view.lkml"

view: zcta_distances {
  extends: [zcta_distances_config]
}

#####################################################
view: zcta_distances_core {

  derived_table: {
    sql: SELECT *
        FROM
          acs.zcta_distances
        WHERE
          LPAD(CAST(zip1 AS VARCHAR),5, '0') = LPAD(CAST({% parameter zcta_distances.zip1 %} AS VARCHAR), 5, '0')
        UNION ALL
          SELECT
            LPAD(CAST({% parameter zcta_distances.zip1 %} AS VARCHAR), 5, '0') as zip1,
            LPAD(CAST({% parameter zcta_distances.zip1 %} AS VARCHAR), 5, '0') as zip2,
            0
          ;;
    }

    dimension: mi_to_zcta5 {
      label: "Miles from selected ZIP"
      view_label: "Geography"
      group_label: "ZIP Radii"
      type: number
      sql: ${TABLE}.mi_to_zcta5 ;;
      value_format_name: decimal_2
    }

    dimension: zip1 {
      label: "Selected ZIP Code"
      view_label: "Geography"
      group_label: "ZIP Radii"
      description: "Use Filter to Select Zip Code, Empty If Not Filtered"
      type: zipcode
      sql: LPAD(CAST(${TABLE}.zip1 AS VARCHAR), 5, '0') ;;
      suggestable: no
    }

    dimension: zip2 {
      label: "Nearby ZIP"
      view_label: "Geography"
      group_label: "ZIP Radii"
      description: "Use Filter to Select Zip Code, Empty If Not Filtered"
      type: zipcode
      sql: LPAD(CAST(${TABLE}.zip2 AS VARCHAR), 5, '0') ;;
      hidden: yes
    }
  }
