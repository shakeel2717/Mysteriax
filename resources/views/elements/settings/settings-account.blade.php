<hr>
<h4 class="text-muted">Subscriptions Settings</h4>
<hr>
@if($subscribersCount)
    <div class="mt-0 mt-md-3 mb-1 inline-border-tabs">
        <nav class="nav nav-pills nav-justified">
            @foreach(['subscriptions', 'subscribers'] as $tab)
                <a class="nav-item nav-link {{$activeSubsTab == $tab ? 'active' : ''}}" href="{{route('my.settings',['type' => 'subscriptions', 'active' => $tab])}}">

                    <div class="d-flex align-items-center justify-content-center">
                        @if($tab == 'subscriptions')
                            @include('elements.icon',['icon'=>'people','variant'=>'medium','classes'=>'mr-2'])
                        @else
                            @include('elements.icon',['icon'=>'logo-usd','variant'=>'medium','classes'=>'mr-2'])
                        @endif
                        {{ucfirst(__($tab))}}
                    </div>
                </a>
            @endforeach
        </nav>
    </div>
@endif

@if(count($subscriptions))
    <div class="table-wrapper">
        @include('elements/message-alert', ['classes' =>'p-2'])
        <div class="">
            <div class="col d-flex align-items-center py-3 border-bottom text-bold">
                <div class="col-3 col-md-3 text-truncate">{{$activeSubsTab == 'subscriptions' ? __('To') : __('From')}}</div>
                <div class="col-4 col-md-2 text-truncate">{{__('Status')}}</div>
                <div class="col-2 text-truncate d-none d-md-block">{{__('Paid with')}}</div>
                <div class="col-4 col-md-2 text-truncate">{{__('Renews')}}</div>
                <div class="col-2 text-truncate d-none d-md-block">{{__('Expires at')}}</div>
                <div class="col-1 text-truncate"></div>
            </div>
            @foreach($subscriptions as $subscription)
                <div class="col d-flex align-items-center py-3 border-bottom">
                    <div class="col-3 col-md-3 text-truncate">
                        <span class="mr-2">
                            <img src="{{$activeSubsTab == 'subscriptions' ? $subscription->creator->avatar : $subscription->subscriber->avatar}}" class="rounded-circle user-avatar" width="35">
                        </span>
                        <a href="{{route('profile',['username'=> $activeSubsTab == 'subscriptions' ? $subscription->creator->username : $subscription->subscriber->username])}}" class="text-dark-r">
                            {{$activeSubsTab == 'subscriptions' ? $subscription->creator->name : $subscription->subscriber->name}}
                        </a>
                    </div>
                    <div class="col-4 col-md-2">
                        @switch($subscription->status)
                            @case('pending')
                            @case('update-needed')
                            @case('canceled')
                            <span class="badge badge-warning">{{ucfirst(__($subscription->status))}}</span>
                            @break
                            @case('completed')
                            <span class="badge badge-success">{{ucfirst(__($subscription->status))}}</span>
                            @break
                            @case('suspended')
                            @case('expired')
                            @case('failed')
                            <span class="badge badge-danger">{{ucfirst(__($subscription->status))}}</span>
                            @break
                        @endswitch
                    </div>
                    <div class="col-2 text-truncate d-none d-md-block">{{ucfirst($subscription->provider)}}</div>
                    <div class="col-4 col-md-2 text-truncate text-center">{{isset($subscription->expires_at) ? ($subscription->status == \App\Model\Subscription::CANCELED_STATUS ? '-' : $subscription->expires_at->format('M d Y')) : '-'}}</div>
                    <div class="col-2 text-truncate d-none d-md-block text-center">{{isset($subscription->expires_at) ? ($subscription->status == \App\Model\Subscription::ACTIVE_STATUS ? '-' : $subscription->expires_at->format('M d Y')) : '-'}}</div>
                    <div class="col-1 text-center">
                        @if($subscription->status === \App\Model\Subscription::ACTIVE_STATUS)
                            <div class="dropdown {{GenericHelper::getSiteDirection() == 'rtl' ? 'dropright' : 'dropleft'}}">
                                <a class="btn btn-sm text-dark-r text-hover {{$subscription->status == 'canceled' ? 'disabled' : ''}} btn-outline-{{(Cookie::get('app_theme') == null ? (getSetting('site.default_user_theme') == 'dark' ? 'dark' : 'light') : (Cookie::get('app_theme') == 'dark' ? 'dark' : 'light'))}} dropdown-toggle m-0 py-1 px-2" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                                    @include('elements.icon',['icon'=>'ellipsis-horizontal-outline','centered'=>false])
                                </a>
                                <div class="dropdown-menu">
                                    <!-- Dropdown menu links -->
                                    <!-- TODO: Disable cancel url from UI if ccbill data link not present -->
                                    @if($subscription->status === \App\Model\Subscription::ACTIVE_STATUS && ($subscription->provider !== 'ccbill' || \App\Providers\SettingsServiceProvider::providedCCBillSubscriptionCancellingCredentials()))
                                        <a class="dropdown-item d-flex align-items-center" href="javascript:void(0)" onclick="SubscriptionsSettings.confirmSubCancelation({{$subscription->id}},{{$activeSubsTab == 'subscriptions' ? '"subscriptions"' : '"subscribers"'}})">
                                            @include('elements.icon',['icon'=>'trash-outline','centered'=>false,'classes'=>'mr-2']) {{__('Cancel subscription')}}
                                        </a>
                                    @endif
                                </div>
                            </div>
                        @endif
                    </div>
                </div>
            @endforeach
        </div>
        <div class="d-flex flex-row-reverse mt-3 mr-4">
            {{ $subscriptions->withQueryString()->onEachSide(1)->links() }}
        </div>
        @else
            <div class="p-3">
                <p>{{__('There are no active or cancelled subscriptions at the moment.')}}</p>
            </div>
