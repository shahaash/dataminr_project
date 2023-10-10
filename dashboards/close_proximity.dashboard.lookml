- dashboard: close_proximity_overview
  title: Close Proximity Overview
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: XApgGUKLoQttO5Ag0B4ZL5
  elements:
  - name: Configured Important Locations
    title: Configured Important Locations
    model: dataminr_project
    explore: csvstaticdata
    type: looker_grid
    fields: [csvstaticdata.asset_name, csvstaticdata.asset_type, csvstaticdata.asset_description,
      csvstaticdata.alerting_distance_miles, csvstaticdata.asset_lat, csvstaticdata.asset_long]
    sorts: [csvstaticdata.asset_name]
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
    defaults_version: 1
    listen: {}
    row: 7
    col: 0
    width: 24
    height: 8
  - name: Table2
    title: Table2
    model: dataminr_project
    explore: events
    type: looker_grid
    fields: [events.asset_name, events.asset_type, events.metadata__description, events.metadata__product_log_id,
      events__about__labels__alert_type_name.value, events.asset_distance_miles, events.external_link]
    filters:
      events.principal__location__region_coordinates__latitude: NOT NULL
      events.principal__location__region_coordinates__longitude: NOT NULL
      events.asset_distance_miles: NOT NULL
    sorts: [events.asset_name]
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      events.external_link: Raw Logs
    defaults_version: 1
    listen:
      Select Time Range: events.event_timestamp_date_time
    row: 0
    col: 0
    width: 24
    height: 7
  filters:
  - name: Select Time Range
    title: Select Time Range
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: dataminr_project
    explore: events
    listens_to_filters: []
    field: events.event_timestamp_date_time
