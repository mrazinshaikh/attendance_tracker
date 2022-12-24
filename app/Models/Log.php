<?php

namespace App\Models;

use Illuminate\Support\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;

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
 * @property int $id
 * @property string $start_time
 * @property string|null $end_time
 * @property Carbon $created_at
 * @property Carbon $updated_at
 * @property-read \App\Models\Classes $classes
 * @method static \Illuminate\Database\Eloquent\Builder|Log whereClassId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Log whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Log whereEndTime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Log whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Log whereStartTime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Log whereUpdatedAt($value)
 */
class Log extends Model
{
    use HasFactory;

    protected $table = "logs";

    protected $fillable = [
        'start_time',
        'end_time',
    ];

    /**
     * The accessors to append to the model's array form.
     *
     * @var array
     */
    protected $appends = [
        'time_diff',
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

    protected function timeDiff(): Attribute
    {
        return Attribute::make(
            get: function () {
                if (is_null($this->end_time)) return null;
                $finalValue = '';
                $hour = Carbon::make($this->start_time)->diffInHours(Carbon::make($this->end_time));
                if ((bool) $hour !== false) {
                    $finalValue .= $hour . ' Hour ';
                }
                $min = Carbon::make($this->start_time)->diff(Carbon::make($this->end_time))->format('%I');
                if ((bool) $min !== false) {
                    $finalValue .= $min . ' Minutes ';
                }
                $sec = Carbon::make($this->start_time)->diff(Carbon::make($this->end_time))->format('%S');

                if ((bool) $hour === false) {
                    $finalValue .= $sec . ' Seconds ';
                }

                return $finalValue;
            }
        );
    }
}
