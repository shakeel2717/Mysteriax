<div class="row">
    <div class="col-md-12">
        <h4>Get 5% from the Creators you referral</h4>
        <p>Limitless revenue for you and your friends</p>
        <br>
        <div class="card card-body">
            <h5>Share this link to other creators to earn more money</h5>
            <div class="row">
                <div class="col-md-8">
                    <div class="input-group">
                        <input type="text" name="refer_link" value="{{ route('register',['refer' => auth()->user()->username]) }}" id="refer_link" class="form-control">
                        <button onclick="copyInputValue('refer_link')" class="btn btn-primary btn-smf">@include('elements.icon', [
                            'icon' => 'copy-outline',
                            'variant' => 'small',
                            'classes' => 'mr-2',
                        ])</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
