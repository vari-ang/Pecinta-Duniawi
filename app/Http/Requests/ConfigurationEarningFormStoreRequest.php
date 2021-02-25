<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ConfigurationEarningFormStoreRequest extends FormRequest
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
            'namapemasukan' => 'required',
            'kategoripemasukan' => 'required',
            'keteranganpemasukan' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'namapemasukan.required' => 'Earning Name name must be filled',
            'kategoripemasukan.required' => 'Earning Detail must be filled',
            'keteranganpemasukan.required' => 'Earning Description must be filled'
        ];
    }
}
