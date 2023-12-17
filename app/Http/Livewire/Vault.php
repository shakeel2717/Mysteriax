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

    public function SelectedAllMedia(){
        $this->selectedImages = $this->files->pluck('id')->map(function ($id) {
            return (string) $id;
        })->toArray();
    }

    public function upload()
    {
        $this->validate([
            'attachment' => 'required|file|mimes:png,jpg,mp4|max:25600',
        ]);

        // attachments are multiple now, so we need to loop through them
            $path = $this->attachment->store('uploads/vault/' . auth()->user()->username);
            // get this file extension
            $extension = $this->attachment->getClientOriginalExtension();
            if ($extension == 'mp4') {
                $type = 'video';
            } else {
                $type = 'image';
            }

            // Saving this file in the database
            Gallery::create([
                'user_id' => auth()->user()->id,
                'title' => $this->attachment->getClientOriginalName(),
                'type' => $type,
                'image' => $path,
            ]);
        $this->attachment = "";

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
