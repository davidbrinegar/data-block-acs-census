- dashboard: census_data_overview
  title: Census Data Overview
  layout: newspaper
  elements:
  - title: Square Miles of Land & Water by State
    name: Square Miles of Land & Water by State
    model: acs_demographic
    explore: census_fast_facts
    type: looker_column
    fields: [logrecno_bg_map.sq_miles_land, logrecno_bg_map.sq_miles_water, logrecno_bg_map.state_name]
    sorts: [logrecno_bg_map.sq_miles_land desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: d27163d9-14c0-4634-0cd7-e794fb2e8dc6
        label: Custom
        type: discrete
        colors:
        - "#4285F4"
        - "#EA4335"
        - "#FBBC04"
        - "#34A852"
        - "#5F6368"
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: logrecno_bg_map.sq_miles_land,
            id: logrecno_bg_map.sq_miles_land, name: Square Miles of Land}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: logrecno_bg_map.sq_miles_water,
            id: logrecno_bg_map.sq_miles_water, name: Square Miles of Water}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      logrecno_bg_map.sq_miles_land: "#EA4335"
      logrecno_bg_map.sq_miles_water: "#4285F4"
    defaults_version: 1
    listen: {}
    row: 11
    col: 0
    width: 13
    height: 7
  - title: Population by State
    name: Population by State
    model: acs_demographic
    explore: census_fast_facts
    type: looker_map
    fields: [logrecno_bg_map.state_name, block_group_facts.total_population]
    sorts: [block_group_facts.total_population desc]
    limit: 500
    query_timezone: America/Los_Angeles
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_latitude: 40.82835864973048
    map_longitude: -73.55895996093751
    map_zoom: 3
    map_value_colors: ["#4285F4", "#EA4335"]
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen: {}
    row: 3
    col: 0
    width: 16
    height: 8
  - title: Male & Female Population by State
    name: Male & Female Population by State
    model: acs_demographic
    explore: census_fast_facts
    type: looker_column
    fields: [logrecno_bg_map.state_name, block_group_facts.pct_female, block_group_facts.pct_male]
    sorts: [logrecno_bg_map.state_name]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: 9eb03ab4-3844-f9f7-c658-5cc1601ec93c
        label: Custom
        type: discrete
        colors:
        - "#4285F4"
        - "#EA4335"
        - "#FBBC04"
        - "#34A852"
        - "#5F6368"
      options:
        steps: 5
    series_types: {}
    series_colors:
      block_group_facts.pct_female: "#EA4335"
      block_group_facts.pct_male: "#FBBC04"
    defaults_version: 1
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_latitude: 40.82835864973048
    map_longitude: -73.55895996093751
    map_zoom: 3
    listen: {}
    row: 18
    col: 0
    width: 13
    height: 6
  - title: Race Breakdown by State
    name: Race Breakdown by State
    model: acs_demographic
    explore: census_fast_facts
    type: looker_column
    fields: [block_group_facts.white_alone_or_in_combo, block_group_facts.nat_haw_alone_or_in_combo,
      block_group_facts.black_alone_or_in_combo, block_group_facts.amind_alone_or_in_combo,
      logrecno_bg_map.state_name, block_group_facts.asian_alone_or_in_combo]
    sorts: [block_group_facts.white_alone_or_in_combo desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: e948b0aa-11a4-1c79-e0fe-26302d1e77b8
        label: Custom
        type: discrete
        colors:
        - "#4285F4"
        - "#EA4335"
        - "#FBBC04"
        - "#34A852"
        - "#5F6368"
      options:
        steps: 5
    series_types: {}
    series_colors:
      block_group_facts.asian_alone_or_in_combo: "#EA4335"
      block_group_facts.black_alone_or_in_combo: "#34A852"
      block_group_facts.nat_haw_alone_or_in_combo: "#FBBC04"
      block_group_facts.amind_alone_or_in_combo: "#5F6368"
      block_group_facts.white_alone_or_in_combo: "#4285F4"
    defaults_version: 1
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_latitude: 40.82835864973048
    map_longitude: -73.55895996093751
    map_zoom: 3
    value_labels: legend
    label_type: labPer
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen: {}
    row: 18
    col: 13
    width: 11
    height: 6
  - title: Total Population
    name: Total Population
    model: acs_demographic
    explore: census_fast_facts
    type: single_value
    fields: [block_group_facts.total_population]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    row: 0
    col: 0
    width: 6
    height: 3
  - title: Avg Income and Persons per Household by State
    name: Avg Income and Persons per Household by State
    model: acs_demographic
    explore: census_fast_facts
    type: looker_column
    fields: [block_group_facts.avg_income_house, block_group_facts.avg_persons_house,
      logrecno_bg_map.state_name]
    sorts: [logrecno_bg_map.state_name]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      custom:
        id: 4ec2ab8f-e131-5cbb-bb6c-d2290e00eaa8
        label: Custom
        type: discrete
        colors:
        - "#4285F4"
        - "#EA4335"
        - "#FBBC04"
        - "#34A852"
        - "#5F6368"
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: block_group_facts.avg_income_house,
            id: block_group_facts.avg_income_house, name: Average Income per Household}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: block_group_facts.avg_persons_house, id: block_group_facts.avg_persons_house,
            name: Average Persons per Household}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      block_group_facts.avg_income_house: "#EA4335"
      block_group_facts.avg_persons_house: "#34A852"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 11
    col: 13
    width: 11
    height: 7
  - title: Population by Age
    name: Population by Age
    model: acs_demographic
    explore: census_fast_facts
    type: looker_donut_multiples
    fields: [block_group_facts.pct_65_over, block_group_facts.pct_18_64, block_group_facts.pct_under_18]
    limit: 500
    column_limit: 50
    show_value_labels: false
    font_size: 12
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: 617e32c3-c419-9286-fd27-86b0d0b407d3
        label: Custom
        type: discrete
        colors:
        - "#4285F4"
        - "#EA4335"
        - "#FBBC04"
        - "#34A852"
        - "#5F6368"
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: block_group_facts.avg_income_house,
            id: block_group_facts.avg_income_house, name: Average Income per Household}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: block_group_facts.avg_persons_house, id: block_group_facts.avg_persons_house,
            name: Average Persons per Household}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 3
    col: 16
    width: 8
    height: 8
  - title: "% Female of Population"
    name: "% Female of Population"
    model: acs_demographic
    explore: census_fast_facts
    type: single_value
    fields: [block_group_facts.pct_female]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: block_group_facts.avg_income_house,
            id: block_group_facts.avg_income_house, name: Average Income per Household}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: block_group_facts.avg_persons_house, id: block_group_facts.avg_persons_house,
            name: Average Persons per Household}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    row: 0
    col: 6
    width: 6
    height: 3
  - title: "% Male of Population"
    name: "% Male of Population"
    model: acs_demographic
    explore: census_fast_facts
    type: single_value
    fields: [block_group_facts.pct_male]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: block_group_facts.avg_income_house,
            id: block_group_facts.avg_income_house, name: Average Income per Household}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: block_group_facts.avg_persons_house, id: block_group_facts.avg_persons_house,
            name: Average Persons per Household}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    row: 0
    col: 12
    width: 6
    height: 3
  - title: Avg Income per Household
    name: Avg Income per Household
    model: acs_demographic
    explore: census_fast_facts
    type: single_value
    fields: [block_group_facts.avg_income_house]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: block_group_facts.avg_income_house,
            id: block_group_facts.avg_income_house, name: Average Income per Household}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: block_group_facts.avg_persons_house, id: block_group_facts.avg_persons_house,
            name: Average Persons per Household}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 0
    col: 18
    width: 6
    height: 3
