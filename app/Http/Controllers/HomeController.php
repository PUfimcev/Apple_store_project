<?php

namespace App\Http\Controllers;

use App\Services\Photos\PexelsService;
use App\Utils\HandleApiPictures;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
//        dd(basename( parse_url('https://images.pexels.com/photos/29020349/pexels-photo-29020349.jpeg?auto=compress&cs=tinysrgb&h=650&w=940', PHP_URL_PATH)));
//        dd(new HandleApiPictures(new PexelsService())->saveImage('iPhone 16 Pro Max', 1, 'products', 'medium'));
//        dd(new HandleApiPictures(new PexelsService())->saveImage('Apple products', 1, 'products', 'medium'));
//        dd(new PexelsPictureService()->getApiData('MacBook Pro', 2));
//        dd(new PexelsPictureService()->getApiData('iMac', 2));
//        dd(new PexelsPictureService()->getApiData('iPad Pro', 2));
//        dd(new PexelsPictureService()->getApiData('Apple Watch', 2));
//        dd(new PexelsPictureService()->getApiData('AirPods', 2));
//        dd(new PexelsPictureService()->getApiData('profile picture', 2));
//        dd(new PexelsPictureService()->getApiData('AppleTV', 2));
//        dd(new PexelsPictureService()->getApiData('MacBook Air', 2));
//        dd(new PexelsPictureService()->getApiData('Mac Mini', 2));
//        dd(new PexelsPictureService()->getApiData('Apple watch Ultra', 2));
        return view('home');
    }
}
