<?php

namespace App\Http\Livewire;

use App\Gallery;
use Livewire\Component;
use Livewire\WithFileUploads;

class Vault extends Component
{
    use WithFileUploads;
    public $attachment;
    public $files;
    public $selectedImages = [];


    public function toggleSelection($imageId)
    {
        if (in_array($imageId, $this->selectedImages)) {
            $this->selectedImages = array_diff($this->selectedImages, [$imageId]);
        } else {
            $this->selectedImages[] = $imageId;
        }
    }

    public function deleteSelectedImages()
    {
        Gallery::whereIn('id', $this->selectedImages)->delete();

        $this->selectedImages = [];
        $this->mount();
    }

    public function clearSelectedImages()
    {
        $this->selectedImages = [];
    }

    public function upload()
    {
        $this->validate([
            'attachment' => 'required|image|max:10024',
        ]);

        $path = $this->attachment->store('uploads/vault/' . auth()->user()->username);
        // saving this file in database
        $gallery = Gallery::create([
            'user_id' => auth()->user()->id,
            'title' => $this->attachment->getClientOriginalName(),
            'image' => $path,
        ]);

        $this->attachment = null;

        $this->mount();

        session()->flash('success', 'File uploaded successfully');
    }

    public function mount()
    {
        $this->files = Gallery::where('user_id', auth()->user()->id)->get();
    }


    public function render()
    {
        return view('livewire.vault');
    }
}