@endif

@include('elements.settings.transaction-cancel-dialog')


<hr>
<h4 class="text-muted">Notifications Settings</h4>
<hr>

<form>

    @if(getSetting('profiles.enable_new_post_notification_setting'))
        <div class="form-group">
            <div class="custom-control custom-switch">
                <input type="checkbox" class="custom-control-input notification-checkbox" id="notification_email_new_post_created" name="notification_email_new_post_created"
                    {{isset(Auth::user()->settings['notification_email_new_post_created']) ? (Auth::user()->settings['notification_email_new_post_created'] == 'true' ? 'checked' : '') : false}}>
                <label class="custom-control-label" for="notification_email_new_post_created">{{__('New content has been posted')}}</label>
            </div>
        </div>
    @endif

    <div class="form-group">
        <div class="custom-control custom-switch">
            <input type="checkbox" class="custom-control-input notification-checkbox" id="notification_email_new_sub" name="notification_email_new_sub"
                {{isset(Auth::user()->settings['notification_email_new_sub']) ? (Auth::user()->settings['notification_email_new_sub'] == 'true' ? 'checked' : '') : false}}>
            <label class="custom-control-label" for="notification_email_new_sub">{{__('New subscription registered')}}</label>
        </div>
    </div>

    <div class="form-group">
        <div class="custom-control custom-switch">
            <input type="checkbox" class="custom-control-input notification-checkbox" id="notification_email_new_tip" name="notification_email_new_tip"
                {{isset(Auth::user()->settings['notification_email_new_tip']) ? (Auth::user()->settings['notification_email_new_tip'] == 'true' ? 'checked' : '') : false}}>
            <label class="custom-control-label" for="notification_email_new_tip">{{__('Received a tip')}}</label>
        </div>
    </div>

    <div class="form-group">
        <div class="custom-control custom-switch">
            <input type="checkbox" class="custom-control-input notification-checkbox" id="notification_email_new_ppv_unlock" name="notification_email_new_ppv_unlock"
                {{isset(Auth::user()->settings['notification_email_new_ppv_unlock']) ? (Auth::user()->settings['notification_email_new_ppv_unlock'] == 'true' ? 'checked' : '') : false}}>
            <label class="custom-control-label" for="notification_email_new_ppv_unlock">{{__('Your PPV content has been unlocked')}}</label>
        </div>
    </div>


    <div class="form-group">
        <div class="custom-control custom-switch">
            <input type="checkbox" class="custom-control-input notification-checkbox" id="notification_email_new_message" name="notification_email_new_message"
                {{isset(Auth::user()->settings['notification_email_new_message']) ? (Auth::user()->settings['notification_email_new_message'] == 'true' ? 'checked' : '') : false}}>
            <label class="custom-control-label" for="notification_email_new_message">{{__('New message received')}}</label>
        </div>
    </div>

    <div class="form-group">
        <div class="custom-control custom-switch">
            <input type="checkbox" class="custom-control-input notification-checkbox" id="notification_email_new_comment" name="notification_email_new_comment"
                {{isset(Auth::user()->settings['notification_email_new_comment']) ? (Auth::user()->settings['notification_email_new_comment'] == 'true' ? 'checked' : '') : false}}>
            <label class="custom-control-label" for="notification_email_new_comment">{{__('New comment received')}}</label>
        </div>
    </div>

    <div class="form-group">
        <div class="custom-control custom-switch">
            <input type="checkbox" class="custom-control-input notification-checkbox" id="notification_email_expiring_subs" name="notification_email_expiring_subs"
                {{isset(Auth::user()->settings['notification_email_expiring_subs']) ? (Auth::user()->settings['notification_email_expiring_subs'] == 'true' ? 'checked' : '') : false}}>
            <label class="custom-control-label" for="notification_email_expiring_subs">{{__('Expiring subscriptions')}}</label>
        </div>
    </div>
    <div class="form-group">
        <div class="custom-control custom-switch">
            <input type="checkbox" class="custom-control-input notification-checkbox" id="notification_email_renewals" name="notification_email_renewals"
                {{isset(Auth::user()->settings['notification_email_renewals']) ? (Auth::user()->settings['notification_email_renewals'] == 'true' ? 'checked' : '') : false}}>
            <label class="custom-control-label" for="notification_email_renewals">{{__('Upcoming renewals')}}</label>
        </div>
    </div>

        <div class="form-group">
            <div class="custom-control custom-switch">
                <input type="checkbox" class="custom-control-input notification-checkbox" id="notification_email_creator_went_live" name="notification_email_creator_went_live"
                    {{isset(Auth::user()->settings['notification_email_creator_went_live']) ? (Auth::user()->settings['notification_email_creator_went_live'] == 'true' ? 'checked' : '') : false}}>
                <label class="custom-control-label" for="notification_email_creator_went_live">{{__('A user I am following went live')}}</label>
            </div>
        </div>

