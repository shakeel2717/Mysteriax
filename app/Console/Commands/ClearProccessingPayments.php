<?php

namespace App\Console\Commands;

use App\Payment;
use Carbon\Carbon;
use Illuminate\Console\Command;

class ClearProccessingPayments extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'clear:payments';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Clear Transactions thats under process';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        info("Command Run for Processing Pending Payment ");
        // getting all pending transactions that's 5 days old
        $payments = Payment::where('status', false)->get();
        foreach ($payments as $payment) {
            // checking if this payment is 5 days older
            $createdAt = Carbon::parse($payment->created_at);
            $currentDateTime = Carbon::now();

            $daysDifference = $createdAt->diffInHours($currentDateTime);

            if ($daysDifference >= $payment->user->processing_hours) {
                $payment->status = true;
                $payment->save();
            }
        }
        return 0;
    }
}
