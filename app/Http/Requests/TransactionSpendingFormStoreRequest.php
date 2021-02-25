<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class TransactionSpendingFormStoreRequest extends FormRequest
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
            'kategorip' => 'required',
            'dkategorip' => 'required',
            'tglp' => 'required',
            'nominalp' => 'required',
            'keteranganp' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'kategorip.required' => 'Spending Category name must be filled',
            'dkategorip.required' => 'Spending Detail must be filled',
            'tglp.required' => 'Date must be filled',
            'nominalp.required' => 'Amount must be filled',
            'keteranganp.required' => 'Description must be filled'
        ];
    }
}
