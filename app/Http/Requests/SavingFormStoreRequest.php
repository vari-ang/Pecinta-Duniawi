<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SavingFormStoreRequest extends FormRequest
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
            'name' => 'required',
            'description' => 'required',
            'amount' => 'required',
            'date' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'name.required' => 'Activity name must be filled',
            'description.required' => 'Description must be filled',
            'amount.required' => 'Amount must be filled',
            'date.required' => 'Date must be filled'
        ];
    }
}
