<div class="row">
    <div class="col-md-12">
        <div class="px-4 mt-4">
            <h3>Earnings</h3>
            <p class="text-muted">All Time Gross Earnings</p>
        </div>
        <hr>
        <div class="px-4 mt-4">
            <div class="row">
                <div class="col-md-12 mb-2">
                    <div class="card card-body">
                        <div>
                            <label for="date-range">Select Custom Report:</label>
                            <select wire:model="dateRange" class="form-control">
                                <option value="all" selected>All</option>
                                <option value="daily">Daily</option>
                                <option value="7days">Last 7 days</option>
                                <option value="30days">Last 30 days</option>
                                <option value="90days">Last 90 days</option>
                                <option value="custom">Custom</option>
                            </select>
                        </div>
                        @if ($customShowBox)
                            <div class="form-group mt-2">
                                <label for="start_date">Select Start Date</label>
                                <input wire:model="customStartDate" type="date" class="form-control" id="start_date">
                            </div>
                            <div class="form-group">
                                <label for="end_date">Select End Date</label>
                                <input wire:model="customEndDate" type="date" class="form-control" id="end_date">
                            </div>
                            <div class="form-group">
                                <button class="btn btn-sm btn-dark" wire:click="searchCustom">Submit</button>
                            </div>
                        @endif
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body shadow">
                            <h5 class="card-title">Gross Earnings</h5>
                            <h2 class="card-title mb-0">
                                ${{ number_format(auth()->user()->myTransactions()->where('type','!=','withdrawal')->whereBetween('created_at', [$startDate, $endDate])->sum('amount'),2) }}
                            </h2>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body shadow">
                            <h5 class="card-title">Net Earnings</h5>
                            <h2 class="card-title mb-0">
                                ${{ number_format(auth()->user()->myTransactions()->where('type','withdrawal')->whereBetween('created_at', [$startDate, $endDate])->sum('amount'),2) }}
                            </h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-12">
        <div class="px-4 mt-4">
            <ul class="nav nav-pills" role="tablist">
                <li class="nav-item">
                    <a class="btn btn-dark border btn-sm rounded-pill mr-3 active" data-toggle="pill"
                        href="#home">LINE GRAPH</a>
                </li>
                <li class="nav-item">
                    <a class="btn btn-dark border btn-sm rounded-pill mr-3" data-toggle="pill" href="#menu1">BAR
                        GRAPH</a>
                </li>
                <li class="nav-item">
                    <a class="btn btn-dark border btn-sm rounded-pill mr-3" data-toggle="pill" href="#menu2">PIE
                        CHART</a>
                </li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
                <div id="home" class="container tab-pane active"><br>
                    <h5 class="card-title">LINE GRAPH</h5>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-body">
                                    @include('inc.line')
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="menu1" class="container tab-pane fade"><br>
                    <h5 class="card-title">BAR GRAPH</h5>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-body">
                                    @include('inc.bar')
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="menu2" class="container tab-pane fade"><br>
                    <h5 class="card-title">PIE CHART</h5>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-body">
                                    @include('inc.pie')
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-12">
        <div class="px-4 mt-4">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body shadow">
                            <div class="row">
                                <div class="col-4 p-0">
                                    <h6 class="card-title">Tips</h6>
                                    <h5 class="card-title mb-0">
                                        ${{ number_format(auth()->user()->myTransactions()->where('type', 'tip')->whereBetween('created_at', [$startDate, $endDate])->sum('amount'),2) }}
                                    </h5>
                                </div>
                                <div class="col-4 p-0">
                                    <h6 class="card-title">Purchases</h6>
                                    <h5 class="card-title mb-0">
                                        ${{ number_format(auth()->user()->myTransactions()->where('type', 'post-unlock')->whereBetween('created_at', [$startDate, $endDate])->sum('amount'),2) }}
                                    </h5>
                                </div>
                                <div class="col-4 p-0">
                                    <h6 class="card-title">Subscriptions</h6>
                                    <h5 class="card-title mb-0">
                                        ${{ number_format(auth()->user()->myTransactions()->where('type', 'one-month-subscription')->whereBetween('created_at', [$startDate, $endDate])->sum('amount'),2) }}
                                    </h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-12">
        <div class="px-4 mb-5 mt-4">
            <hr>
            <h4 class="text-muted">History of Purchase</h4>
            <hr>
            <div class="table-responsive">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Date</th>
                            <th>Type of Purchase</th>
                            <th>Gross</th>
                            <th>Net</th>
                            <th>User</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            $transactions = auth()
                                ->user()
                                ->myTransactions()
                                ->whereBetween('created_at', [$startDate, $endDate])
                                ->paginate(10);
                        @endphp
                        @foreach ($transactions as $transaction)
                            <tr>
                                <td>{{ $transaction->created_at->diffForHumans() }}</td>
                                <td>{{ strtoupper($transaction->type) }}</td>
                                <td>${{ number_format($transaction->amount, 2) }}</td>
                                <td>${{ number_format($transaction->amount, 2) }}</td>
                                <td>{{ $transaction->sender->name }}</td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
                <div class="d-flex justify-content-end mr-4">
                    {{ $transactions->links() }}
                </div>
            </div>
        </div>
    </div>
</div>
