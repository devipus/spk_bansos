<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PenilaianRequest extends Request
{
    

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'tahun' => 'max:4|required',
            'id_usulan' => 'max:20|required',
            'pendapatan' => 'max:20|required',
            'tanggungan' => 'max:20|required',
            'status_rumah' => 'max:20|required',
            'kondisi_rumah' => 'max:20|required',
            'status_pernikahan' => 'max:20|required',
        ];
    }
}
