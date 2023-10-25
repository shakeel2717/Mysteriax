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

    public function mount()
    {
        $this->startDate = Carbon::now()->subYear(10);
        $this->endDate = Carbon::now();
        $this->fetchReport();
    }

    public function updatedDateRange()
    {
        switch ($this->dateRange) {
            case 'last7days':
                $this->startDate = Carbon::now()->subDays(7);
                $this->endDate = Carbon::now();
                break;
            case 'last30days':
                $this->startDate = Carbon::now()->subMonth();
                $this->endDate = Carbon::now();
                break;
            case 'last90days':
                $this->startDate = Carbon::now()->subDays(90);
                $this->endDate = Carbon::now();
                break;

            case 'lastyear':
                $this->startDate = Carbon::now()->subYear();
                $this->endDate = Carbon::now();
                break;

            case 'lastyear':
                $this->startDate = Carbon::now()->subYear();
                $this->endDate = Carbon::now();
                break;

            default:
                $this->startDate = Carbon::now()->subYear(10);
                $this->endDate = Carbon::now();
                break;
        }
        $this->fetchReport();
    }


    public function fetchReport()
    {
        // Get all transactions from the Transaction model and group them by year and month
        $transactions = Transaction::where('recipient_user_id', auth()->user()->id)
            ->whereBetween('created_at', [$this->startDate, $this->endDate])
            ->orderBy('created_at', 'desc')
            ->get()
            ->groupBy(function ($item) {
                return $item->created_at->format('Y-M');
            });
        // dd($transactions);

        // Loop through the 12 months of the year and populate the earnings array
        $this->months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];

        $currentYear = date('Y'); // Get the current year
        $this->monthlyEarnings = []; // Reset the array

        foreach ($this->months as $month) {

            $this->monthlyEarnings[] = $transactions->has($currentYear . '-' . $month) ? $transactions[$currentYear . '-' . $month]->sum('amount') : 0;
        }

        $this->months = ['Jan ' . date('Y'), 'Feb ' . date('Y'), 'Mar ' . date('Y'), 'Apr ' . date('Y'), 'May ' . date('Y'), 'Jun ' . date('Y'), 'Jul ' . date('Y'), 'Aug ' . date('Y'), 'Sep ' . date('Y'), 'Oct ' . date('Y'), 'Nov ' . date('Y'), 'Dec ' . date('Y')];

        // $this->months and $this->monthlyEarnings convert these both to json and pass them to the browser event
        $this->dispatchBrowserEvent('earnings-updated', ['months' => json_encode($this->months), 'monthlyEarnings' => json_encode($this->monthlyEarnings)]);

        // $this->dispatchBrowserEvent('name-updated', ['newName' => 5]);
    }


    public function render()
    {
        return view('livewire.earning-type');
    }
}