</form>

<hr>
<h4 class="text-muted">Privacy Settings</h4>
<hr>

<div class="form-group ">
    <div class="card py-3 px-3">
        <div class="custom-control custom-switch custom-switch">
            <input type="checkbox" class="custom-control-input" id="public_profile" {{Auth::user()->public_profile ? 'checked' : ''}}>
            <label class="custom-control-label" for="public_profile">{{__('Is public account')}}</label>
        </div>
        <div class="mt-2">
            <span>{{__('Having your profile set to private means:')}}</span>
            <ul class="mt-1 mb-2">
                <li>{{__('It will be hidden for search engines and unregistered users entirely.')}}</li>
                <li>{{__('It will also be generally hidden from suggestions and user searches on our platform.')}}</li>
            </ul>
        </div>
    </div>

    @if(getSetting('profiles.allow_users_enabling_open_profiles'))
        <div class="card py-3 px-3  mt-3">
            <div class="custom-control custom-switch custom-switch">
                <input type="checkbox" class="custom-control-input" id="open_profile" {{Auth::user()->open_profile ? 'checked' : ''}}>
                <label class="custom-control-label" for="open_profile">{{__('Open profile')}}</label>
            </div>
            <div class="mt-2">
                <span>{{__('Having your profile set to open means:')}}</span>
                <ul class="mt-1 mb-2">
                    <li>{{__('Both registered and unregistered users will be able to see your posts.')}}</li>
                    <li>{{__('If account is private, the content will only be available for registered used.')}}</li>
                    <li>{{__('Paid posts will still be locked for open profiles.')}}</li>
                </ul>
            </div>
        </div>
    @endif


    @if(getSetting('security.allow_geo_blocking'))
        <div class="mb-3 card py-3 mt-3">
            <div class="">
                <div class="custom-control custom-switch custom-switch">
                    <div class="ml-3">
                        <input type="checkbox" class="custom-control-input" id="enable_geoblocking" {{Auth::user()->enable_geoblocking ? 'checked' : ''}}>
                        <label class="custom-control-label" for="enable_geoblocking">{{__('Enable Geo-blocking')}}</label>
                    </div>
                    <div class="ml-3 mt-2">
                        <small class="fa-details-label">{{__("If enabled, visitors from certain countries will be restricted access.")}}</small>
                    </div>
                </div>
            </div>
            <div class="form-group px-2 mx-3 mt-2">
                <label for="countrySelect">
                    <span>{{__('Country')}}</span>
                </label>
                <select class="country-select form-control input-sm uifield-country" id="countrySelect" required multiple="multiple">
                    @foreach($countries as $country)
                        @if($country->name !== 'All')
                            <option>{{$country->name}}</option>
                        @endif
                    @endforeach
                </select>
            </div>
        </div>
    @endif

    @if(getSetting('security.allow_users_2fa_switch'))
        <div class="mb-3 card py-3 mt-3">

            <div class="custom-control custom-switch custom-switch">
                <div class="ml-3">
                    <input type="checkbox" class="custom-control-input" id="enable_2fa" {{Auth::user()->enable_2fa ? 'checked' : ''}}>
                    <label class="custom-control-label" for="enable_2fa">{{__('Enable email 2FA')}}</label>
                </div>
                <div class="ml-3 mt-2">
                    <small class="fa-details-label">{{__("If enabled, access from new devices will be restricted until verified.")}}</small>
                </div>
            </div>

            <div class="allowed-devices mx-3 mt-2 {{Auth::user()->enable_2fa ? '' : 'd-none'}}">
                <div class="lists-wrapper mt-2">
                    <div class="px-2 list-item">
                        @if($verifiedDevicesCount)
                            <p class="h6 text-bolder mb-2 text-bold-600">{{__("Allowed devices")}}</p>
                            @include('elements.settings.user-devices-list', ['type' => 'verified'])
                        @endif
                        @if($unverifiedDevicesCount)
                            <p class="h6 text-bolder mb-2 text-bold-600 mt-3">{{__("Un-verified devices")}}</p>
                            @include('elements.settings.user-devices-list', ['type' => 'unverified'])
                        @endif
                    </div>
                </div>
            </div>
        </div>

    @endif

