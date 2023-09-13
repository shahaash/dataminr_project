// Use Looker's Visualization API
looker.plugins.visualizations.add({
  id: 'display_count',
  label: 'Display Count',
  create: function(element, config) {
    // Create a container for the count value
    this.container = element.appendChild(document.createElement("div"));
    this.container.setAttribute("id", "count-line-container");

    // Applying Styling to the container
    this.container.style.fontWeight = "bold";
    this.container.style.textAlign = "center";
    this.container.style.padding = "25px";
    this.container.style.display = "flex";
    this.container.style.flexDirection = "column";
    this.container.style.alignItems = "center";

    // Create a container for the text line
    this.textContainer = element.appendChild(document.createElement("div"));
    this.textContainer.setAttribute("id", "text-line-container");
    this.textContainer.style.fontSize = "16px";
    this.textContainer.style.textAlign = "center";
    this.textContainer.style.padding = "5px";
    this.textContainer.style.fontFamily = "Arial";


   // Create a container element for your chart
    this.parentNode = document.createElement("div")
    this.chart_container = document.createElement("canvas")
    this.chart_container.className = "line-chart-container";
    this.parentNode.appendChild(this.chart_container);
    element.appendChild(this.parentNode);

  },

  updateAsync: function(data, element, config, queryResponse, details, done) {

    // Calculate the count value from the data
    const count = data.length;

    let list=[]
    let list1=[]
    for (var i of queryResponse.fields.measures) {
      var th = document.createElement('th');
      list.push(i.name);
    }
    data.forEach(function (row) {
      Object.keys(row).forEach(function (key) {
        list1.push(row[key].value);
      });
    });
    // console.log("list:",list)
    // console.log("list1:",list1)

    // Calculate the percentage value based on the available count
    const estimatedTotalItems = 100;
    const percentage = ((count / estimatedTotalItems) * 100).toFixed(2);
    const previousPercentage = 75;

    const percentageChange = percentage - previousPercentage;
    const arrowIcon = percentageChange > 0 ? '➚' : '➘';

    // Display the count and percentage value in the container
    this.container.innerHTML = `
      <div style="display: flex; align-items: center;">
        <div style="font-size: 60px;">${list1[1]}</div>
        <div style="display: flex; flex-direction: column; align-items: flex-start;">
          <div style="font-size: 30px;">${arrowIcon}</div>
          <div style="font-size: 20px; text-align: right;">${percentage}%</div>
        </div>
      </div>
    `;

    // Display the text line below the count value
    this.textContainer.textContent = "Today vs Yesterday";

    // Extract data from Looker's query response
    var labels = [];
    var datasets = [];

    // Populate labels and datasets based on your data model
    // For example, assuming your queryResponse contains fields 'X' and 'Y':
    data.forEach(function(row) {
      datasets.push(row['count_of_metadata_product_log_id'].value ? row['count_of_metadata_product_log_id'].value : 0);
      labels.push(row['events.event_timestamp_date_date'].value);
    });


    // Initialize a Chart.js instance
      var ctx = this.chart_container;
      if (this.chart) {
        this.chart.destroy();
      }
      this.chart = new Chart(ctx, {
        type: "line", // Specify the chart type as a line chart
        data: {
          labels: labels,
          datasets: [{
            label: null,
            data: datasets,
            fill: false,
            borderColor: 'rgb(0, 0, 0)',
            tension: 0.1
          }],
        },
        options: {
          responsive: true,
          maintainAspectRatio: false,
          scales: {
            x: {
              display: false, // Hide the X-axis
            },
            y: {
              display: false, // Hide the Y-axis
            },
          },
          plugins: {
              legend: {
                    display: false,
              }
          }
        },
      });
    // // Update the chart data
    // var chart = this.chart; // Reference to the Chart.js instance created in the 'create' function
    // chart.data.labels = labels;
    // chart.data.datasets = [
    //   {
    //     label: 'Y Values',
    //     data: datasets,
    //     borderColor: 'blue',
    //     borderWidth: 2,
    //     fill: false,
    //   },
    // ];

    // this.chart.data.labels = labels; // Set labels here
    // this.chart.data.datasets[0].data = datasets; // Update the dataset's data


    // Update the chart
    this.chart.update();

    // Signal the completion of rendering
    done();
  }
});
