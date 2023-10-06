- dashboard: dataminr_alerts_drilldown
  title: Dataminr Alerts Drilldown
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: LccmS1vRtjjtJW69epOG1g
  elements:
  - title: Untitled
    name: Untitled
    model: dataminr_project
    explore: events
    type: looker_google_map
    fields: [events.event__location, count_of_metadata_product_log_id]
    sorts: [count_of_metadata_product_log_id desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_metadata_product_log_id
      based_on: events.metadata__product_log_id
      expression: ''
      label: Count of Metadata Product Log ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    map_marker_color: ["#7b56db"]
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 0
    title_hidden: true
    row: 0
    col: 0
    width: 12
    height: 8
  - title: Untitled
    name: Untitled (2)
    model: dataminr_project
    explore: events
    type: looker_grid
    fields: [events__security_result__category_details.events__security_result__category_details,
      count_of_metadata_product_log_id]
    sorts: [count_of_metadata_product_log_id desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_metadata_product_log_id
      based_on: events.metadata__product_log_id
      expression: ''
      label: Count of Metadata Product Log ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
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
      events__security_result__category_details.events__security_result__category_details: Categories
      count_of_metadata_product_log_id: Count
    series_cell_visualizations:
      count_of_metadata_product_log_id:
        is_active: false
    defaults_version: 1
    title_hidden: true
    row: 0
    col: 12
    width: 12
    height: 8
  - title: Untitled
    name: Untitled (3)
    model: dataminr_project
    explore: events
    type: looker_grid
    fields: [events.metadata__description, events.event_timestamp_date_time, events__target__labels.key,
      events__target__labels.value]
    filters:
      events__target__labels.key: '"post_link"'
    sorts: [events.event_timestamp_date_time desc]
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
      events.metadata__description: Caption
      events.event_timestamp_date_time: Time
      events__target__labels.value: Source Link
    defaults_version: 1
    hidden_fields: [events__target__labels.key]
    title_hidden: true
    row: 8
    col: 0
    width: 24
    height: 9
  - title: Alerts by Source
    name: Alerts by Source
    model: dataminr_project
    explore: events
    type: looker_pie
    fields: [events__target__resource__attribute__labels.key, events__target__resource__attribute__labels.value,
      count_of_metadata_product_log_id]
    filters:
      events__target__resource__attribute__labels.key: '"post_media_source"'
    sorts: [count_of_metadata_product_log_id desc 0]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - measure: count_of_metadata_product_log_id
      based_on: events.metadata__product_log_id
      expression: ''
      label: Count of Metadata Product Log ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    value_labels: labels
    label_type: lab
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
    hidden_fields: [events__target__resource__attribute__labels.key]
    row: 17
    col: 0
    width: 12
    height: 7
  - title: Alerts by Channel
    name: Alerts by Channel
    model: dataminr_project
    explore: events
    type: looker_pie
    fields: [events.principal__application, count_of_metadata_product_log_id]
    filters:
      events.principal__application: "-EMPTY"
    sorts: [count_of_metadata_product_log_id desc 0]
    limit: 15
    column_limit: 50
    dynamic_fields:
    - measure: count_of_metadata_product_log_id
      based_on: events.metadata__product_log_id
      expression: ''
      label: Count of Metadata Product Log ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    value_labels: labels
    label_type: lab
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
    row: 17
    col: 12
    width: 12
    height: 7
  - title: Top Exploiting IP Addresses
    name: Top Exploiting IP Addresses
    model: dataminr_project
    explore: events
    type: looker_grid
    fields: [count_of_metadata_product_log_id, events__principal__ip.events__principal__ip__regex]
    filters:
      events__principal__ip.events__principal__ip__regex: "-EMPTY"
    sorts: [count_of_metadata_product_log_id desc 0]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - measure: count_of_metadata_product_log_id
      based_on: events.metadata__product_log_id
      expression: ''
      label: Count of Metadata Product Log ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
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
      events__principal__ip.events__principal__ip__regex: IP
      count_of_metadata_product_log_id: count
    series_cell_visualizations:
      count_of_metadata_product_log_id:
        is_active: false
    defaults_version: 1
    row: 24
    col: 0
    width: 8
    height: 6
  - title: Top Trending CVEs
    name: Top Trending CVEs
    model: dataminr_project
    explore: events
    type: looker_grid
    fields: [events__extensions__vulns__vulnerabilities.cve_id, count_of_metadata_product_log_id]
    filters:
      events__extensions__vulns__vulnerabilities.cve_id: "-EMPTY"
    sorts: [count_of_metadata_product_log_id desc 0]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - measure: count_of_metadata_product_log_id
      based_on: events.metadata__product_log_id
      expression: ''
      label: Count of Metadata Product Log ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
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
      count_of_metadata_product_log_id: count
      events__extensions__vulns__vulnerabilities.cve_id: CVE
    series_cell_visualizations:
      count_of_metadata_product_log_id:
        is_active: false
    defaults_version: 1
    listen: {}
    row: 24
    col: 8
    width: 8
    height: 6
  - title: Top Open Ports
    name: Top Open Ports
    model: dataminr_project
    explore: events
    type: looker_grid
    fields: [events.principal__port, count_of_metadata_product_log_id]
    filters:
      events.principal__port: NOT NULL
    sorts: [count_of_metadata_product_log_id desc 0]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - measure: count_of_metadata_product_log_id
      based_on: events.metadata__product_log_id
      expression: ''
      label: Count of Metadata Product Log ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
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
      count_of_metadata_product_log_id: count
      events.principal__port: Port
    series_cell_visualizations:
      count_of_metadata_product_log_id:
        is_active: false
    defaults_version: 1
    listen: {}
    row: 24
    col: 16
    width: 8
    height: 6
