<div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
            <div class="row">
                @foreach ($files as $file)
                    <div class="col-md-4 mb-3">
                        <div class="card border-0 text-center">
                            <div class="card-body p-0">
                                <div class="image-container" style="position: relative">
                                    @if ($file->type == 'image')
                                        <img src="{{ asset('storage/' . $file->image) }}"
                                            class="fixed-image img-thumbnail">
                                    @else
                                        <img src="{{ asset('img/video.png') }}" class="fixed-image img-thumbnail">
                                    @endif
                                    <div class="button-sender w-100" style="position: absolute; bottom:0;">
                                        <button class="btn btn-primary btn-sm shadow"
                                            onclick="sendImageBlob('{{ asset('storage/' . $file->image) }}','{{ $file->image }}')"
                                            style="">Send</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
            <div class="row">
                <div class="col-12">
                    {{ $files->links() }}
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>
        </div>
    </div>
</div>