</div>

@include('elements.settings.device-delete-dialog')


<hr>
<h4 class="text-muted">Account Verification</h4>
<hr>

@if(session('success'))
    <div class="alert alert-success text-white font-weight-bold mt-2" role="alert">
        {{session('success')}}
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
@endif

@if(session('error'))
    <div class="alert alert-warning text-white font-weight-bold mt-2" role="alert">
        {{session('error')}}
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
@endif

@if(Auth::user()->verification && (Auth::user()->verification->rejectionReason && Auth::user()->verification->status === 'rejected' ) )
    <div class="alert alert-warning text-white font-weight-bold mt-2" role="alert">
        {{__("Your previous verification attempt was rejected for the following reason:")}} "{{Auth::user()->verification->rejectionReason}}"
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
@endif

<form class="verify-form mb-5" action="{{route('my.settings.verify.save')}}" method="POST">
    @csrf
    <p>{{__('In order to get verified and receive your badge, please take care of the following steps:')}}</p>
    <div class="d-flex align-items-center mb-1 ml-4">
        @if(Auth::user()->email_verified_at)
            @include('elements.icon',['icon'=>'checkmark-circle-outline','variant'=>'medium', 'classes'=>'text-success mr-2'])
        @else
            @include('elements.icon',['icon'=>'close-circle-outline','variant'=>'medium', 'classes'=>'text-warning mr-2'])
        @endif
        {{__('Confirm your email address.')}}
    </div>
    <div class="d-flex align-items-center mb-1 ml-4">
        @if(Auth::user()->birthdate)
            @include('elements.icon',['icon'=>'checkmark-circle-outline','variant'=>'medium', 'classes'=>'text-success mr-2'])
        @else
            @include('elements.icon',['icon'=>'close-circle-outline','variant'=>'medium', 'classes'=>'text-warning mr-2'])
        @endif
        {{__('Set your birthdate.')}}
    </div>
    <div class="d-flex align-items-center ml-4">
        @if((Auth::user()->verification && Auth::user()->verification->status == 'verified'))
            @include('elements.icon',['icon'=>'checkmark-circle-outline','variant'=>'medium', 'classes'=>'text-success mr-2']) {{__('Upload a Goverment issued ID card.')}}
        @else
            @if(!Auth::user()->verification || (Auth::user()->verification && Auth::user()->verification->status !== 'verified' && Auth::user()->verification->status !== 'pending'))
                @include('elements.icon',['icon'=>'close-circle-outline','variant'=>'medium', 'classes'=>'text-warning mr-2']) {{__('Upload a Goverment issued ID card.')}}
            @else
                @include('elements.icon',['icon'=>'time-outline','variant'=>'medium', 'classes'=>'text-primary mr-2']) {{__('Identity check in progress.')}}
            @endif
        @endif
    </div>
    @if((!Auth::user()->verification || (Auth::user()->verification && Auth::user()->verification->status !== 'verified' && Auth::user()->verification->status !== 'pending')) )
        <h5 class="mt-5 mb-3">{{__("Complete your verification")}}</h5>
        <p class="mb-1 mt-2">{{__("Please attach clear photos of your ID card back and front side.")}}</p>
        <div class="dropzone-previews dropzone w-100 ppl-0 pr-0 pt-1 pb-1 border rounded"></div>
        <small class="form-text text-muted mb-2">{{__("Allowed file types")}}: {{str_replace(',',', ',AttachmentHelper::filterExtensions('manualPayments'))}}. {{__("Max size")}}: 4 {{__("MB")}}.</small>
        <div class="d-flex flex-row-reverse">
            <button class="btn btn-primary mt-2">{{__("Submit")}}</button>
        </div>
    @endif
    @if(Auth::user()->email_verified_at && Auth::user()->birthdate && (Auth::user()->verification && Auth::user()->verification->status == 'verified'))
        <p class="mt-3">{{__("Your info looks good, you're all set to post new content!")}}</p>
        @endif
</form>
@include('elements.uploaded-file-preview-template')

