<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ConfigurationKategoriFormStoreRequest extends FormRequest
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
            'namekategori' => 'required',
            'jeniskategori' => 'required',
            'keterangankategori' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'namekategori.required' => 'Category Name name must be filled',
            'jeniskategori.required' => 'Category Type must be filled',
            'keterangankategori.required' => 'Category Description must be filled'
        ];
    }
}
