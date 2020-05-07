<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class BobotgapRequest extends Request
{
    

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'selisih' => 'max:20|required',
            'bobot' => 'max:20|required',
        ];
    }
}
