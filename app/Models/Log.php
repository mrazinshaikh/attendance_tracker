<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\ClassesLog
 *
 * @var Classes class
 * @var \DateTime start_time
 * @var \DateTime end_time
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
}
