<div class="row">
    <div class="col-md-12">
        <h4>All Earnings Report</h4>
        <div class="table-responsive">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Amount</th>
                        <th>Status</th>
                        <th>Date</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse (auth()->user()->referral_earnings as $earning)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ number_format($earning->amount, 2) }}</td>
                            <td><span class="badge badge-primary">{{ $earning->status ? "Complete" : "Proccessing" }}</span></td>
                            <td>{{ $earning->created_at }}</td>
                        </tr>
                    @empty
                        <tr>
                            <td colspan="4">No Earning Found</td>
                        </tr>
                    @endforelse
                </tbody>
            </table>
        </div>
        <br>
    </div>
</div>
