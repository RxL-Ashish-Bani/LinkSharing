%{--<!DOCTYPE html>--}%
%{--<html>--}%
%{--<head>--}%
    %{--<meta name="layout" content="main" />--}%
    %{--<title>Create</title>--}%
%{--</head>--}%
%{--<body>--}%
%{--<div id="create-dummy" class="content scaffold-create" role="main">--}%
    %{--<g:form resource="${this.dummy}" method="POST">--}%
        %{--<fieldset class="form">--}%
            %{--<f:all bean="dummy"/>--}%
        %{--</fieldset>--}%
        %{--<fieldset class="buttons">--}%
            %{--<g:submitButton name="create" class="save" value="Create" />--}%
        %{--</fieldset>--}%
    %{--</g:form>--}%
%{--</div>--}%
%{--</body>--}%
%{--</html>--}%




<!doctype html>
<html lang="en">
<head>
    %{--<link rel="stylesheet" href="Style.css">--}%
    %{--<script src="JS.js"></script>--}%
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/css">
    </script>
    <asset:stylesheet href="Style.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body id="b" style="background-color: #1f273c">
<g:if test="${flash.message}">
    <div class="alert alert-dismissible alert-success fade show" role="alert">
    <strong>${flash.message}!</strong>
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
%{--</g:if><g:if test="${flash.error}">    <div class="alert alert-warning alert-dismissible fade show" role="alert">--}%
    %{--<div class="alert alert-danger" role="status">${flash.error}</div>--}%
    %{--<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>--}%
%{--</div>--}%
</g:if>
<div class="container-fluid">
    <nav class="navbar navbar-expand-md py-3 navbar-light" id="nav">
        <div class="container-fluid">
            <a class="navbar-brand" href="#" id="modalbegin">
                <b>Link Sharing</b>
            </a>
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-secondary" id="button" type="submit">Search</button>
            </form>
        </div>
    </nav>
    <br>
    <br>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8">
                <div class="row">
                    <div class="container-fluid">
                        <div class="card" id="cards" style="border-radius: 25px">
                            <h4 class="card-header">Recent Searches</h4>
                            <div class="card-body" id="n">
                                <div class="media">
                                    <div class="media-left">
                                        <asset:image src="profile.jpg" alt="photo" class="media-object"/>
                                    </div>
                                    <div class="media-body">
                                        <h4 class="media-heading">John Doe <small><i>Posted on February 19, 2016</i></small></h4>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                </div>
                                <!-- Nested media object -->
                                <div class="media">
                                    <div class="media-left">
                                        <asset:image src="profile.jpg" class="media-object" />
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
                        <div class="card" id="cards" style="border-radius: 25px">
                            <h4 class="card-header">Top posts</h4>
                            <div class="card-body" id="n">
                                <div class="media">
                                    <div class="media-left">
                                        <asset:image src="profile.jpg" class="media-object"/>
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

            <div class="col-md-4" >
                <div class="row" >
                    <div class="login-form p-4" id="rows" >
                        <g:form action="login" controller="dummy" class="row g-3">
                            <h4>Login</h4>
                            <hr>
                            <div class="row" >
                                <label class="col-4">Email/Username</label>
                                <div class="col-8">
                                    <input type="text" name="userName" class="col-8 form-control">
                                </div>
                            </div>
                            <br>
                            <br>
                            <div class="row">
                                <label class="col-4">Password</label>
                                <div class="col-8">
                                    <input type="password" name="password" class="col-8 form-control">
                                </div>
                            </div>
                            <br>
                            <br>
                            <div class="row">
                                <div class="col-8">
                                    <p class="text-center"><a href="#">Forgot password</a></p>
                                </div>
                                <div class="col-4">
                                    <fieldset class="buttons">
                                        <input type="submit" name="login" class="login btn btn-secondary" id="button" value="Login">
                                    </fieldset>
                                    %{--<button type="submit" name="login" class="login btn btn-dark float-end">Login</button>--}%
                                </div>
                            </div>
                        </g:form>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div id="rows" class="content scaffold-create login-form p-4" role="main">
                        <g:form action="register" controller="dummy" method="Post" class="row g-3" >
                            <fieldset class="form">
                                <h4>Register</h4>
                                <hr>
                                <div class="row">
                                    <label class="col-4">First name</label>
                                    <div class="col-8">
                                        <input type="text" name="firstName" class="col-8 form-control" required>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <label class="col-4">Last name</label>
                                    <div class="col-8">
                                        <input type="text" name="lastName" class="col-8 form-control" required>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <label class="col-4">Email</label>
                                    <div class="col-8">
                                        <input type="email" name="email" class="col-8 form-control" required>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <label class="col-4">Username</label>
                                    <div class="col-8">
                                        <input type="text" name="userName" class="col-8 form-control" required>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <label class="col-4">Password</label>
                                    <div class="col-8">
                                        <input type="password" name="password" class="col-8 form-control" required>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <label class="col-4">Confirm password</label>
                                    <div class="col-8">
                                        <input type="password" name="confirmPassword" class="col-8 form-control" required>
                                    </div>
                                </div>
                                <BR>
                                <div class="row" >
                                    <label class="col-4">
                                        Photo
                                    </label>
                                    %{--<div class="col-4">--}%
                                        %{--<input type="photo" name="photo" class="form-control">--}%
                                    %{--</div>--}%
                                    <div class="col-8">
                                        <form class="col-8" action="/action_page.php">
                                            <div class="custom-file">
                                                %{--<label for="formFileSm" class="form-label"></label>--}%
                                                <input class="form-control form-control" id="formFileSm" type="file" />
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-8">
                                    </div>
                                    <div class="col-4">

                                        <g:actionSubmit value="Register" class="btn btn-secondary" id="button" action="register"/>

                                    </div>
                                </div>
                            </fieldset>
                        </g:form>
                    </div>


                </div>
            </div>
        </div>
    </div>
</div>
<script>
    setTimeout(function(){
        $("#flash").css("display",'none');
    }, 1500 ); // 1.5 sec

</script>
</body>
</html>
