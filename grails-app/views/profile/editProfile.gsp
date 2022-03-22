<%@ page import="company.Topic" %>
<!doctype html>
<html lang="en">
<head>
    %{--<link rel="stylesheet" href="Style.css">--}%
    %{--<script src="JS.js"></script>--}%
    %{--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>--}%
    %{--<script type="text/css">--}%
    %{--</script>--}%
    %{--<asset:stylesheet href="Style.css"/>--}%
    %{--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">--}%
    %{--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>--}%
    <title>Profile</title>
    <asset:stylesheet href="Style.css"/>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <style type="text/css">
    .roundside{
        border-radius: 25px;
    }
    </style>
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
                <a class="navbar-brand" href="/dashboard/dashboard" id="modalbegin"><b>Link Sharing</b></a>
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
                                ${usrId.userName}
                            </a>

                            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                <g:link controller="profile" action="editProfile" params="[id: usrId]" name="User" class="dropdown-item ">Profile</g:link>
                                %{--<a class="dropdown-item" href="#" >Profile</a>--}%
                                %{--<g:link controller="profile" action="users1" params="[id: usr]" name="Users" class="dropdown-item ">Users</g:link>--}%
                                %{--<a class="dropdown-item" href="#" >Users</a>--}%
                                %{--<g:link controller="topic" action="topics" params="[id: usr]" name="Topics" class="dropdown-item ">Topics</g:link>--}%
                                %{--<a class="dropdown-item" href="#">Topics</a>--}%
                                %{--<g:link controller="topic" action="posts" params="[id: usr]" name="Posts" class="dropdown-item ">Posts</g:link>--}%
                                %{--<a class="dropdown-item" href="#">Posts</a>--}%
                                %{--<a class="dropdown-item" href="#">Logout</a>--}%
                                <g:link controller="dummy" action="logout" params="[id: usrId]" name="Logout" class="dropdown-item ">Logout</g:link>
                            </div>
                        </div>
                    </li>
                    </li>
                </ul>
            </div>
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
                                <div class="row">
                                    <div class="col-md-3">
                                        <asset:image src="profile.jpg" class="media-object1"/>
                                    </div>
                                    <div class="col-md-9">
                                        <h3 class="media-heading">${usrId.firstName+" "+usrId.lastName}</h3>
                                        <h6>${"@"+usrId.userName}</h6>
                                        <br>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <h6>Subscriptions</h6>
                                            </div>
                                            <div class="col-md-6">
                                                <h6>Topics</h6>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <h6>${company.Subscription.countByUser(usrId)}</h6>
                                            </div>
                                            <div class="col-md-6">
                                                <h6>${company.Topic.countByCreatedBy(usrId)}</h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
                        <div class="card-header">
                            <div class="row">
                                <div class="col-md-6">
                                    <h5>Topics</h5>
                                </div>
                                <div class="col-md-6">
                                    <form class="d-flex" action="/action_page.php">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Search">
                                        </div>
                                        <button type="submit" class="btn btn-primary" id="button">Search</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="card-body" id="row1">
                            <div class="media">
                                <g:each in="${company.Subscription.list()}">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <asset:image src="profile.jpg" class="media-object"/>
                                        </div>
                                        <div class="col-md-9">
                                            <a href="/topic/topics">
                                                <h6 class="media-heading">
                                                    ${it.topic.topicName}
                                                </h6>
                                            </a>
                                            <br>

                                            <div class="row">
                                                <div class="col-md-4">
                                                    <h6>${"@"+usrId.userName}</h6>
                                                </div>
                                                <div class="col-md-4">
                                                    <h6>Subscriptions</h6>
                                                </div>
                                                <div class="col-md-4">
                                                    <h6>Post</h6>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4" href="#">
                                                    Unsubscribe
                                                </div>
                                                <div class="col-md-4">
                                                    <h6>${company.Subscription.countByTopic(Topic.findById(it.topic.id))}</h6>
                                                </div>
                                                <div class="col-md-4">
                                                    <h6>${company.Resources.countByTopic(company.Topic.findById(it.topic.id))}</h6>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>
                                </g:each>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-7">
            <div class="row" >
                <div class="login-form p-4" id="rows2" >
                    %{--${object.email}--}%
                    <g:form controller="profile" action="editInfo" method="POST" class="row g-3" params="[id: usrId.id]">
                        <fieldset class="form">
                            <h4>Profile</h4>
                            <hr>
                            <div class="row" >
                                <label class="col-4">First name </label>
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
                                <label class="col-4">Username</label>
                                <div class="col-8">
                                    <input type="text" name="userName" class="col-8 form-control" required>
                                </div>
                            </div>
                            <br>
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
                                    <fieldset class="buttons">
                                        <input type="submit" name="" class="login btn btn-secondary" id="button" value="Update">
                                    </fieldset>
                                    %{--<button type="submit" name="login" class="login btn btn-dark float-end">Login</button>--}%
                                </div>
                            </div>
                        </fieldset>
                    </g:form>
                </div>
            </div>
            <br>
            <div class="row">
                <div id="rows2" class="content scaffold-create login-form p-4" role="main">
                    <g:form controller="profile" action="editPassword" method="Post" class="row g-3" params="[id: usrId.id]" >
                        <fieldset class="form">
                            <h4>Change password</h4>
                            <hr>
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
                            <br>
                            <div class="row">
                                <div class="col-8">
                                </div>
                                %{--<div class="col-4">--}%

                                    %{--<g:actionSubmit value="Update" class="btn btn-secondary" id="button" /> --}%%{--action="editProfile"--}%

                                %{--</div>--}%
                                <div class="col-4">
                                    <fieldset class="buttons">
                                        <input type="submit" name="" class="login btn btn-secondary" id="button" value="Update">
                                    </fieldset>
                                    %{--<button type="submit" name="login" class="login btn btn-dark float-end">Login</button>--}%
                                </div>
                            </div>
                        </fieldset>
                    </g:form>
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