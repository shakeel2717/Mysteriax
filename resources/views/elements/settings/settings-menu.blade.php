<div class="d-lg-block settings-nav" id="">
    <div class="card-settings border-bottom">
        <div class="list-group list-group-sm list-group-flush">
            <div class="row">
                <div class="col-12 mt-3 ml-2 settings-menu">
                    <h3 class="">Settings</h3>
                </div>
                <div class="p-4 w-100">
                    <ul class="text-muted list-unstyled d-flex flex-column fw-bold" style="gap: 20px;">
                        <li class="custom-nav-link">
                            <a class="text-muted" href="{{ route('my.settings', ['type' => 'profile']) }}">Profile</a>
                            @include('elements.icon', [
                                'icon' => 'caret-forward-outline',
                                'variant' => 'small',
                                'classes' => 'text-muted mr-2',
                            ])
                        </li>
                        <li class="custom-nav-link">
                            <a class="text-muted" href="{{ route('my.settings', ['type' => 'account']) }}">Account
                                Settings</a>
                            @include('elements.icon', [
                                'icon' => 'caret-forward-outline',
                                'variant' => 'small',
                                'classes' => 'mr-2',
                            ])
                        </li>
                        <li class="custom-nav-link">
                            <a class="text-muted" href="{{ route('my.settings', ['type' => 'wallet']) }}">Wallet</a>
                            @include('elements.icon', [
                                'icon' => 'caret-forward-outline',
                                'variant' => 'small',
                                'classes' => 'mr-2',
                            ])
                        </li>
                        <li class="custom-nav-link">
                            <a class="text-muted"
                                href="{{ route('my.settings', ['type' => 'privacy']) }}">Privacy/Safety</a>
                            @include('elements.icon', [
                                'icon' => 'caret-forward-outline',
                                'variant' => 'small',
                                'classes' => 'mr-2',
                            ])
                        </li>
                        <li class="custom-nav-link">
                            <a class="text-muted"
                                href="{{ route('my.settings', ['type' => 'subscriptions']) }}">Subscriptions</a>
                            @include('elements.icon', [
                                'icon' => 'caret-forward-outline',
                                'variant' => 'small',
                                'classes' => 'mr-2',
                            ])
                        </li>
                    </ul>
                </div>
                @if (GenericHelper::isUserVerified())
                    <div class="col-12 mt-0 ml-2 settings-menu w-100">
                        <h3 class="">Creator Settings</h3>
                    </div>
                    <div class="p-4 w-100">
                        <ul class="text-muted list-unstyled d-flex flex-column fw-bold" style="gap: 20px;">
                            <li class="custom-nav-link">
                                <a class="text-muted"
                                    href="{{ route('my.settings', ['type' => 'withdraw']) }}">Payout</a>
                                @include('elements.icon', [
                                    'icon' => 'caret-forward-outline',
                                    'variant' => 'small',
                                    'classes' => 'mr-2',
                                ])
                            </li>
                            <li class="custom-nav-link">
                                <a class="text-muted"
                                    href="{{ route('my.settings', ['type' => 'rates']) }}">Subscription
                                    Plans</a>
                                @include('elements.icon', [
                                    'icon' => 'caret-forward-outline',
                                    'variant' => 'small',
                                    'classes' => 'mr-2',
                                ])
                            </li>
                            <li class="custom-nav-link">
                                <a class="text-muted" href="{{ route('my.lists.all') }}">Block/Restricted
                                    List</a>
                                @include('elements.icon', [
                                    'icon' => 'caret-forward-outline',
                                    'variant' => 'small',
                                    'classes' => 'mr-2',
                                ])
                            </li>
                            <li class="custom-nav-link">
                                <a class="text-muted" href="{{ route('my.settings', ['type' => 'account']) }}">Welcome
                                    Messages</a>
                                @include('elements.icon', [
                                    'icon' => 'caret-forward-outline',
                                    'variant' => 'small',
                                    'classes' => 'mr-2',
                                ])
                            </li>
                        </ul>
                    </div>
                @else
                    <div class="col-12 mt-0 ml-2 settings-menu w-100">
                        <a href="{{ route('my.settings', ['type' => 'verify']) }}" class="btn btn-dark border border-white rounded-0 p-2">Become a Creator</a>
                    </div>
                @endif
            </div>
            {{-- @foreach ($availableSettings as $route => $setting)
                @switch($route)
                    @case('payments')
                    @break
                    @case('subscriptions')
                    @break
                    @default
                        <a href="{{ route('my.settings', ['type' => $route]) }}"
                            class="{{ $activeSettingsTab == $route ? 'active' : '' }} list-group-item list-group-item-action d-flex justify-content-between">
                            <div class="d-flex align-items-center">
                                @include('elements.icon', [
                                    'icon' => $setting['icon'] . '-outline',
                                    'centered' => 'false',
                                    'classes' => 'mr-3',
                                    'variant' => 'medium',
                                ])
                                <span>{{ ucfirst(__($route)) }}</span>
                            </div>
                            <div class="d-flex align-items-center">
                                @include('elements.icon', ['icon' => 'chevron-forward-outline'])
                            </div>
                        </a>
                @endswitch
            @endforeach --}}
        </div>
    </div>
</div>
