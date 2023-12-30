@if (GenericHelper::isUserVerified())
    <div class="row">
        <div class="col-md-12">
            <h3 class="title">Payment Methods</h3>
            <div class="payment-method mb-4 d-flex justify-content-between align-items-center">
                <div class="connection-info d-flex align-items-center">
                    <h4 class="title text-uppercase mb-0 mr-2"><b>Stripe</b></h4>
                    @if (getUserStripeStatus())
                        @include('elements.icon', [
                            'icon' => 'radio-button-on-outline',
                            'variant' => 'small',
                            'centered' => false,
                            'classes' => 'mr-2 text-success',
                        ])
                    @else
                        @include('elements.icon', [
                            'icon' => 'radio-button-off-outline',
                            'variant' => 'small',
                            'centered' => false,
                            'classes' => 'mr-2 text-danger',
                        ])
                    @endif
                </div>
                <div class="new-connection">
                    <a href="{{ route('stripe.connect') }}" title="Connect your Stripe">@include('elements.icon', [
                        'icon' => 'open-outline',
                        'variant' => 'large',
                        'centered' => false,
                        'classes' => '',
                    ]) </a>
                </div>
            </div>
        </div>
        <div class="col-12">
            <div class="d-flex align-items-center">
                <span class="text-right" id="pending-balance"
                    title="{{ __('The payouts are manually and it usually take up to 24 hours for a withdrawal to be processed, we will notify you as soon as your request is processed.') }}">
                    {{ __('Pending balance') }} (<b
                        class="wallet-pending-amount">{{ config('app.site.currency_symbol') }}{{ number_format(getCreatorPendingBalance(Auth::id()), 2, '.', '') }}</b>)
                </span>
                @include('elements.icon', [
                    'icon' => 'information-circle-outline',
                    'variant' => 'small',
                    'centered' => false,
                    'classes' => 'mr-2',
                ])
            </div>
            <div class="d-flex align-items-center">
                <span class="text-right" id="pending-balance"
                    title="{{ __('The payouts are manually and it usually take up to 24 hours for a withdrawal to be processed, we will notify you as soon as your request is processed.') }}">
                    {{ __('Balance') }} (<b
                        class="wallet-current-amount ">{{ \App\Providers\SettingsServiceProvider::getWebsiteCurrencySymbol() }}{{ number_format(getCreatorBalance(Auth::id()), 2, '.', '') }}</b>)
                </span>
            </div>
            <input type="hidden" name="withdrawal-amount" id="withdrawal-amount"
                value="{{ getCreatorBalance(Auth::id()) }}">
            <input type="hidden" name="withdrawal-message" id="withdrawal-message" value="Stripe Auto Withdrawal">
            <input type="hidden" name="withdrawal-payment-identifier" id="withdrawal-payment-identifier"
                value="Stripe Express">
            <input type="hidden" name="payment-methods" id="payment-methods" value="{{ auth()->user()->email }}">
            @if (getUserStripeStatus())
                <div class="payout-button mt-4">
                    <form action="#" method="POST">
                        @csrf
                        <button class="btn btn-primary btn-lg rounded-pill mt-4 withdrawal-continue-btn"
                            type="button">Withdraw:
                            {{ \App\Providers\SettingsServiceProvider::getWebsiteCurrencySymbol() }}{{ number_format(getCreatorBalance(Auth::id()), 2, '.', '') }}</button>
                    </form>
                </div>
            @else
                <hr>
                <h5 class="text-danger">Please Connect Stripe ...</h5>
            @endif
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Amount</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse (auth()->user()->pending_payments as $payment)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>${{ number_format($payment->amount,2) }}</td>
                                <td><span class="badge badge-primary">Proccessing</span></td>
                            </tr>
                        @empty
                        <tr>
                            <td colspan="3">Currently, there are no pending payments in progress.</td>
                        </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endif
