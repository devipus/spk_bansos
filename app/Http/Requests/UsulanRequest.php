<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UsulanRequest extends Request
{
    

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'kode' => 'max:5|required',
            'nama' => 'max:30|required',
            'kec' => 'max:20|required',
            'kel' => 'max:20|required',
            'alamat' => 'max:50|required',
        ];
    }
}
