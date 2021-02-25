<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ConfigurationSpendingFormStoreRequest extends FormRequest
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
            'namapengeluaran' => 'required',
            'kategoripengeluaran' => 'required',
            'keteranganpengeluaran' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'namapengeluaran.required' => 'Spending Name name must be filled',
            'kategoripengeluaran.required' => 'Spending Detail must be filled',
            'keteranganpengeluaran.required' => 'Spending Description must be filled'
        ];
    }
}
