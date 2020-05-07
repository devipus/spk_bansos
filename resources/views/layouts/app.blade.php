<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'SPK KELAYAKAN MUSTAHIQ') }}</title>

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>
<body style="background-color:#ff8000">
    <div id="app">
        <nav class="navbar navbar-default skin-red  navbar-static-top"  style="background-color:#000000; font-color:#ff8000;">
            <div class="container" style="font-color:#ff8000">
                <div class="navbar-header" style="font-color:#ff8000">

                    <!-- Collapsed Hamburger -->
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navbar-collapse" aria-expanded="false">
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <!-- Branding Image -->
                    <a class="navbar-brand" href="{{ url('/') }}" style="color:#ff8000">
                      <b>  {{ config('SPK KELAYAKAN MUSTAHIQ', 'SPK KELAYAKAN MUSTAHIQ') }} </b>
                    </a>
                </div>

                <div class="collapse navbar-collapse" id="app-navbar-collapse">
                    <!-- Left Side Of Navbar -->
                    <ul class="nav navbar-nav">
                         
                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="nav navbar-nav navbar-right" style="font-color:#ff8000">
                        <!-- Authentication Links -->
                            @if(Request::url() != route('login'))
                                <li><a href="{{ route('login') }}" style="color:#ff8000">Login</a></li>
                            @endIf
                           <!--  @if(Request::url() != route('register'))
                                <li><a href="{{ route('register') }}">Register</a></li>
                            @endIf; -->
                       
                    </ul>
                </div>
            </div>
        </nav>

        @yield('content')
    </div>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}"></script>
</body>
</html>
