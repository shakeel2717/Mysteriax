<?php

namespace App\Http\Livewire;

use App\Gallery;
use Livewire\Component;
use Livewire\WithPagination;

class VaultAttach extends Component
{
    use WithPagination;

    public function render()
    {
        return view('livewire.vault-attach',[
            'files' => Gallery::where('user_id', auth()->user()->id)->paginate(9),
        ]);
    }
}
