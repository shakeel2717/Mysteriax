<div class="row">
    <div class="col-md-12">
        <div class="card border">
            <div class="card-body p-3">
                @if (!auth()->user()->stripe_connect)
                <div class="d-flex justify-content-between align-items-center">
                    <h4>Connect Stripe Express Account</h4>
                    <a href="{{ route('stripe.connect') }}" class="btn btn-primary btn-sm">Connect Now</a>
                </div>
                @else
                <div class="d-flex justify-content-between align-items-center">
                    <h4>Stripe Express Connected</h4>
                </div>
                @endif
            </div>
        </div>
    </div>
</div>