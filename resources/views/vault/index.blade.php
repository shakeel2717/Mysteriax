@extends('layouts.user-no-nav')

@section('page_title', __('Bookmarks'))

@section('styles')

@stop

@section('scripts')

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
        <div class="col-md-12">
            <div class="px-4 mt-4">
                <form action="{{ route('my.vault.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group">
                        <label for="attachment">Upload Media</label>
                        <input type="file" class="form-control-file" id="attachment" name="attachment">
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary btn-sm">Upload Media</button>
                    </div>
                </form>
            </div>
        </div>
        <div class="col-md-12">
            <div class="px-4 mt-4">
                <ul class="nav nav-pills" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="pill" href="#home">ALL</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="pill" href="#menu1">VIDEOS</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="pill" href="#menu2">PHOTOS</a>
                    </li>
                </ul>

                <!-- Tab panes -->
                {{-- <div class="tab-content">
                    <div id="home" class="container tab-pane active"><br>
                        <div class="row">
                            @foreach (auth()->user()->getMedia('images') as $image)
                                <img src="{{ $image->getUrl() }}" alt="Image">
                            @endforeach

                            @foreach (auth()->user()->getMedia('videos') as $video)
                                <video controls>
                                    <source src="{{ $video->getUrl() }}" type="video/mp4">
                                    Your browser does not support the video tag.
                                </video>
                            @endforeach
                        </div>
                    </div>
                </div> --}}
            </div>
        </div>
    </div>
@stop
