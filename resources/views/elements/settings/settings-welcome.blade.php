<form method="POST" action="{{ route('my.settings.welcome.save') }}" enctype="multipart/form-data">
    @csrf

    @livewire('welcome-message')

    <button class="btn btn-primary btn-block rounded mr-0" type="submit">{{ __('Save') }}</button>

</form>
