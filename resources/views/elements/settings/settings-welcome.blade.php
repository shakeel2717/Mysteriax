<form method="POST" action="{{ route('my.settings.welcome.save') }}" enctype="multipart/form-data">
    @csrf

    <div class="form-group">
        <label for="username">{{ __('Welcome Message') }}</label>
        <textarea name="message" id="message" cols="30" rows="10" class="form-control">{{ auth()->user()->welcome_message }}</textarea>
        @if ($errors->has('message'))
            <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('message') }}</strong>
            </span>
        @endif
    </div>
    <div class="form-group">
        <label for="username">{{ __('Upload Attachment') }}</label>
        <input type="file" name="attachment" id="attachment" class="form-control-file">
        @if ($errors->has('attachment'))
            <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('attachment') }}</strong>
            </span>
        @endif
    </div>
    <div class="form-group">
        <label for="username">{{ __('Message Price') }}</label>
        <input type="number" name="price" id="price" class="form-control" value="{{ auth()->user()->welcome_message_price }}">
        @if ($errors->has('price'))
            <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('price') }}</strong>
            </span>
        @endif
    </div>

    <button class="btn btn-primary btn-block rounded mr-0" type="submit">{{ __('Save Welcome') }}</button>

</form>
