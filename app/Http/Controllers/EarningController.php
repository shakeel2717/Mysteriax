<?php

namespace App\Http\Controllers;

use App\Model\Transaction;
use Illuminate\Http\Request;

class EarningController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // Get all transactions from the Transaction model and group them by year and month
        $transactions = Transaction::where('recipient_user_id', auth()->user()->id)
            ->orderBy('created_at', 'desc')
            ->get()
            ->groupBy(function ($item) {
                return $item->created_at->format('Y-M');
            });

        // Create an array to store the earnings for each month
        $monthlyEarnings = [];

        // Loop through the 12 months of the year and populate the earnings array
        $months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];

        $currentYear = date('Y'); // Get the current year

        foreach ($months as $month) {

            $monthlyEarnings[] = $transactions->has($currentYear . '-' . $month) ? $transactions[$currentYear . '-' . $month]->sum('amount') : 0;
        }

        $months = ['Jan ' . date('Y'), 'Feb ' . date('Y'), 'Mar ' . date('Y'), 'Apr ' . date('Y'), 'May ' . date('Y'), 'Jun ' . date('Y'), 'Jul ' . date('Y'), 'Aug ' . date('Y'), 'Sep ' . date('Y'), 'Oct ' . date('Y'), 'Nov ' . date('Y'), 'Dec ' . date('Y')];

        return view('earning.index', compact('monthlyEarnings', 'months'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
