<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\User;

class SavingReminderController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function index()
    {
        if(Auth::check()) {
            // The user is logged in...
            $user = User::find(Auth::id());
            return response()->json($user->getReminders());
        }
        else {
            return abort(403, 'Unauthorized action.');
        }
    }
}
