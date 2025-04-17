<?php

namespace Botble\Note\Providers;

use Botble\Base\Supports\ServiceProvider;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Botble\Note\Facades\Note as NoteFacade;
use Botble\Note\Models\Note;
use Botble\Note\Repositories\Eloquent\NoteRepository;
use Botble\Note\Repositories\Interfaces\NoteInterface;
use Illuminate\Foundation\AliasLoader;

/**
 * @since 07/02/2016 09:50 AM
 */
class NoteServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register(): void
    {
        $this->app->bind(NoteInterface::class, function () {
            return new NoteRepository(new Note());
        });

        AliasLoader::getInstance()->alias('Note', NoteFacade::class);
    }

    public function boot(): void
    {
        $this
            ->setNamespace('plugins/note')
            ->loadHelpers()
            ->loadAndPublishViews()
            ->loadAndPublishConfigurations(['general'])
            ->loadMigrations();

        $this->app->register(EventServiceProvider::class);

        $this->app->booted(fn () => $this->app->register(HookServiceProvider::class));
    }
}
