<div>
    <canvas id="myPieChart"></canvas>
</div>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    const pie = document.getElementById('myPieChart');
    new Chart(pie, {
        type: 'pie',
        data: {
            labels: @json($months), // Use the modified $months array
            datasets: [{
                label: 'Earnings: ',
                data: @json($monthlyEarnings),
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
</script>
