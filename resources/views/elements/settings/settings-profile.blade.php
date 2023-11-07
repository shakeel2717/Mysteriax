@if(!Auth::user()->email_verified_at) @include('elements.resend-verification-email-box') @endif

@if(getSetting('ai.open_ai_enabled'))
    @include('elements.suggest-description')
@endif
<hr>
<h4 class="text-muted">Update Profile</h4>
<hr>
<form method="POST" action="{{route('my.settings.profile.save',['type'=>'profile'])}}">
    @csrf
    @include('elements.dropzone-dummy-element')
    <div class="mb-4">
        <div class="">
            <div class="card profile-cover-bg">
                <img class="card-img-top centered-and-cropped" src="{{Auth::user()->cover}}">
                <div class="card-img-overlay d-flex justify-content-center align-items-center">
                    <div class="actions-holder d-none">

                        <div class="d-flex">
                        <span class="h-pill h-pill-accent pointer-cursor mr-1 upload-button" data-toggle="tooltip" data-placement="top" title="{{__('Upload cover image')}}">
                             @include('elements.icon',['icon'=>'image','variant'=>'medium'])
                        </span>
                            <span class="h-pill h-pill-accent pointer-cursor" onclick="ProfileSettings.removeUserAsset('cover')" data-toggle="tooltip" data-placement="top" title="{{__('Remove cover image')}}">
                            @include('elements.icon',['icon'=>'close','variant'=>'medium'])
                        </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="card avatar-holder">
                <img class="card-img-top" src="{{Auth::user()->avatar}}">
                <div class="card-img-overlay d-flex justify-content-center align-items-center">
                    <div class="actions-holder d-none">
                        <div class="d-flex">
                        <span class="h-pill h-pill-accent pointer-cursor mr-1 upload-button" data-toggle="tooltip" data-placement="top" title="{{__('Upload avatar')}}">
                            @include('elements.icon',['icon'=>'image','variant'=>'medium'])
                        </span>
                            <span class="h-pill h-pill-accent pointer-cursor" onclick="ProfileSettings.removeUserAsset('avatar')" data-toggle="tooltip" data-placement="top" title="{{__('Remove avatar')}}">
                             @include('elements.icon',['icon'=>'close','variant'=>'medium'])
                        </span>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    @if(session('success'))
        <div class="alert alert-success text-white font-weight-bold mt-2" role="alert">
            {{session('success')}}
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    @endif
    <div class="form-group">
        <label for="username">{{__('Username')}}</label>
        <input class="form-control {{ $errors->has('username') ? 'is-invalid' : '' }}" id="username" name="username" aria-describedby="emailHelp" value="{{Auth::user()->username}}">
        @if($errors->has('username'))
            <span class="invalid-feedback" role="alert">
                <strong>{{$errors->first('username')}}</strong>
            </span>
        @endif

        {{--   TODO: Maybe enable this when we'll add mentions & tags    --}}
        {{--        <div class="input-group">--}}
        {{--            <div class="input-group-prepend">--}}
        {{--                <span class="input-group-text" id="username-label">@</span>--}}
        {{--            </div>--}}
        {{--            <input class="form-control {{ $errors->has('username') ? 'is-invalid' : '' }}" id="username" name="username" aria-describedby="emailHelp" value="{{Auth::user()->username}}">--}}
        {{--            @if($errors->has('username'))--}}
        {{--                <span class="invalid-feedback" role="alert">--}}
        {{--                <strong>{{$errors->first('username')}}</strong>--}}
        {{--            </span>--}}
        {{--            @endif--}}
        {{--        </div>--}}

    </div>
    <div class="form-group">
        <label for="name">{{__('Full name')}}</label>
        <input class="form-control {{ $errors->has('name') ? 'is-invalid' : '' }}" id="name" name="name" aria-describedby="emailHelp" value="{{Auth::user()->name}}">
        @if($errors->has('name'))
            <span class="invalid-feedback" role="alert">
                <strong>{{$errors->first('name')}}</strong>
            </span>
        @endif
    </div>
    <div class="form-group">
        <div class="d-flex justify-content-between">
            <label for="bio">
                {{__('Bio')}}
            </label>
            <div>
                @if(getSetting('ai.open_ai_enabled'))
                    <a href="javascript:void(0)" onclick="{{"AiSuggestions.suggestDescriptionDialog();"}}" data-toggle="tooltip" data-placement="left" title="{{__('Use AI to generate your description.')}}">{{trans_choice("Suggestion",2)}}</a>
                @endif
            </div>
        </div>
        <textarea class="form-control {{ $errors->has('bio') ? 'is-invalid' : '' }}" id="bio" name="bio" rows="3" spellcheck="false">{{Auth::user()->bio}}</textarea>
        @if($errors->has('bio'))
            <span class="invalid-feedback" role="alert">
                <strong>{{$errors->first('bio')}}</strong>
            </span>
        @endif
    </div>
    <div class="form-group">
        <label for="birthdate">{{__('Birthdate')}}</label>
        <input type="date" class="form-control {{ $errors->has('location') ? 'is-invalid' : '' }}" id="birthdate" name="birthdate" aria-describedby="emailHelp"  value="{{Auth::user()->birthdate}}" max="{{$minBirthDate}}">
        @if($errors->has('birthdate'))
            <span class="invalid-feedback" role="alert">
                <strong>{{$errors->first('birthdate')}}</strong>
            </span>
        @endif
    </div>

    <div class="d-flex flex-row">
        <div class="{{getSetting('profiles.allow_gender_pronouns') ? 'w-50' : 'w-100'}} pr-2">
            <div class="form-group">
                <label for="gender">{{__('Gender')}}</label>
                <select class="form-control" id="gender" name="gender" >
                    <option value=""></option>
                    @foreach($genders as $gender)
                        <option value="{{$gender->id}}" {{Auth::user()->gender_id == $gender->id ? 'selected' : ''}}>{{__($gender->gender_name)}}</option>
                    @endforeach
                </select>
                @if($errors->has('gender'))
                    <span class="invalid-feedback" role="alert">
                <strong>{{$errors->first('gender')}}</strong>
            </span>
                @endif
            </div>
        </div>

        @if(getSetting('profiles.allow_gender_pronouns'))
            <div class="w-50 pl-2">
                <div class="form-group">
                    <label for="pronoun">{{__('Gender pronoun')}}</label>
                    <input class="form-control {{ $errors->has('location') ? 'is-invalid' : '' }}" id="pronoun" name="pronoun" aria-describedby="emailHelp"  value="{{Auth::user()->gender_pronoun}}">
                    @if($errors->has('pronoun'))
                        <span class="invalid-feedback" role="alert">
                        <strong>{{$errors->first('pronoun')}}</strong>
                    </span>
                    @endif
                </div>
            </div>
        @endif

    </div>

    <div class="form-group">
        <label for="location">{{__('Location')}}</label>
        <input class="form-control {{ $errors->has('location') ? 'is-invalid' : '' }}" id="location" name="location" aria-describedby="emailHelp"  value="{{Auth::user()->location}}">
        @if($errors->has('location'))
            <span class="invalid-feedback" role="alert">
                <strong>{{$errors->first('location')}}</strong>
            </span>
        @endif
    </div>

    <div class="form-group">
        <label for="website" value="{{Auth::user()->website}}">{{__('Website URL')}}</label>
        <input type="url" class="form-control {{ $errors->has('website') ? 'is-invalid' : '' }}" id="website" name="website" aria-describedby="emailHelp" value="{{Auth::user()->website}}">
        @if($errors->has('website'))
            <span class="invalid-feedback" role="alert">
                <strong>{{$errors->first('website')}}</strong>
            </span>
        @endif
    </div>
    <button class="btn btn-primary btn-block rounded mr-0" type="submit">{{__('Save')}}</button>
</form>
<hr>
<h4 class="text-muted">Change Password</h4>
<hr>
@if(!Auth::user()->email_verified_at) @include('elements.resend-verification-email-box') @endif

<form method="POST" action="{{route('my.settings.account.save')}}">
    @csrf

    <div class="form-group">
        <label for="username">{{__('Password')}}</label>
        <input class="form-control {{ $errors->has('password') ? 'is-invalid' : '' }}" id="username" name="password" type="password">
        @if($errors->has('password'))
            <span class="invalid-feedback" role="alert">
                <strong>{{$errors->first('password')}}</strong>
            </span>
        @endif
    </div>

    <div class="form-group">
        <label for="username">{{__('New password')}}</label>
        <input class="form-control {{ $errors->has('new_password') ? 'is-invalid' : '' }}" id="username" name="new_password" type="password">
        @if($errors->has('new_password'))
            <span class="invalid-feedback" role="alert">
                <strong>{{$errors->first('new_password')}}</strong>
            </span>
        @endif
    </div>

    <div class="form-group">
        <label for="username">{{__('Confirm password')}}</label>
        <input class="form-control {{ $errors->has('confirm_password') ? 'is-invalid' : '' }}" id="username" name="confirm_password" type="password">
        @if($errors->has('confirm_password'))
            <span class="invalid-feedback" role="alert">
                <strong>{{$errors->first('confirm_password')}}</strong>
            </span>
        @endif
    </div>
    <button class="btn btn-primary btn-block rounded mr-0" type="submit">{{__('Save')}}</button>

</form>

<hr>
<h4 class="text-muted">Update Rates</h4>
<hr>

<form method="POST" action="{{route('my.settings.rates.save')}}">
    @csrf
    <div class="form-group">
        <div class="custom-control custom-switch">
            <input type="checkbox" class="custom-control-input" id="paid-profile" name="paid-profile"
                    {{isset(Auth::user()->paid_profile) ? (Auth::user()->paid_profile == '1' ? 'checked' : '') : false}}>
            <label class="custom-control-label" for="paid-profile">{{__('Paid profile')}}</label>
        </div>
    </div>
    <div class="paid-profile-rates {{isset(Auth::user()->paid_profile) ? (Auth::user()->paid_profile == '1' ? '' : 'd-none') : ''}}">
        <div class="form-group">
            <label for="name">{{__('Your profile subscription price')}}</label>
            <input class="form-control {{ $errors->has('profile_access_price') ? 'is-invalid' : '' }}" id="profile_access_price" name="profile_access_price" aria-describedby="emailHelp" value="{{Auth::user()->profile_access_price}}">
            @if($errors->has('profile_access_price'))
                <span class="invalid-feedback" role="alert">
                <strong>{{__($errors->first('profile_access_price'))}}</strong>
            </span>
            @endif
        </div>
        <div class="form-group">
            <label for="name">{{__('3 months subscription price')}}</label>
            <input class="form-control {{ $errors->has('profile_access_price_3_months') ? 'is-invalid' : '' }}" id="profile_access_price" name="profile_access_price_3_months" aria-describedby="emailHelp" value="{{Auth::user()->profile_access_price_3_months}}">
            @if($errors->has('profile_access_price_3_months'))
                <span class="invalid-feedback" role="alert">
                    <strong>{{__($errors->first('profile_access_price_3_months'))}}</strong>
                </span>
            @endif
        </div>
        <div class="form-group">
            <label for="name">{{__('6 months subscription price')}}</label>
            <input class="form-control {{ $errors->has('profile_access_price_6_months') ? 'is-invalid' : '' }}" id="profile_access_price" name="profile_access_price_6_months" aria-describedby="emailHelp" value="{{Auth::user()->profile_access_price_6_months}}">
            @if($errors->has('profile_access_price_6_months'))
                <span class="invalid-feedback" role="alert">
                    <strong>{{__($errors->first('profile_access_price_6_months'))}}</strong>
                </span>
            @endif
        </div>
        <div class="form-group">
            <label for="name">{{__('12 months subscription price')}}</label>
            <input class="form-control {{ $errors->has('profile_access_price_12_months') ? 'is-invalid' : '' }}" id="profile_access_price_12_months" name="profile_access_price_12_months" aria-describedby="emailHelp" value="{{Auth::user()->profile_access_price_12_months}}">
            @if($errors->has('profile_access_price_12_months'))
                <span class="invalid-feedback" role="alert">
                    <strong>{{__($errors->first('profile_access_price_12_months'))}}</strong>
                </span>
            @endif
        </div>
        <div class="form-group">
            <label for="name">{{__('Is offer until')}}</label>
            <div class="input-group-prepend">
                <div class="input-group-prepend">
                    <div class="input-group-text">
                        <input type="checkbox" aria-label="Checkbox for following text input" name="is_offer" id="is_offer" {{Auth::user()->offer && Auth::user()->offer->expires_at ? 'checked' : ''}}>
                    </div>
                </div>
                <input type="date" class="form-control {{ $errors->has('profile_access_offer_date') ? 'is-invalid' : '' }}" id="profile_access_offer_date" name="profile_access_offer_date" aria-describedby="emailHelp" value="{{Auth::user()->offer && Auth::user()->offer->expires_at ? Auth::user()->offer->expires_at->format('Y-m-d') : ''}}">

            </div>
            <small class="form-text text-muted">
                {{__("In order to start a promotion, reduce your monthly prices and select a future promotion end date.")}}
            </small>
            @if($errors->has('profile_access_offer_date'))
                <span class="invalid-feedback" role="alert">
                    <strong>{{__($errors->first('profile_access_offer_date'))}}</strong>
                </span>
            @endif
        </div>
        <button class="btn btn-primary btn-block rounded mr-0" type="submit">{{__('Save')}}</button>
    </div>
</form>



