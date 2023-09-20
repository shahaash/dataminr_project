- dashboard: dataminr_alert_overview
  title: Dataminr Alert Overview
  layout: newspaper
  preferred_viewer: dashboards-next
  preferred_slug: qu5qnZzsWzEita59rQhvvv
  elements:
  - title: Distribution by Location
    name: Distribution by Location
    model: dataminr
    explore: events
    type: looker_google_map
    fields: [count_of_metadata_product_log_id, events.event__location]
    sorts: [count_of_metadata_product_log_id desc 0]
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
    map_marker_radius_min: 1
    map_marker_radius_max: 50
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    map_marker_color: []
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    hidden_pivots: {}
    defaults_version: 0
    map_scale_indicator: 'off'
    map: auto
    map_projection: ''
    quantize_colors: false
    listen: {}
    row:
    col:
    width:
    height:
  - title: Last 10 Alerts
    name: Last 10 Alerts
    model: dataminr
    explore: events
    type: looker_grid
    fields: [events__about__labels__alert_type_name.value, events.event_timestamp_date_time,
      events.metadata__description, events__security_result_for__about_resource_name.about__resource__name,
      events.principal__application, events__target__labels_publisher_category_name.value]
    filters:
      events__about__labels__alert_type_name.value: "-EMPTY"
      events.principal__application: "-EMPTY"
    sorts: [events.event_timestamp_date_time desc]
    limit: 10
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
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
      events.event_timestamp_date_time: Event Time
      events.metadata__description: Caption
      events.principal__application: Channel
      events__target__labels_publisher_category_name.value: Publisher
      events__security_result_for__about_resource_name.about__resource__name: Company
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
    listen: {}
    row:
    col:
    width:
    height:
  - title: Occurrence by Company
    name: Occurrence by Company
    model: dataminr
    explore: events
    type: looker_pie
    fields: [events__security_result.about__resource__name, count_of_metadata_product_log_id]
    filters:
      events__security_result.about__resource__name: "-EMPTY"
    sorts: [count_of_metadata_product_log_id desc 0]
    limit: 50
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
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row:
    col:
    width:
    height:
  - title: Occurrence by Severity
    name: Occurrence by Severity
    model: dataminr
    explore: events
    type: looker_bar
    fields: [events__about__labels__alert_type_name.value, count_of_metadata_product_log_id]
    pivots: [events__about__labels__alert_type_name.value]
    filters:
      events__about__labels__alert_type_name.value: "-EMPTY"
    sorts: [events__about__labels__alert_type_name.value, count_of_metadata_product_log_id
        desc 0]
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
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: count, orientation: bottom, series: [{axisId: count_of_metadata_product_log_id,
            id: count_of_metadata_product_log_id, name: Count of Metadata Product
              Log ID}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Severity
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    series_colors:
      Alert - count_of_metadata_product_log_id: "#F9AB00"
      Flash - count_of_metadata_product_log_id: "#EA4335"
      Urgent - count_of_metadata_product_log_id: "#E8710A"
    label_color: []
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row:
    col:
    width:
    height:
  - title: Occurrence Trend
    name: Occurrence Trend
    model: dataminr
    explore: events
    type: looker_line
    fields: [events__security_result__category_details.events__security_result__category_details,
      count_of_metadata_product_log_id, events.event_timestamp_date_time]
    pivots: [events__security_result__category_details.events__security_result__category_details]
    sorts: [events__security_result__category_details.events__security_result__category_details,
      events.event_timestamp_date_time desc]
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
    y_axes: [{label: count, orientation: left, series: [{axisId: count_of_metadata_product_log_id,
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
              & Weather}, {axisId: count_of_metadata_product_log_id, id: Domain Impersonation
              - count_of_metadata_product_log_id, name: Domain Impersonation}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Severity
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row:
    col:
    width:
    height:
