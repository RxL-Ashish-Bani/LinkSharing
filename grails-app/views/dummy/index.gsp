%{--<!DOCTYPE html>--}%
%{--<html>--}%
%{--<head>--}%
    %{--<meta name="layout" content="main" />--}%
    %{--<title>Index</title>--}%
%{--</head>--}%
%{--<body>--}%
%{--<div class="nav" role="navigation">--}%
    %{--<ul>--}%
        %{--<li><g:link class="create" action="create">Create</g:link></li>--}%
    %{--</ul>--}%
%{--</div>--}%
%{--<div id="list-dummy" class="content scaffold-list" role="main">--}%
    %{--<f:table collection="${dummyList}"--}%
             %{--properties="['firstName', 'lastName']" />--}%
%{--</div>--}%
%{--</body>--}%
%{--</html>--}%


<!doctype html>
<html lang="en" >
<head>
    %{--<link rel="stylesheet" href="Style.css">--}%
    %{--<script src="JS.js"></script>--}%
    <script type="text/css">
    </script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<div class="container-fluid">
    <nav class="navbar navbar-expand-md py-3 navbar-light" style="background-color: #bdfeff;">
        <div class="container-fluid">
            <a class="navbar-brand" href="/dashboard/dashboard" id="modalbegin"><b>Link Sharing</b></a>
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
                        <g:form action="create" controller="dummy" method="Post" class="row g-3">
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

                                    <fieldset class="buttons">
                                        <input type="submit" name="index" class="create" value="Register" id="create">
                                    </fieldset>

                                </div>
                            </div>
                        </g:form>
                    </div>


                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
