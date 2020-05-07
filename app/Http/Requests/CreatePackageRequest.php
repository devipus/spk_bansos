<?php 
namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use App\Produk;

class CreatePackageRequest extends FormRequest {

  public function authorize(){
    return true;
  }

	/**
	 * Get the validation rules that apply to the request.
	 *
	 * @return array
	 */
	public function rules()
	{

      $rules = [
         'hargaPaket' => 'numeric',         
         'descriptionPaket' => 'nullable|max:255',
         'namaPaket' => 'max:64',
         'product' => ['nullable', function($attribute, $value, $fail){
            if($value != '' && is_array($value)){
              foreach($value as $e){
                if(isset($e['name'])){
                  if($e['name'] != ''){
                    $queryProduct = Produk::where('id_produk', '=', $e['name'])->first();
                    if(!$queryProduct){
                      $fail('Produk tidak ditemukan');
                    }else{
                      if(isset($e['qty']) && $e['qty'] == ''){
                        $fail($queryProduct->nama_produk. ' quantity tidak boleh kosong');
                      }
                      if(isset($e['qty']) && !is_numeric($e['qty'])){
                        $fail($queryProduct->nama_produk . ' quantity tidak valid');
                      }
                      if(isset($e['price']) && $e['price'] == ''){
                        $fail($queryProduct->nama_produk . ' Harga tidak boleh kosong');
                      }
                    }
                  }else{
                    $fail('Oops..!!!, Tampanya ada kesalahan, silahkan muat ulang laman.');
                  }
                }
              }
            }
         }],
           
      ];

      return $rules;

	}

}