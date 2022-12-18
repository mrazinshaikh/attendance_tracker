<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Classes
 *
 * @property int $id
 * @property string $name
 * @property string|null $description
 * @property string $stopIn
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Models\ClassesLog[] $classesLogs
 * @property-read int|null $classes_logs_count
 * @method static \Illuminate\Database\Eloquent\Builder|Classes newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Classes newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Classes query()
 * @method static \Illuminate\Database\Eloquent\Builder|Classes whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Classes whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Classes whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Classes whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Classes whereStopIn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Classes whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class Classes extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'description',
        'stopIn',
    ];

    public function logs()
    {
        return $this->hasMany(Log::class, 'class_id', 'id');
    }
}
