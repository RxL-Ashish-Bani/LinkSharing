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
    <div class="alert alert-warning alert-dismissible fade show" id="flash" role="alert">
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
    <div class="navbar-header col-md-6">
        <a class="navbar-brand" href="#" id="modalbegin"><b>Link Sharing</b></a>
    </div>
    <div class="col-md-6">
        <ul class="nav navbar-nav navbar-right">
            <li>
                <form class="navbar-form navbar d-flex" action="/action_page.php">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-primary" id="button">Search</button>
                </form>
            </li>
                    <li class="nav navbar-nav navbar-right" id="modalend">
                        <a href="#" class="icon">
                            <svg xmlns="http://www.w3.org/2000/svg" width="45" height="45" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                            </svg>
                        </a>
                    </li>
                    <li>
                        <div class="dropdown show">
                            <a class="btn btn-primary dropdown-toggle icon" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                User
                            </a>

                            %{--<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">--}%
                                %{--<g:link controller="dashboard" action="user" params="[id: object2.id]" name="User" class="dropdown-item ">Profile</g:link>--}%
                                %{--<a class="dropdown-item" href="#" >Profile</a>--}%
                                %{--<g:link controller="dashboard" action="users" params="[id: object.id]" name="Users" class="dropdown-item ">Users</g:link>--}%
                                %{--<a class="dropdown-item" href="#" >Users</a>--}%
                                %{--<g:link controller="topic" action="topics" params="[id: object.id]" name="Topics" class="dropdown-item ">Topics</g:link>--}%
                                %{--<a class="dropdown-item" href="#">Topics</a>--}%
                                %{--<g:link controller="topic" action="posts" params="[id: object.id]" name="Posts" class="dropdown-item ">Posts</g:link>--}%
                                %{--<a class="dropdown-item" href="#">Posts</a>--}%
                                %{--<a class="dropdown-item" href="#">Logout</a>--}%
                                %{--<g:link controller="dummy" action="register" params="[id: object2.id]" name="Topic" class="dropdown-item ">Logout</g:link>--}%
                            %{--</div>--}%
                        </div>
                    </li>
                </ul>
        </form>
    </div>
    </nav>
    <br>
</div>

    <br>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="row">
                    <!-- Nested media object -->
                    <div class="container-fluid">
                    <div class="card roundside" id="rows1">
                        <div class="card-body" id="row1">
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
                <br>
                <br>
                <div class="row">
                    <!-- Nested media object -->
                    <div class="container-fluid">
                    <div class="card" id="rows1"  style="border-radius: 25px; padding: auto">
                        <div class="card-header">Subscriptions
                        </div>
                        <div class="card-body" id="row1">
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
                <br>
                <div class="row">
                    <div class="container-fluid">
                        <div class="card" id="rows1"  style="border-radius: 25px; padding: auto">
                            <div class="card-header">
                                Trending topics
                            </div>
                            <div class="card-body" id="row1">
                                <div class="media">
                                    <div class="media-left">
                                        <asset:image src="profile.jpg" class="media-object"/>
                                    </div>
                                    <div class="media-body">
                                        <h4 class="media-heading">John Doe <small><i>Posted on February 19, 2016</i></small></h4>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                </div>
                                <hr>
                                <!-- Nested media object -->
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
            <div class="col-md-7">
                <div class="row">
                    <div class="container-fluid">
                        <div class="card" id="cards1" style="border-radius: 25px; padding: auto">
                            <div class="card-header">
                                Inbox
                            </div>
                            <div class="card-body" id="row1" >
                                <div class="media">
                                    <div class="media-left">
                                        <asset:image src="profile.jpg" class="media-object"/>
                                    </div>
                                    <div class="media-body">
                                        <h4 class="media-heading">John Doe <small><i>Posted on February 19, 2016</i></small></h4>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    </div>
                                </div>
                                <!-- Nested media object -->
                                <hr>
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
                    <div class="row">
                        <br>
                        <br>
                    </div>
                    <!-- Nested media object -->
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