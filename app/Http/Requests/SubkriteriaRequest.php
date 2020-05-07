<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SubkriteriaRequest extends Request
{
    

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'kriteria' => 'max:30|required',
            'subkriteria' => 'max:50|required',
            'nilai' => 'max:20|required',
        ];
    }
}
