- dashboard: close_proximity_overview
  title: Close Proximity Overview
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 6k469hKzjXibLpWOyHArCZ
  elements:
  - title: Configured Important Locations
    name: Configured Important Locations
    model: dataminr_project
    explore: csvstaticdata
    type: looker_grid
    fields: [csvstaticdata.asset_name, csvstaticdata.asset_type, csvstaticdata.asset_description,
      csvstaticdata.alerting_distance_miles, csvstaticdata.asset_lat, csvstaticdata.asset_long]
    sorts: [csvstaticdata.asset_type desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
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
    defaults_version: 1
    minimum_column_width: 75
    series_column_widths:
      csvstaticdata.asset_description: 423
      csvstaticdata.asset_type: 75
      csvstaticdata.asset_name: 123.62900000000002
      csvstaticdata.alerting_distance_miles: 99
    column_order: ["$$$_row_numbers_$$$", csvstaticdata.asset_name, csvstaticdata.asset_type,
      csvstaticdata.asset_description, csvstaticdata.alerting_distance_miles, csvstaticdata.asset_lat,
      csvstaticdata.asset_long]
    row: 0
    col: 0
    width: 24
    height: 5
