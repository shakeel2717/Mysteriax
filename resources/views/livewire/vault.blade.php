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
                <div class="form-group">
                    <label for="attachments">Upload Media</label>
                    <input wire:model="attachments" type="file" class="form-control-file" multiple>
                </div>
                @if ($attachments)
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
                            <button class="btn btn-danger m-2" wire:click="deleteSelectedImages">Delete
                                Selected</button>
                            <button class="btn btn-primary m-2" wire:click="clearSelectedImages">Clear Selection</button>
                        @endif
                    </div>
                    <div class="row">
                        @foreach ($files as $file)
                            <div class="col-md-3 mb-3">
                                <div class="card border-0 text-center">
                                    <div class="card-body p-0">
                                        <div class="image-container">
                                            <img src="{{ asset('storage/' . $file->image) }}"
                                                class="fixed-image img-thumbnail {{ in_array($file->id, $selectedImages) ? 'border border-primary bg-primary' : '' }}"
                                                wire:click="toggleSelection({{ $file->id }})">
                                            @if (in_array($file->id, $selectedImages))
                                                <div class="image-overlay">
                                                    <i class="fa fa-check-circle"></i>
                                                </div>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                <div id="menu1" class="container tab-pane fade">
                    <h1>Images</h1>
                </div>
                <div id="menu2" class="container tab-pane fade">
                    <h1>Videos</h1>
                </div>
            </div>
        </div>
    </div>

</div>
