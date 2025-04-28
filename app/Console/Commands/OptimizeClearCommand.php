<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

class OptimizeClearCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'app:optimizer';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Artisan commands: optimize, config:clear, route:clear, view:clear, cache:clear';

    /**
     * Execute the console command.
     */
    public function handle(): void
    {
        $this->call('config:clear');
        $this->call('route:clear');
        $this->call('view:clear');
        $this->call('cache:clear');
        $this->call('optimize:clear');
        $this->call('optimize');
        $this->info('All caches cleared successfully.');
    }
}
