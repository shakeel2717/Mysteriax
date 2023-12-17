<div class="row">
    <div class="col-md-12">
        <div class="px-4 mt-4">
            <form wire:submit.prevent="upload" enctype="multipart/form-data">
                @csrf
                {{-- hide this session sucess alert after 4 second --}}
                @if (session('success'))
                    <div class="alert alert-success" id="autoHideAfter3Seconds">{{ session('success') }}</div>
                    <script>
                        setTimeout(function() {
                            $('#autoHideAfter3Seconds').hide();
                        }, 2500);
                    </script>
                @endif
                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif
                <div class="form-group">
                    <label for="attachment">Upload Media</label>
                    <input wire:model="attachment" type="file" class="form-control-file">
                </div>
                @if ($attachment)
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary btn-sm">Upload Media</button>
                        <div class="spinner-border" wire:loading></div>
                    </div>
                @endif
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
            <div class="tab-content">
                <div id="home" class="container tab-pane active"><br>
                    <div class="row">
                        @if (count($selectedImages) > 0)
                            <button class="btn btn-primary m-2" wire:click="SelectedAllMedia">Select All</button>
                            <button class="btn btn-danger m-2" wire:click="deleteSelectedImages">Delete
                                Selected</button>
                            @if (count($selectedImages) > 1)
                                <button class="btn btn-primary m-2" wire:click="clearSelectedImages">Clear
                                    Selection</button>
                            @endif
                        @endif
                    </div>
                    <hr>

                    <div class="row">
                        @foreach ($files as $file)
                            <div class="col-md-3 mb-3">
                                <div class="card border-0 text-center">
                                    <div class="card-body p-0">
                                        <div class="image-container">
                                            @if ($file->type == 'image')
                                                <img src="{{ asset('storage/' . $file->image) }}"
                                                    class="fixed-image img-thumbnail {{ in_array($file->id, $selectedImages) ? 'border border-primary bg-primary' : '' }}"
                                                    wire:click="toggleSelection({{ $file->id }})">
                                                @if (in_array($file->id, $selectedImages))
                                                    <div class="image-overlay">
                                                        <i class="fa fa-check-circle"></i>
                                                    </div>
                                                @endif
                                            @else
                                                <img src="{{ asset('img/video.png') }}"
                                                    class="fixed-image img-thumbnail {{ in_array($file->id, $selectedImages) ? 'border border-primary bg-primary' : '' }}"
                                                    wire:click="toggleSelection({{ $file->id }})">
                                            @endif
                                            <button class="btn btn-primary btn-sm shadow" style="margin-top: -100px;"
                                                data-toggle="modal"
                                                data-target="#exampleModal{{ $file->id }}">View</button>
                                            {{-- Bootstrap Model --}}
                                            <div class="modal fade" id="exampleModal{{ $file->id }}" tabindex="-1"
                                                aria-labelledby="exampleModal{{ $file->id }}Label"
                                                aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-body p-0">
                                                            @if ($file->type == 'image')
                                                                <img src="{{ asset('storage/' . $file->image) }}"
                                                                    class="img-fluid">
                                                            @else
                                                                <video width="100%" height="240" controls>
                                                                    <source
                                                                        src="{{ asset('storage/' . $file->image) }}"
                                                                        type="video/mp4">
                                                                    Your browser does not support the video tag.
                                                                </video>
                                                            @endif
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                <div id="menu1" class="container tab-pane fade">
                    <div class="row">
                        @if (count($selectedImages) > 0)
                            <button class="btn btn-primary m-2" wire:click="SelectedAllMedia">Select All</button>
                            <button class="btn btn-danger m-2" wire:click="deleteSelectedImages">Delete
                                Selected</button>
                            @if (count($selectedImages) > 1)
                                <button class="btn btn-primary m-2" wire:click="clearSelectedImages">Clear
                                    Selection</button>
                            @endif
                        @endif
                    </div>
                    <hr>

                    <div class="row">
                        @foreach ($files->where('type','video') as $file)
                            <div class="col-md-3 mb-3">
                                <div class="card border-0 text-center">
                                    <div class="card-body p-0">
                                        <div class="image-container">
                                            @if ($file->type == 'image')
                                                <img src="{{ asset('storage/' . $file->image) }}"
                                                    class="fixed-image img-thumbnail {{ in_array($file->id, $selectedImages) ? 'border border-primary bg-primary' : '' }}"
                                                    wire:click="toggleSelection({{ $file->id }})">
                                                @if (in_array($file->id, $selectedImages))
                                                    <div class="image-overlay">
                                                        <i class="fa fa-check-circle"></i>
                                                    </div>
                                                @endif
                                            @else
                                                <img src="{{ asset('img/video.png') }}"
                                                    class="fixed-image img-thumbnail {{ in_array($file->id, $selectedImages) ? 'border border-primary bg-primary' : '' }}"
                                                    wire:click="toggleSelection({{ $file->id }})">
                                            @endif
                                            <button class="btn btn-primary btn-sm shadow" style="margin-top: -100px;"
                                                data-toggle="modal"
                                                data-target="#exampleModal{{ $file->id }}">View</button>
                                            {{-- Bootstrap Model --}}
                                            <div class="modal fade" id="exampleModal{{ $file->id }}" tabindex="-1"
                                                aria-labelledby="exampleModal{{ $file->id }}Label"
                                                aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-body p-0">
                                                            @if ($file->type == 'image')
                                                                <img src="{{ asset('storage/' . $file->image) }}"
                                                                    class="img-fluid">
                                                            @else
                                                                <video width="100%" height="240" controls>
                                                                    <source
                                                                        src="{{ asset('storage/' . $file->image) }}"
                                                                        type="video/mp4">
                                                                    Your browser does not support the video tag.
                                                                </video>
                                                            @endif
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                <div id="menu2" class="container tab-pane fade">
                    <div class="row">
                        @if (count($selectedImages) > 0)
                            <button class="btn btn-primary m-2" wire:click="SelectedAllMedia">Select All</button>
                            <button class="btn btn-danger m-2" wire:click="deleteSelectedImages">Delete
                                Selected</button>
                            @if (count($selectedImages) > 1)
                                <button class="btn btn-primary m-2" wire:click="clearSelectedImages">Clear
                                    Selection</button>
                            @endif
                        @endif
                    </div>
                    <hr>

                    <div class="row">
                        @foreach ($files->where('type','image') as $file)
                            <div class="col-md-3 mb-3">
                                <div class="card border-0 text-center">
                                    <div class="card-body p-0">
                                        <div class="image-container">
                                            @if ($file->type == 'image')
                                                <img src="{{ asset('storage/' . $file->image) }}"
                                                    class="fixed-image img-thumbnail {{ in_array($file->id, $selectedImages) ? 'border border-primary bg-primary' : '' }}"
                                                    wire:click="toggleSelection({{ $file->id }})">
                                                @if (in_array($file->id, $selectedImages))
                                                    <div class="image-overlay">
                                                        <i class="fa fa-check-circle"></i>
                                                    </div>
                                                @endif
                                            @else
                                                <img src="{{ asset('img/video.png') }}"
                                                    class="fixed-image img-thumbnail {{ in_array($file->id, $selectedImages) ? 'border border-primary bg-primary' : '' }}"
                                                    wire:click="toggleSelection({{ $file->id }})">
                                            @endif
                                            <button class="btn btn-primary btn-sm shadow" style="margin-top: -100px;"
                                                data-toggle="modal"
                                                data-target="#exampleModal{{ $file->id }}">View</button>
                                            {{-- Bootstrap Model --}}
                                            <div class="modal fade" id="exampleModal{{ $file->id }}" tabindex="-1"
                                                aria-labelledby="exampleModal{{ $file->id }}Label"
                                                aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-body p-0">
                                                            @if ($file->type == 'image')
                                                                <img src="{{ asset('storage/' . $file->image) }}"
                                                                    class="img-fluid">
                                                            @else
                                                                <video width="100%" height="240" controls>
                                                                    <source
                                                                        src="{{ asset('storage/' . $file->image) }}"
                                                                        type="video/mp4">
                                                                    Your browser does not support the video tag.
                                                                </video>
                                                            @endif
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
