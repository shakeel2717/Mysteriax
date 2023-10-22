<div>
    <canvas id="myBarChart"></canvas>
</div>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    const bar = document.getElementById('myBarChart');
    new Chart(bar, {
        type: 'bar',
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
