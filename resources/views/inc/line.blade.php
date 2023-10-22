<div>
    <canvas id="myLineChart"></canvas>
</div>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    const line = document.getElementById('myLineChart');
    new Chart(line, {
        type: 'line',
        data: {
            labels: @json($months), // Use the modified $months array
            datasets: [{
                label: 'Earnings: ',
                data: @json($monthlyEarnings),
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
</script>
