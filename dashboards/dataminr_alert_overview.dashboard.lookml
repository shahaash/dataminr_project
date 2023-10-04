- dashboard: dataminr_alert_overview
  title: Dataminr Alert Overview
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: v0Grx4uA3uk92H7qzAX478
  elements:
  - title: Occurrence By Severity
    name: Occurrence By Severity
    model: dataminr_project
    explore: events
    type: looker_bar
    fields: [events__about__labels__alert_type_name.value, events.severity_count]
    pivots: [events__about__labels__alert_type_name.value]
    filters:
      events__about__labels__alert_type_name.value: "-NULL"
    sorts: [events__about__labels__alert_type_name.value desc]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - measure: count_of_metadata_product_log_id
      based_on: events.metadata__product_log_id
      expression: ''
      label: Count of Metadata Product Log ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_metadata_product_log_id_2
      based_on: events.metadata__product_log_id
      expression: ''
      label: Count of Metadata Product Log ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: count, orientation: bottom, series: [{axisId: events.Count, id: Urgent
              - events.Count, name: Urgent}, {axisId: events.Count, id: Flash - events.Count,
            name: Flash}, {axisId: events.Count, id: Alert - events.Count, name: Alert}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Severity
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Alert - count_of_metadata_product_log_id: "#F9AB00"
      Flash - count_of_metadata_product_log_id: "#FF8168"
      Urgent - count_of_metadata_product_log_id: "#E8710A"
      Urgent - events.Count: "#E8710A"
      Alert - events.Count: "#F9AB00"
      Flash - events.Count: "#FF8168"
      Urgent - events.severity_count: "#FF8800"
      Flash - events.severity_count: "#D25B3B"
      Alert - events.severity_count: "#F0BE1B"
    defaults_version: 1
    hidden_pivots: {}
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
    listen:
      Select Time Range: events.hour_time_bucket_time
      Watchlist Name Value: watchlist_name.watchlist_name_value
    row: 2
    col: 0
    width: 12
    height: 6
  - title: Occurrence By Company
    name: Occurrence By Company
    model: dataminr_project
    explore: events
    type: looker_pie
    fields: [events__security_result.about__resource__name, events.company_count]
    filters:
      events__security_result.about__resource__name: "-NULL"
    sorts: [events.company_count desc]
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
    label_type: labPer
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Select Time Range: events.hour_time_bucket_time
      Watchlist Name Value: watchlist_name.watchlist_name_value
    row: 2
    col: 12
    width: 12
    height: 6
  - title: Occurrence Trend
    name: Occurrence Trend
    model: dataminr_project
    explore: events
    type: looker_line
    fields: [events__security_result__category_details.events__security_result__category_details,
      events.event_timestamp_date_minute, events.occurrence_count]
    pivots: [events__security_result__category_details.events__security_result__category_details]
    fill_fields: [events.event_timestamp_date_minute]
    sorts: [events__security_result__category_details.events__security_result__category_details,
      events.event_timestamp_date_minute desc]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - measure: count_of_metadata_product_log_id
      based_on: events.metadata__product_log_id
      expression: ''
      label: Count of Metadata Product Log ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Count, orientation: left, series: [{axisId: count_of_metadata_product_log_id,
            id: Advanced Persistent Threats - count_of_metadata_product_log_id, name: Advanced
              Persistent Threats}, {axisId: count_of_metadata_product_log_id, id: Airports
              - count_of_metadata_product_log_id, name: Airports}, {axisId: count_of_metadata_product_log_id,
            id: Banks - count_of_metadata_product_log_id, name: Banks}, {axisId: count_of_metadata_product_log_id,
            id: Bug Bounties - count_of_metadata_product_log_id, name: Bug Bounties},
          {axisId: count_of_metadata_product_log_id, id: Business - count_of_metadata_product_log_id,
            name: Business}, {axisId: count_of_metadata_product_log_id, id: Business
              & Economics - Cryptocurrency - count_of_metadata_product_log_id, name: Business
              & Economics - Cryptocurrency}, {axisId: count_of_metadata_product_log_id,
            id: Business & Economics - Financial Markets - count_of_metadata_product_log_id,
            name: Business & Economics - Financial Markets}, {axisId: count_of_metadata_product_log_id,
            id: Business & Economics - Labor Issues - count_of_metadata_product_log_id,
            name: Business & Economics - Labor Issues}, {axisId: count_of_metadata_product_log_id,
            id: Business & Economics - Macroeconomy - count_of_metadata_product_log_id,
            name: Business & Economics - Macroeconomy}, {axisId: count_of_metadata_product_log_id,
            id: Commodities - Agriculture - count_of_metadata_product_log_id, name: Commodities
              - Agriculture}, {axisId: count_of_metadata_product_log_id, id: Commodities
              - Natural Gas - count_of_metadata_product_log_id, name: Commodities
              - Natural Gas}, {axisId: count_of_metadata_product_log_id, id: Commodities
              - Oil - count_of_metadata_product_log_id, name: Commodities - Oil},
          {axisId: count_of_metadata_product_log_id, id: Commodities - Uncategorized
              Commodities - count_of_metadata_product_log_id, name: Commodities -
              Uncategorized Commodities}, {axisId: count_of_metadata_product_log_id,
            id: Community & Culture - count_of_metadata_product_log_id, name: Community
              & Culture}, {axisId: count_of_metadata_product_log_id, id: Community
              & Culture - Education - count_of_metadata_product_log_id, name: Community
              & Culture - Education}, {axisId: count_of_metadata_product_log_id, id: Community
              & Culture - Media - count_of_metadata_product_log_id, name: Community
              & Culture - Media}, {axisId: count_of_metadata_product_log_id, id: Conflict
              & Terrorism - count_of_metadata_product_log_id, name: Conflict & Terrorism},
          {axisId: count_of_metadata_product_log_id, id: Conflicts - count_of_metadata_product_log_id,
            name: Conflicts}, {axisId: count_of_metadata_product_log_id, id: Convention
              Centers - count_of_metadata_product_log_id, name: Convention Centers},
          {axisId: count_of_metadata_product_log_id, id: Coronavirus - count_of_metadata_product_log_id,
            name: Coronavirus}, {axisId: count_of_metadata_product_log_id, id: Coronavirus
              - Cases & Statistics - count_of_metadata_product_log_id, name: Coronavirus
              - Cases & Statistics}, {axisId: count_of_metadata_product_log_id, id: Coronavirus
              - Government Response - count_of_metadata_product_log_id, name: Coronavirus
              - Government Response}, {axisId: count_of_metadata_product_log_id, id: Coronavirus
              - Healthcare Developments - count_of_metadata_product_log_id, name: Coronavirus
              - Healthcare Developments}, {axisId: count_of_metadata_product_log_id,
            id: Coronavirus - Uncategorized Coronavirus - count_of_metadata_product_log_id,
            name: Coronavirus - Uncategorized Coronavirus}, {axisId: count_of_metadata_product_log_id,
            id: Crime - count_of_metadata_product_log_id, name: Crime}, {axisId: count_of_metadata_product_log_id,
            id: Crime - Arrests - count_of_metadata_product_log_id, name: Crime -
              Arrests}, {axisId: count_of_metadata_product_log_id, id: Crime - Arson
              - count_of_metadata_product_log_id, name: Crime - Arson}, {axisId: count_of_metadata_product_log_id,
            id: Crime - Assaults - count_of_metadata_product_log_id, name: Crime -
              Assaults}, {axisId: count_of_metadata_product_log_id, id: Crime - Bomb
              Threats - count_of_metadata_product_log_id, name: Crime - Bomb Threats},
          {axisId: count_of_metadata_product_log_id, id: Crime - Emergency Response
              - count_of_metadata_product_log_id, name: Crime - Emergency Response},
          {axisId: count_of_metadata_product_log_id, id: Crime - Hijackings & Hostage
              Situations - count_of_metadata_product_log_id, name: Crime - Hijackings
              & Hostage Situations}, {axisId: count_of_metadata_product_log_id, id: Crime
              - Kidnappings - count_of_metadata_product_log_id, name: Crime - Kidnappings},
          {axisId: count_of_metadata_product_log_id, id: Crime - Legal Action - count_of_metadata_product_log_id,
            name: Crime - Legal Action}, {axisId: count_of_metadata_product_log_id,
            id: Crime - Lockdowns & Evacuations - count_of_metadata_product_log_id,
            name: Crime - Lockdowns & Evacuations}, {axisId: count_of_metadata_product_log_id,
            id: Crime - Narcotics - count_of_metadata_product_log_id, name: Crime
              - Narcotics}, {axisId: count_of_metadata_product_log_id, id: Crime -
              Robberies - count_of_metadata_product_log_id, name: Crime - Robberies},
          {axisId: count_of_metadata_product_log_id, id: Crime - Shootings - count_of_metadata_product_log_id,
            name: Crime - Shootings}, {axisId: count_of_metadata_product_log_id, id: Crime
              - Stabbings - count_of_metadata_product_log_id, name: Crime - Stabbings},
          {axisId: count_of_metadata_product_log_id, id: Crime - Suspicious Packages
              & Devices - count_of_metadata_product_log_id, name: Crime - Suspicious
              Packages & Devices}, {axisId: count_of_metadata_product_log_id, id: Crime
              - Transnational - count_of_metadata_product_log_id, name: Crime - Transnational},
          {axisId: count_of_metadata_product_log_id, id: Crime - Uncategorized Crime
              - count_of_metadata_product_log_id, name: Crime - Uncategorized Crime},
          {axisId: count_of_metadata_product_log_id, id: Cybersecurity - count_of_metadata_product_log_id,
            name: Cybersecurity}, {axisId: count_of_metadata_product_log_id, id: Cybersecurity
              - Crime & Malicious Activity - count_of_metadata_product_log_id, name: Cybersecurity
              - Crime & Malicious Activity}, {axisId: count_of_metadata_product_log_id,
            id: Cybersecurity - Policy - count_of_metadata_product_log_id, name: Cybersecurity
              - Policy}, {axisId: count_of_metadata_product_log_id, id: Cybersecurity
              - Threats & Vulnerabilities - count_of_metadata_product_log_id, name: Cybersecurity
              - Threats & Vulnerabilities}, {axisId: count_of_metadata_product_log_id,
            id: Data Centers - count_of_metadata_product_log_id, name: Data Centers},
          {axisId: count_of_metadata_product_log_id, id: Data Exposure and Breaches
              - count_of_metadata_product_log_id, name: Data Exposure and Breaches},
          {axisId: count_of_metadata_product_log_id, id: DDoS - count_of_metadata_product_log_id,
            name: DDoS}, {axisId: count_of_metadata_product_log_id, id: Defacement
              - count_of_metadata_product_log_id, name: Defacement}, {axisId: count_of_metadata_product_log_id,
            id: Disasters & Weather - count_of_metadata_product_log_id, name: Disasters
              & Weather}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Severity
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_pivots: {}
    defaults_version: 1
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
    listen:
      Select Time Range: events.hour_time_bucket_time
      Watchlist Name Value: watchlist_name.watchlist_name_value
    row: 8
    col: 0
    width: 12
    height: 6
  - title: Distribution by Location
    name: Distribution by Location
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
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 0
    listen:
      Select Time Range: events.hour_time_bucket_time
      Watchlist Name Value: watchlist_name.watchlist_name_value
    row: 8
    col: 12
    width: 12
    height: 6
  - title: Last 10 Alerts
    name: Last 10 Alerts
    model: dataminr_project
    explore: events
    type: looker_grid
    fields: [events.event_timestamp_date_time, events__about__labels__alert_type_name.value,
      events.metadata__description, company_name_null.company_name_value, events.src__application,
      events.principal__application, events__target__labels_publisher_category_name.value]
    filters:
      events__about__labels__alert_type_name.value: "-EMPTY"
      events.principal__application: "-EMPTY"
    sorts: [events.event_timestamp_date_time desc]
    limit: 5000
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
      events__about__labels__alert_type_name.value: Alert Type
      events.metadata__description: Caption
      events.principal__application: source.channels
      events__target__labels_publisher_category_name.value: Publisher
      events.event_timestamp_date_time: Event Time
      events.src__application: Source
      company_name_null.company_name_value: Company
    series_column_widths:
      events__about__labels__alert_type_name.value: 77
      events.metadata__description: 733
      events.event_timestamp_date_time: 144
    defaults_version: 1
    listen:
      Select Time Range: events.hour_time_bucket_time
      Watchlist Name Value: watchlist_name.watchlist_name_value
    row: 14
    col: 0
    width: 24
    height: 7
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h3","children":[{"text":"This dashboards shows high level
      analytics about the dataminr alerts from the selected Watchlist."}]}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 24
    height: 2
  filters:
  - name: Select Time Range
    title: Select Time Range
    type: field_filter
    default_value: 7 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: dataminr_project
    explore: events
    listens_to_filters: []
    field: events.hour_time_bucket_time
  - name: Watchlist Name Value
    title: Watchlist Name Value
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: dataminr_project
    explore: events
    listens_to_filters: []
    field: watchlist_name.watchlist_name_value
