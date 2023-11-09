<style>
    canvas{
        max-height: 400px;
        min-height: 400px;
    }
    #myPieChart{
        max-height: 250px;
        min-height: 250px;
    }
</style>
<div>
    <canvas id="myLineChart" height="400px"></canvas>
</div>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    setTimeout(function() {
        var months = @json($months);
        var monthlyEarnings = @json($monthlyEarnings);

        var event = new CustomEvent('earnings-updated', {
            detail: {
                months: JSON.stringify(months),
                monthlyEarnings: JSON.stringify(monthlyEarnings)
            }
        });
        window.dispatchEvent(event);
    }, 2000);
</script>
<script>
    let myLineChart = null;
    let myBarChart = null;
    let myPieChart = null;


    window.addEventListener('earnings-updated', function(event) {
        var months = JSON.parse(event.detail.months);
        var monthlyEarnings = JSON.parse(event.detail.monthlyEarnings);

        if (myLineChart) {
            myLineChart.destroy();
        }

        const line = document.getElementById('myLineChart');
        myLineChart = new Chart(line, {
            type: 'line',
            data: {
                labels: months,
                datasets: [{
                    label: 'Earnings: ',
                    data: monthlyEarnings,
                    borderWidth: 2
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });


        // bar chart


        if (myBarChart) {
            // If a chart instance exists, destroy it before creating a new one
            myBarChart.destroy();
        }

        const bar = document.getElementById('myBarChart');
        myBarChart = new Chart(bar, {
            type: 'bar',
            data: {
                labels: months, // Use the modified $months array
                datasets: [{
                    label: 'Earnings: ',
                    data: monthlyEarnings,
                    borderWidth: 2
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });


        // pie chart
        if (myPieChart) {
            // If a chart instance exists, destroy it before creating a new one
            myPieChart.destroy();
        }

        const pie = document.getElementById('myPieChart');
        myPieChart = new Chart(pie, {
            type: 'pie',
            data: {
                labels: months, // Use the modified $months array
                datasets: [{
                    label: 'Earnings: ',
                    data: monthlyEarnings,
                    borderWidth: 2
                }]
            },
            options: {
                plugins: {
                    legend: false,
                    tooltip: true,
                },
            }
        });

    });
</script>
