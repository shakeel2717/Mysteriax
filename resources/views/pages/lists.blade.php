@extends('layouts.user-no-nav')
@section('page_title', __('Your lists'))

@section('styles')
    {!! Minify::stylesheet(['/css/pages/lists.css'])->withFullUrl() !!}
@stop

@section('scripts')
    {!! Minify::javascript(['/js/pages/lists.js'])->withFullUrl() !!}
@stop

@section('content')
    <div class="row">
        <div class="col-12 col-md-4 col-lg-3 mb-3 pr-0 settings-menu">
            <div class="settings-menu-wrapper">
                <div class="d-none d-md-block">
                    @include('elements.settings.settings-header', ['type' => 'generic'])
                </div>
                <hr class="mb-0">
                <div class="d-none d-md-block">
                    @include('elements.settings.settings-menu')
                </div>
            </div>
        </div>
        <div
            class="col-md-8 col-lg-9 mb-5 mb-lg-0 min-vh-100 border-left border-right settings-content mt-1 mt-md-0 pl-md-0 pr-md-0">
            <div class="row">
                <div class="min-vh-100 border-right col-12 pr-md-0">
                    <div class="pt-4 d-flex justify-content-between align-items-center px-3 pb-3 border-bottom">
                        <div>
                            <h5
                                class="text-truncate text-bold mb-0 {{ Cookie::get('app_theme') == null ? (getSetting('site.default_user_theme') == 'dark' ? '' : 'text-dark-r') : (Cookie::get('app_theme') == 'dark' ? '' : 'text-dark-r') }}">
                                {{ __('Lists') }}</h5>
                        </div>
                        <button class="btn btn-outline-primary btn-sm px-3 mb-0" onclick="Lists.showListEditDialog()"
                            data-toggle="tooltip" data-placement="top" title="{{ __('Add list') }}">
                            @include('elements.icon', ['icon' => 'add'])
                        </button>
                    </div>
                    <div class="lists-wrapper mt-2">
                        @if (count($lists))
                            @foreach ($lists as $key => $list)
                                @include('elements.lists.list-box', [
                                    'list' => $list,
                                    'isLastItem' => count($lists) == $key + 1,
                                ])
                            @endforeach
                        @else
                            <p class="ml-4">{{ __('No lists available') }}</p>
                        @endif
                    </div>
                </div>
            </div>
            @include('elements.lists.list-update-dialog', ['mode' => 'create'])
        </div>
    </div>
@stop
