<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class TransactionEarningFormStoreRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'kategori' => 'required',
            'dkategori' => 'required',
            'tgl' => 'required',
            'nominal' => 'required',
            'keterangan' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'kategori.required' => 'Earning Category name must be filled',
            'dkategori.required' => 'Earning Detail must be filled',
            'tgl.required' => 'Date must be filled',
            'nominal.required' => 'Amount must be filled',
            'keterangan.required' => 'Description must be filled'
        ];
    }
}
