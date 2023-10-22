@extends('layouts.user-no-nav')

@section('page_title', __('Bookmarks'))

@section('styles')

@stop

@section('scripts')

@endsection

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="px-4 mt-4">
                <h3>Earnings</h3>
                <p class="text-muted">All Time Gross Earnings</p>
            </div>
            <hr>
            <div class="px-4 mt-4">
                <div class="row">
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-body shadow">
                                <h5 class="card-title">Gross Earnings</h5>
                                <h2 class="card-title mb-0">${{ number_format(auth()->user()->getGrossEarnings(),2) }}</h2>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-body shadow">
                                <h5 class="card-title">Net Earnings</h5>
                                <h2 class="card-title mb-0">${{ number_format(auth()->user()->getNetEarnings(),2) }}</h2>
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
                        <a class="nav-link active" data-toggle="pill" href="#home">LINE GRAPH</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="pill" href="#menu1">BAR GRAPH</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="pill" href="#menu2">PIE CHART</a>
                    </li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <div id="home" class="container tab-pane active"><br>
                        <h3>LINE GRAPH</h3>
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
                        <h3>BAR GRAPH</h3>
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
                        <h3>PIE CHART</h3>
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
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-body shadow">
                                <h5 class="card-title">Tips</h5>
                                <h2 class="card-title mb-0">${{ number_format(auth()->user()->getTipsEarnings(),2) }}</h2>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-body shadow">
                                <h5 class="card-title">Purchases</h5>
                                <h2 class="card-title mb-0">${{ number_format(auth()->user()->getPurchaseEarnings(),2) }}
                                </h2>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-body shadow">
                                <h5 class="card-title">Subscriptions</h5>
                                <h2 class="card-title mb-0">
                                    ${{ number_format(auth()->user()->getSubscriptionEarnings(),2) }}</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="px-4 mb-5 mt-4">
                <h4 class="text-muted">History of Purchase</h4>
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
@stop
