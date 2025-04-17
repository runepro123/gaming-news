<?php

namespace Botble\Note;

use Botble\Base\Contracts\BaseModel;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class Note
{
    public function registerModule(array|string $model): self
    {
        if (! is_array($model)) {
            $model = [$model];
        }

        config([
            'plugins.note.general.supported' => array_merge(config('plugins.note.general.supported', []), $model),
        ]);

        return $this;
    }

    public function saveNote(Request $request, Model|null|bool $object): void
    {
        if (! in_array($object::class, config('plugins.note.general.supported', [])) || $request->isNotFilled('note')) {
            return;
        }

        $actor = Auth::guard()->user();

        $note = new Models\Note();
        $note->note = $request->input('note');
        $note->user_id = $actor->getKey();
        $note->created_by = $actor->getKey();
        $note->reference_type = $object::class;
        $note->reference_id = $object->getKey();
        $note->save();
    }

    public function deleteNote(Model|null|bool $data): bool
    {
        if (! $data instanceof BaseModel) {
            return false;
        }

        Models\Note::query()
            ->where([
                'reference_id' => $data->getKey(),
                'reference_type' => $data::class,
            ])->delete();

        return true;
    }
}
