<?php

namespace App\Console;

use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;

class Kernel extends ConsoleKernel
{
    /**
     * The Artisan commands provided by your application.
     *
     * @var array
     */
    protected $commands = [
        'App\Console\Commands\NpmInstall',
        'App\Console\Commands\CronClearDrafts',
        'App\Console\Commands\CronClearCache',
        'App\Console\Commands\CronEmailUpcomingRenewals',
        'App\Console\Commands\CronEmailExpiringSubs',
        'App\Console\Commands\CronRenewSubscriptions',
        'App\Console\Commands\CronProcessEndingStreams',
        'App\Console\Commands\CronProcessExpiringStreams',
    ];

    /**
     * Define the application's command schedule.
     *
     * @param  \Illuminate\Console\Scheduling\Schedule  $schedule
     * @return void
     */
    protected function schedule(Schedule $schedule)
    {
        // Deleting cached views & cache once in a while, so shared hosting file quota won't go crazy
        $schedule->command('cron:clear_cache_files')->monthly();
        $schedule->command('cron:clear_draft_files')->weekly();
        $schedule->command('cron:email_upcoming_renewals')->daily();
        $schedule->command('cron:email_expiring_subs')->daily();
        $schedule->command('cron:renew_subscriptions')->hourly();
        $schedule->command('cron:resetOffers')->daily();
        $schedule->command('cron:process_expiring_streams')->everyFiveMinutes();
        $schedule->command('cron:end_streams')->everyFiveMinutes();
        $schedule->command('generateSitemap')->daily();
        $schedule->command('clear:payments')->daily();
    }

    /**
     * Register the commands for the application.
     *
     * @return void
     */
    protected function commands()
    {
        // Loading commands
        $this->load(__DIR__.'/Commands');

        // Forcing app url rewrite & HTPPS (if needed) on CLI mode
        // In order to get the right urls in the emails generated by the crons
        $url = $this->app['url'];
        $url->forceRootUrl(config('app.url'));
        if(is_int(strpos(config('app.url'),'https'))){
            \URL::forceScheme('https');
        }

        require base_path('routes/console.php');
    }
}
