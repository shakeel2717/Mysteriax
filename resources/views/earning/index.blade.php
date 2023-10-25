@extends('layouts.user-no-nav')

@section('page_title', __('Bookmarks'))

@section('styles')
    @livewireStyles()
@stop

@section('scripts')
    @livewireScripts()
@endsection

@section('content')
    @livewire('earning-type')
@stop
