<?php

namespace App\Http\Livewire;

use App\Model\Transaction;
use Carbon\Carbon;
use Livewire\Component;

class EarningType extends Component
{
    public $monthlyEarnings = [];
    public $months = [];
    public $dateRange = 'all';
    public $startDate;
    public $endDate;
    public $customShowBox = false;
    public $customStartDate;
    public $customEndDate;

    public function mount()
    {
        $this->startDate = Carbon::now()->subYear(10);
        $this->endDate = Carbon::now();
        $this->updatedDateRange();
    }

    public function searchCustom()
    {
        $this->startDate = Carbon::parse($this->customStartDate);
        $this->endDate = Carbon::parse($this->customEndDate);
        // dd($this->startDate, $this->endDate);
        $this->fetchReport();
    }

    public function updatedDateRange()
    {
        $this->fetchReport();
    }


    public function fetchReport()
    {
        $transactions = Transaction::where('recipient_user_id', auth()->user()->id)
            // ->whereBetween('created_at', [$this->startDate, $this->endDate])
            ->orderBy('created_at', 'desc')
            ->get();

        $this->months = [];
        $this->monthlyEarnings = [];

        if ($this->dateRange == '1day') {
            $currentDate = Carbon::now()->subDays(7);
            while ($currentDate <= Carbon::now()->today()) {
                $this->months[] = $currentDate->format('Y-m-d');
                $this->monthlyEarnings[] = $transactions->filter(function ($item) use ($currentDate) {
                    return $item->created_at->format('Y-m-d') == $currentDate->format('Y-m-d');
                })->sum('amount');
                $currentDate->addDay(); // Move to the next day
            }
        } elseif ($this->dateRange == '7days') {
            $currentDate = Carbon::now()->subDays(49);
            while ($currentDate <= Carbon::now()->today()) {
                $startOfWeek = $currentDate->copy()->startOfWeek();
                $endOfWeek = $currentDate->copy()->endOfWeek();
                $this->months[] = $startOfWeek->format('Y-m-d');
                $this->monthlyEarnings[] = $transactions->filter(function ($item) use ($startOfWeek, $endOfWeek) {
                    return $item->created_at >= $startOfWeek && $item->created_at <= $endOfWeek;
                })->sum('amount');
                $currentDate->addWeek(); // Move to the next week
            }
        } elseif ($this->dateRange == '1month') {
            $currentDate = Carbon::now()->subDays(217);
            while ($currentDate <= Carbon::now()->today()) {
                $startOfWeek = $currentDate->copy()->startOfMonth();
                $endOfWeek = $currentDate->copy()->endOfMonth();
                $this->months[] = $startOfWeek->format('Y-m-d');
                $this->monthlyEarnings[] = $transactions->filter(function ($item) use ($startOfWeek, $endOfWeek) {
                    return $item->created_at >= $startOfWeek && $item->created_at <= $endOfWeek;
                })->sum('amount');
                $currentDate->addMonth(); // Move to the next week
            }
        } elseif ($this->dateRange == '12months') {
            $currentDate = Carbon::now()->subDays(2700);
            while ($currentDate <= Carbon::now()->today()) {
                $startOfWeek = $currentDate->copy()->startOfYear();
                $endOfWeek = $currentDate->copy()->endOfYear();
                $this->months[] = $startOfWeek->format('Y-m-d');
                $this->monthlyEarnings[] = $transactions->filter(function ($item) use ($startOfWeek, $endOfWeek) {
                    return $item->created_at >= $startOfWeek && $item->created_at <= $endOfWeek;
                })->sum('amount');
                $currentDate->addYear(); // Move to the next week
            }
        } elseif ($this->dateRange == 'all') {
            $currentDate = Carbon::now()->subDays(2700);
            while ($currentDate <= Carbon::now()->today()) {
                $startOfWeek = $currentDate->copy()->startOfYear();
                $endOfWeek = $currentDate->copy()->endOfYear();
                $this->months[] = $startOfWeek->format('Y-m-d');
                $this->monthlyEarnings[] = $transactions->filter(function ($item) use ($startOfWeek, $endOfWeek) {
                    return $item->created_at >= $startOfWeek && $item->created_at <= $endOfWeek;
                })->sum('amount');
                $currentDate->addYear(); // Move to the next week
            }
        }

        // Dispatch the browser event
        $this->dispatchBrowserEvent('earnings-updated', ['months' => json_encode($this->months), 'monthlyEarnings' => json_encode($this->monthlyEarnings)]);
        info('Dispatched');
    }






    public function render()
    {
        return view('livewire.earning-type');
    }
}
