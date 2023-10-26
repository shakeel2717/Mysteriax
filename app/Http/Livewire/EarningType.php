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
        $transactions = Transaction::where('recipient_user_id', auth()->user()->id)
            // ->whereBetween('created_at', [$this->startDate, $this->endDate])
            ->orderBy('created_at', 'desc')
            ->get();
        $this->startDate = Carbon::parse($this->customStartDate);
        $this->endDate = Carbon::parse($this->customEndDate);

        // this report is custom, so show daily report from start to end date
        $currentDate = $this->startDate;
        while ($currentDate <= $this->endDate) {
            $startOfDay = $currentDate->copy()->startOfMonth();
            $endOfDay = $currentDate->copy()->endOfMonth();
            $this->months[] = $startOfDay->format('Y-m-d');
            $this->monthlyEarnings[] = $transactions->filter(function ($item) use ($startOfDay, $endOfDay) {
                return $item->created_at >= $startOfDay && $item->created_at <= $endOfDay;
            })->sum('amount');
            $currentDate->addMonth();
        }

        $this->dispatchBrowserEvent('earnings-updated', ['months' => json_encode($this->months), 'monthlyEarnings' => json_encode($this->monthlyEarnings)]);
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

        if ($this->dateRange == 'all') {
            $this->startDate = Carbon::now()->subDays(2700);
            $this->endDate = Carbon::now();
            $this->customShowBox = false;
            $currentDate = Carbon::now()->subDays(2700);
            while ($currentDate <= Carbon::now()->now()) {
                $startOfYear = $currentDate->copy()->startOfYear();
                $endOfYear = $currentDate->copy()->endOfYear();
                $this->months[] = $startOfYear->format('Y-m-d');
                $this->monthlyEarnings[] = $transactions->filter(function ($item) use ($startOfYear, $endOfYear) {
                    return $item->created_at >= $startOfYear && $item->created_at <= $endOfYear;
                })->sum('amount');
                $currentDate->addYear();
            }
        } elseif ($this->dateRange == 'daily') {
            $this->startDate = Carbon::now()->subDays(1);
            $this->endDate = Carbon::now();
            $this->customShowBox = false;
            // this report is daily, so show hourly report for past 24 hours
            $currentDate = Carbon::now()->subDays(1);
            while ($currentDate <= Carbon::now()->now()) {
                $startOfHour = $currentDate->copy()->startOfHour();
                $endOfHour = $currentDate->copy()->endOfHour();
                $this->months[] = $startOfHour->format('Y-m-d H:i:s');
                $this->monthlyEarnings[] = $transactions->filter(function ($item) use ($startOfHour, $endOfHour) {
                    return $item->created_at >= $startOfHour && $item->created_at <= $endOfHour;
                })->sum('amount');
                $currentDate->addHour();
            }
        } elseif ($this->dateRange == '7days') {
            $this->startDate = Carbon::now()->subDays(7);
            $this->endDate = Carbon::now();
            $this->customShowBox = false;
            // this report is weekly, so show daily report for past 7 days
            $currentDate = Carbon::now()->subDays(7);
            while ($currentDate <= Carbon::now()->now()) {
                $startOfDay = $currentDate->copy()->startOfDay();
                $endOfDay = $currentDate->copy()->endOfDay();
                $this->months[] = $startOfDay->format('Y-m-d');
                $this->monthlyEarnings[] = $transactions->filter(function ($item) use ($startOfDay, $endOfDay) {
                    return $item->created_at >= $startOfDay && $item->created_at <= $endOfDay;
                })->sum('amount');
                $currentDate->addDay();
            }
        } elseif ($this->dateRange == '30days') {
            $this->startDate = Carbon::now()->subDays(30);
            $this->endDate = Carbon::now();
            $this->customShowBox = false;
            // this report is monthly, so show daily report for past 30 days
            $currentDate = Carbon::now()->subDays(30);
            while ($currentDate <= Carbon::now()->now()) {
                $startOfDay = $currentDate->copy()->startOfDay();
                $endOfDay = $currentDate->copy()->endOfDay();
                $this->months[] = $startOfDay->format('Y-m-d');
                $this->monthlyEarnings[] = $transactions->filter(function ($item) use ($startOfDay, $endOfDay) {
                    return $item->created_at >= $startOfDay && $item->created_at <= $endOfDay;
                })->sum('amount');
                $currentDate->addDay();
            }
        } elseif ($this->dateRange == '90days') {
            $this->startDate = Carbon::now()->subDays(90);
            $this->endDate = Carbon::now();
            $this->customShowBox = false;
            // this report is 3 months, so show daily report for past 30 days
            $currentDate = Carbon::now()->subDays(90);
            while ($currentDate <= Carbon::now()->now()) {
                $startOfDay = $currentDate->copy()->startOfDay();
                $endOfDay = $currentDate->copy()->endOfDay();
                $this->months[] = $startOfDay->format('Y-m-d');
                $this->monthlyEarnings[] = $transactions->filter(function ($item) use ($startOfDay, $endOfDay) {
                    return $item->created_at >= $startOfDay && $item->created_at <= $endOfDay;
                })->sum('amount');
                $currentDate->addDay();
            }
        } elseif ($this->dateRange == 'custom') {
            $this->customShowBox = true;
        }

        // Dispatch the browser event
        $this->dispatchBrowserEvent('earnings-updated', ['months' => json_encode($this->months), 'monthlyEarnings' => json_encode($this->monthlyEarnings)]);
    }






    public function render()
    {
        return view('livewire.earning-type');
    }
}
