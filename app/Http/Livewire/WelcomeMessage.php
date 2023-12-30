<?php

namespace App\Http\Livewire;

use App\User;
use Livewire\Component;

class WelcomeMessage extends Component
{

    public function removeAttachment()
    {
        $user = User::find(auth()->id());
        $user->attachment = null;
        $user->save();
    }

    public function render()
    {
        return view('livewire.welcome-message');
    }
}
