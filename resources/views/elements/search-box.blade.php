<form action="{{ route('search.get') }}" class="search-box-wrapper w-100" method="GET">
    <div class="input-group input-group-seamless-append">
        <input type="text" class="form-control shadow-none" aria-label="Text input with dropdown button"
            placeholder="{{ __('Search') }}" name="query"
            value="{{ isset($searchTerm) && $searchTerm ? $searchTerm : '' }}">
        <div class="input-group-append">
            <span class="input-group-text">
                <span class="h-pill h-pill-primary rounded file-upload-button" onclick="submitSearch();">
                    @include('elements.icon', ['icon' => 'search'])
                </span>
            </span>
        </div>
    </div>
    <input type="hidden" name="filter"
        value="{{ isset($activeFilter) && $activeFilter !== false ? $activeFilter : 'top' }}" />

    @if (isset($searchFilters['gender']) && $searchFilters['gender'])
        <input type="hidden" name="gender" value="{{ $searchFilters['gender'] }}" />
    @endif

    @if (isset($searchFilters['min_age']) && $searchFilters['min_age'])
        <input type="hidden" name="min_age" value="{{ $searchFilters['min_age'] }}" />
    @endif

    @if (isset($searchFilters['max_age']) && $searchFilters['max_age'])
        <input type="hidden" name="max_age" value="{{ $searchFilters['max_age'] }}" />
    @endif

    @if (isset($searchFilters['location']) && $searchFilters['location'])
        <input type="hidden" name="location" value="{{ $searchFilters['location'] }}" />
    @endif

</form>
@if (GenericHelper::isUserVerified())
<a href="{{ route('my.notifications') }}"
    class="h-pill h-pill-primary nav-link d-flex d-md-none justify-content-between px-3 {{ Route::currentRouteName() == 'my.notifications' ? 'active' : '' }}">
    <div class="d-flex justify-content-center align-items-center">
        <div class="icon-wrapper d-flex justify-content-center align-items-center position-relative">
            @include('elements.icon', [
                'icon' => 'notifications-outline',
                'variant' => 'large',
            ])
            <div
                class="menu-notification-badge notifications-menu-count {{ (isset($notificationsCountOverride) && $notificationsCountOverride->total > 0) || NotificationsHelper::getUnreadNotifications()->total > 0 ? '' : 'd-none' }}">
                {{ !isset($notificationsCountOverride) ? NotificationsHelper::getUnreadNotifications()->total : $notificationsCountOverride->total }}
            </div>
        </div>
    </div>
</a>
@endif
