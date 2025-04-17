<?php

namespace Botble\Note\Providers;

use Botble\Base\Forms\FormAbstract;
use Botble\Base\Forms\FormTab;
use Botble\Base\Models\BaseModel;
use Botble\Base\Supports\ServiceProvider;
use Botble\Blog\Models\Post;
use Botble\Note\Facades\Note as NoteFacade;
use Botble\Note\Models\Note;
use Illuminate\Database\Eloquent\Model;

class HookServiceProvider extends ServiceProvider
{
    public function boot(): void
    {
        if (is_plugin_active('blog')) {
            NoteFacade::registerModule(Post::class);
        }

        FormAbstract::extend(function (FormAbstract $form) {
            $model = $form->getModel();

            if (
                ! $model instanceof BaseModel
                || ! $model->exists
                || ! $this->isSupported($model)
            ) {
                return;
            }

            $notes = Note::query()
                ->where([
                    'reference_id' => $model->getKey(),
                    'reference_type' => $model::class,
                ])
                ->get();

            $form->addTab(
                FormTab::make()
                    ->id('notes')
                    ->label(trans('core/base::tabs.record_note'))
                    ->content(view('plugins/note::content', compact('notes')))
            );
        }, 998);
    }

    protected function isSupported(?Model $model): bool
    {
        if (! $model) {
            return false;
        }

        return in_array($model::class, config('plugins.note.general.supported', []));
    }
}
