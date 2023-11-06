@extends('layouts.user-no-nav')

@section('page_title', __('Bookmarks'))

@section('styles')
    <style>
        .fixed-image {
            width: 200px;
            height: 200px;
            object-fit: cover;
            cursor: pointer;
        }
    </style>
    @livewireStyles()
@stop

@section('scripts')
    @livewireScripts()
@endsection

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="px-4 mt-4">
                <h3>Vault</h3>
                <p class="text-muted">View your Content</p>
            </div>
            <hr>
        </div>
        @livewire('vault')
    </div>
@stop
