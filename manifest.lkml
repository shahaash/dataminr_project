project_name: "dataminr"

constant: CHRONICLE_URL{
  value: "https://crestdatasys.backstory.chronicle.security"
  export: override_required
}

visualization: {
  id: "test_viz"
  label: "test_viz"
  file: "custom_vizualisation/test_viz.js"
  dependencies: [
    "https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.0/chart.min.js",
    "https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.0/chart.js",
    "https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.0/chart.umd.js",
    "https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.0/chart.umd.min.js",
    "https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.0/helpers.js",
    "https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.0/helpers.min.js",
  ]
}

visualization: {
  id: "ioc_viz"
  label: "ioc_viz"
  file: "custom_vizualisation/ioc_viz.js"
  dependencies: [
    "https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.0/chart.min.js",
    "https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.0/chart.js",
    "https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.0/chart.umd.js",
    "https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.0/chart.umd.min.js",
    "https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.0/helpers.js",
    "https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.0/helpers.min.js",
  ]
}
