<!doctype html>
<html lang="en" class="no-js">
<head>
    %{--<link rel="stylesheet" href="Style.css">--}%
    %{--<script src="JS.js"></script>--}%
    <script type="text/css">
    </script>
    %{--<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">--}%
    %{--<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>--}%
    %{--<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>--}%
    %{--<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>--}%
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<div class="container-fluid">
    <nav class="navbar navbar-expand-md py-3 navbar-light" style="background-color: #bdfeff;">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Link Sharing</a>
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </nav>
    <br>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8">
                <div class="row">
                    <div class="container-fluid">
                        <div class="card">
                            <div class="card-header">
                                Recent Searches
                            </div>
                            <div class="card-body">
                                <div class="media">
                                    <div class="media-left">
                                        <img src="img_avatar1.png" class="media-object" style="width:45px">
                                    </div>
                                    <div class="media-body">
                                        <h4 class="media-heading">John Doe <small><i>Posted on February 19, 2016</i></small></h4>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                </div>
                                <!-- Nested media object -->
                                <div class="media">
                                    <div class="media-left">
                                        <img src="img_avatar2.png" class="media-object" style="width:45px">
                                    </div>
                                    <div class="media-body">
                                        <h4 class="media-heading">John Doe <small><i>Posted on February 19, 2016</i></small></h4>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                </div>

                                <a href="#" class="btn btn-primary">Go somewhere</a>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <br>
                        <br>
                    </div>
                                    <!-- Nested media object -->
                    <div class="container-fluid">
                        <div class="card">
                            <h5 class="card-header">Top posts</h5>
                            <div class="card-body">
                                <div class="media">
                                    <div class="media-left">
                                        <img src="" class="media-object" style="width:45px">
                                    </div>
                                    <div class="media-body">
                                        <h4 class="media-heading">John Doe <small><i>Posted on February 19, 2016</i></small></h4>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                </div>
                                <a href="#" class="btn btn-primary">Go somewhere</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            %{--<div class="col-md-1">--}%

            %{--</div>--}%

            <div class="col-md-4">
                <div class="row">
                    <div class="login-form bg-light mt-4 p-4">
                        <g:form action="index" controller="dummy" method="GET" class="row g-3">
                            <h4>Login</h4>
                            <hr>
                            <div class="row" >
                                <label class="col-4">Email/Username</label>
                                <div class="col-8">
                                    <input type="text" name="username" class="col-8 form-control" placeholder="Username">
                                </div>
                            </div>
                            <br>
                            <br>
                            <div class="row">
                                <label class="col-4">Password</label>
                                <div class="col-8">
                                    <input type="password" name="password" class="col-8 form-control" placeholder="Password">
                                </div>
                            </div>
                            <br>
                            <br>
                            <div class="row">
                                <div class="col-8">
                                    <p class="text-center"><a href="#">Forgot password</a></p>
                                </div>
                                <div class="col-4">
                                    <button type="submit" class="btn btn-dark float-end">Login</button>
                                </div>
                            </div>
                        </g:form>
                    </div>
                </div>
                <div class="row">
                    <div id="create-dummy" class="login-form bg-light mt-4 p-4">
                        <g:form action="save" controller="dummy" method="Post" class="row g-3">
                            <h4>Register</h4>
                            <hr>
                            <div class="row">
                                <label class="col-4">First name</label>
                                <div class="col-8">
                                    <input type="text" name="firstname" class="col-8 form-control" placeholder="Username">
                                </div>
                            </div>
                            <br>
                            <br>
                            <div class="row">
                                <label class="col-4">Last name</label>
                                <div class="col-8">
                                    <input type="text" name="lastname" class="col-8 form-control" placeholder="Password">
                                </div>
                            </div>
                            <br>
                            <br>
                            <div class="row">
                                <label class="col-4">Email</label>
                                <div class="col-8">
                                    <input type="email" name="email" class="col-8 form-control" placeholder="Email">
                                </div>
                            </div>
                            <br>
                            <br>
                            <div class="row">
                                <label class="col-4">Username</label>
                                <div class="col-8">
                                    <input type="text" name="username" class="col-8 form-control" placeholder="Username">
                                </div>
                            </div>
                            <br>
                            <br>
                            <div class="row">
                                <label class="col-4">Password</label>
                                <div class="col-8">
                                    <input type="password" name="password" class="col-8 form-control" placeholder="Password">
                                </div>
                            </div>
                            <br>
                            <br>
                            <div class="row">
                                <label class="col-4">Confirm password</label>
                                <div class="col-8">
                                    <input type="password" name="password" class="col-8 form-control" placeholder="Confirm Password">
                                </div>
                            </div>
                            <BR>
                            <BR>
                            <div class="row" >
                                <label class="col-4">
                                    Photo
                                </label>
                                <div class="col-4">
                                    <input type="photo" name="photo" class="form-control" placeholder="">
                                </div>
                                <div class="col-8">
                                    <form class="col-8" action="/action_page.php">
                                        <div class="custom-file">
                                            <label for="formFileSm" class="form-label"></label>
                                            <input class="form-control form-control-sm" id="formFileSm" type="file" />
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-8">
                                </div>
                                <div class="col-3">

                                    %{--<button type="submit" class="btn btn-dark float-end">Register</button>--}%
                                    %{--<a href="/dummy/create" class="create">Register</a>--}%
                                    <fieldset class="buttons">
                                        <input type="submit" name="index" class="save" value="Register" id="index">
                                    </fieldset>

                                </div>
                            </div>
                        </g:form>
                    </div>

                    %{--<form action="/dummy/save" method="post">--}%
                        %{--<fieldset class="form">--}%
                            %{--<div class="fieldcontain required">--}%
                                %{--<label for="username">Username--}%
                                    %{--<span class="required-indicator">*</span>--}%
                                %{--</label><input type="text" name="username" value="" required="" id="username">--}%
                            %{--</div><div class="fieldcontain required">--}%
                            %{--<label for="password">Password--}%
                                %{--<span class="required-indicator">*</span>--}%
                            %{--</label><input type="text" name="password" value="" required="" id="password">--}%
                        %{--</div><div class="fieldcontain required">--}%
                            %{--<label for="firstName">First Name--}%
                                %{--<span class="required-indicator">*</span>--}%
                            %{--</label><input type="text" name="firstName" value="" required="" id="firstName">--}%
                        %{--</div><div class="fieldcontain required">--}%
                            %{--<label for="lastName">Last Name--}%
                                %{--<span class="required-indicator">*</span>--}%
                            %{--</label><input type="text" name="lastName" value="" required="" id="lastName">--}%
                        %{--</div><div class="fieldcontain required">--}%
                            %{--<label for="email">Email--}%
                                %{--<span class="required-indicator">*</span>--}%
                            %{--</label><input type="email" name="email" value="" required="" id="email">--}%
                        %{--</div><div class="fieldcontain">--}%
                            %{--<label for="admin">Admin</label><input type="hidden" name="_admin"><input type="checkbox" name="admin" id="admin">--}%
                        %{--</div><div class="fieldcontain">--}%
                            %{--<label for="active">Active</label><input type="hidden" name="_active"><input type="checkbox" name="active" id="active">--}%
                        %{--</div><div class="fieldcontain required">--}%
                            %{--<label for="photo">Photo--}%
                                %{--<span class="required-indicator">*</span>--}%
                            %{--</label><input type="number" name="photo" value="" required="" id="photo">--}%
                        %{--</div>--}%
                        %{--</fieldset>--}%
                        %{--<fieldset class="buttons">--}%
                            %{--<input type="submit" name="create" class="save" value="Create" id="create">--}%
                        %{--</fieldset>--}%
                    %{--</form>--}%
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
%{--<div class="wrapper sfhj">--}%
    %{--<div class="one">--}%
        %{--<div class="bg">--}%
            %{--<div class="card">--}%
                %{--<div class="inner-box" id="card">--}%
                    %{--<div class="card-front">--}%
                        %{--<h2 class="navbar-header">LOGIN</h2>--}%
                        %{--<g:form controller="Dummy" action="create">--}%
                            %{--<label for="e_mail">Email/Username</label>--}%
                            %{--<input type="email" class="input-box" id="e_mail" placeholder="Your Email Id" required>--}%
                            %{--<label for="pass">Password</label>--}%
                            %{--<input type="password" class="input-box" id="pass" placeholder="Password" required>--}%
                            %{--<button type="submit" class="submit-btn">Submit</button>--}%
                            %{--<!-- <input type="checkbox"><span>Remember Me</span> -->--}%
                        %{--</g:form>--}%
                        %{--<button type="button" class="btn" onclick="openRegister()">Register</button>--}%
                        %{--<a href="">Forget Password</a>--}%
                    %{--</div>--}%
                    %{--<div class="card-back">--}%
                        %{--<h2 class="navbar-header">REGISTER</h2>--}%
                        %{--<g:form controller="dummy" action="create">--}%
                            %{--<label for="first">First name</label>--}%
                            %{--<input type="text" class="input-box" id="first">--}%
                            %{--<label for="last">Last name</label>--}%
                            %{--<input type="text" class="input-box" id="last">--}%
                            %{--<label for="mail">First name</label>--}%
                            %{--<input type="email" class="input-box" id="mail">--}%
                            %{--<label for="password">Password</label>--}%
                            %{--<input type="password" class="input-box" id="password">--}%
                            %{--<label for="cpassword">Confirm password</label>--}%
                            %{--<input type="password" class="input-box" id="cpassword">--}%
                            %{--<button type="submit" class="submit-btn">Submit</button>--}%
                            %{--<!-- <input type="checkbox"><span>Remember Me</span> -->--}%
                        %{--</g:form>--}%
                        %{--<button type="button" class="btn" onclick="openLogin()">Login</button>--}%
                        %{--<a href="">Forget Password</a>--}%
                    %{--</div>--}%
                %{--</div>--}%
            %{--</div>--}%
        %{--</div>--}%
    %{--</div>--}%

    %{--<!--   <div class="two">Two</div>--}%
  %{--<div class="three">Three</div>--}%
  %{--<div class="four">Four</div>--}%
  %{--<div class="five">Five</div>--}%
  %{--<div class="six">Six</div> -->--}%
%{--</div>--}%
%{--<script src="JS.js"></script>--}%
%{--</body>--}%
%{--</html>--}%





%{--<!doctype html>--}%
%{--<html>--}%
%{--<head>--}%
%{--<meta name="layout" content="main"/>--}%
%{--<title>Welcome to Grails</title>--}%

%{--<asset:link rel="icon" href="favicon.ico" type="image/x-ico" />--}%
%{--</head>--}%
%{--<body>--}%
%{--<content tag="nav">--}%
%{--<li class="dropdown">--}%
%{--<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Application Status <span class="caret"></span></a>--}%
%{--<ul class="dropdown-menu">--}%
%{--<li><a href="#">Environment: ${grails.util.Environment.current.name}</a></li>--}%
%{--<li><a href="#">App profile: ${grailsApplication.config.grails?.profile}</a></li>--}%
%{--<li><a href="#">App version:--}%
%{--<g:meta name="info.app.version"/></a>--}%
%{--</li>--}%
%{--<li role="separator" class="divider"></li>--}%
%{--<li><a href="#">Grails version:--}%
%{--<g:meta name="info.app.grailsVersion"/></a>--}%
%{--</li>--}%
%{--<li><a href="#">Groovy version: ${GroovySystem.getVersion()}</a></li>--}%
%{--<li><a href="#">JVM version: ${System.getProperty('java.version')}</a></li>--}%
%{--<li role="separator" class="divider"></li>--}%
%{--<li><a href="#">Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</a></li>--}%
%{--</ul>--}%
%{--</li>--}%
%{--<li class="dropdown">--}%
%{--<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Artefacts <span class="caret"></span></a>--}%
%{--<ul class="dropdown-menu">--}%
%{--<li><a href="#">Controllers: ${grailsApplication.controllerClasses.size()}</a></li>--}%
%{--<li><a href="#">Domains: ${grailsApplication.domainClasses.size()}</a></li>--}%
%{--<li><a href="#">Services: ${grailsApplication.serviceClasses.size()}</a></li>--}%
%{--<li><a href="#">Tag Libraries: ${grailsApplication.tagLibClasses.size()}</a></li>--}%
%{--</ul>--}%
%{--</li>--}%
%{--<li class="dropdown">--}%
%{--<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Installed Plugins <span class="caret"></span></a>--}%
%{--<ul class="dropdown-menu">--}%
%{--<g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">--}%
%{--<li><a href="#">${plugin.name} - ${plugin.version}</a></li>--}%
%{--</g:each>--}%
%{--</ul>--}%
%{--</li>--}%
%{--</content>--}%

%{--<div class="svg" role="presentation">--}%
%{--<div class="grails-logo-container">--}%
%{--<asset:image src="grails-cupsonly-logo-white.svg" class="grails-logo"/>--}%
%{--</div>--}%
%{--</div>--}%

%{--<div id="content" role="main">--}%
%{--<section class="row colset-2-its">--}%
%{--<h1>Welcome to Grails</h1>--}%

%{--<p>--}%
%{--Congratulations, you have successfully started your first Grails application! At the moment--}%
%{--this is the default page, feel free to modify it to either redirect to a controller or display--}%
%{--whatever content you may choose. Below is a list of controllers that are currently deployed in--}%
%{--this application, click on each to execute its default action:--}%
%{--</p>--}%

%{--<div id="controllers" role="navigation">--}%
%{--<h2>Available Controllers:</h2>--}%
%{--<ul>--}%
%{--<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">--}%
%{--<li class="controller">--}%
%{--<g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link>--}%
%{--</li>--}%
%{--</g:each>--}%
%{--</ul>--}%
%{--</div>--}%
%{--</section>--}%
%{--</div>--}%

%{--</body>--}%
%{--</html>--}%

