<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Carbon;

/**
 * App\Models\ClassesLog
 *
 * @var Classes class
 * @var \DateTime start_time
 * @var \DateTime|null end_time
 * @property-read \App\Models\Classes|null $class
 * @method static \Illuminate\Database\Eloquent\Builder|ClassesLog newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ClassesLog newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ClassesLog query()
 * @mixin \Eloquent
 */
class Log extends Model
{
    use HasFactory;

    protected $table = "logs";

    protected $fillable = [
        'start_time',
        'end_time',
    ];

    public function classes()
    {
        return $this->belongsTo(Classes::class, 'class_id', 'id');
    }

    protected function startTime(): Attribute
    {
        return Attribute::make(
            get: fn ($value) => Carbon::make($value)?->format('Y-m-d H:i:s'),
        );
    }

    protected function endTime(): Attribute
    {
        return Attribute::make(
            get: fn ($value) => Carbon::make($value)?->format('Y-m-d H:i:s'),
        );
    }
}
