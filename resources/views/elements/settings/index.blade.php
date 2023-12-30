@extends('layouts.user-no-nav')

@section('page_title', 'Settings')

@section('content')
    <div class=min-vh-100">
        <div class="row">
            <div class="col-12 col-md-4 col-lg-3 mt-3 ml-2 settings-menu">
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
                        <a class="text-muted" href="{{ route('my.settings', ['type' => 'account']) }}">Account Settings</a>
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
                        <a class="text-muted" href="{{ route('my.settings', ['type' => 'privacy']) }}">Privacy/Safety</a>
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
                <div class="col-12 col-md-4 col-lg-3 mt-0 ml-2 settings-menu">
                    <h3 class="">Creator Settings</h3>
                </div>
                <div class="p-4 w-100">
                    <ul class="text-muted list-unstyled d-flex flex-column fw-bold" style="gap: 20px;">
                        <li class="custom-nav-link">
                            <a class="text-muted" href="{{ route('my.settings', ['type' => 'withdraw']) }}">Payout</a>
                            @include('elements.icon', [
                                'icon' => 'caret-forward-outline',
                                'variant' => 'small',
                                'classes' => 'mr-2',
                            ])
                        </li>
                        <li class="custom-nav-link">
                            <a class="text-muted" href="{{ route('my.settings', ['type' => 'rates']) }}">Subscription
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
                    <a href="{{ route('my.settings', ['type' => 'verify']) }}"
                        class="btn btn-dark border border-white rounded-0 p-2">Become a Creator</a>
                </div>
            @endif
        </div>
    </div>
@stop
