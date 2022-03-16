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
    <div class="navbar-header col-md-5">
        <a class="navbar-brand" href="#" id="modalbegin"><b>Link Sharing</b></a>
    </div>
    <div class="col-md-7">
        <ul class="nav navbar-nav navbar-right">
            <li>
                <form class="navbar-form navbar d-flex" action="/action_page.php">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-primary" id="button">Search</button>
                </form>
            </li>
            %{--<ul class="nav navbar-nav navbar-right">--}%
            %{--<span class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="#myModal"></span>--}%
            %{--<li><a href="#"><span class="glyphicon glyphicon-chat-fill"></span></a></li>--}%

            <br>
            <li>
                <a href="#" class="icon" data-toggle="modal" data-target="#exampleModalCenter1">
                    <svg xmlns="http://www.w3.org/2000/svg" width="45" height="45" fill="currentColor" class="bi bi-envelope" viewBox="0 0 16 16" onclick="getElementById('exampleModalCenter1').style.display='block'">
                        <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4Zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2Zm13 2.383-4.708 2.825L15 11.105V5.383Zm-.034 6.876-5.64-3.471L8 9.583l-1.326-.795-5.64 3.47A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.741ZM1 11.105l4.708-2.897L1 5.383v5.722Z"/>
                    </svg>
                </a>

                <!-- Modal -->
                <div class="modal fade" id="exampleModalCenter1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle1" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <div class="col-md-12">
                                    <h5 class="modal-title" id="exampleModalLongTitle1">Share Link</h5>
                                </div>
                                %{--<div class="col-md-1">--}%
                                %{--<button type="button" class="close" data-dismiss="modal" aria-label="Close">--}%
                                %{--<span aria-hidden="true">&times;</span>--}%
                                %{--</button>--}%
                                %{--</div>--}%
                            </div>
                            <div class="modal-body">
                                <g:form controller="linkResource" action="linkRes" name="create-topic">%{--params="[id: object.id]/*">--}%
                                    <div class="container" style="padding:10px">
                                        <div class="form-group">
                                            <label for="url">Name:</label>
                                            <g:textField name="url" class="input" id="url"/>
                                        </div>
                                        <br>
                                        <div class="form-group">
                                            <label for="description">Description:</label>
                                            <g:textArea name="description" class="input" id="description"/>
                                        </div>
                                        <br>
                                        <div class="form-group" >
                                            <lable for="topicVisible">Topic:</lable>
                                            <g:select optionKey="id" optionValue="topicName" from="${company.Topic.list()}" name="topic"/>
                                        </div>
                                        <br>
                                        <div class="modal-footer">
                                            <g:submitButton name="create-topic" value="Save"  class="submit btn btn-primary" style="float: right; margin-right: 4px;" onclick="document.getElementById('Modal-topic').style.display='none'"/>
                                            <input type="button" value="Cancel" class="submit btn btn-primary" data-dismiss="modal" style="float:right; margin-right:4px;" onclick="document.getElementById('modal').style.display='none'">

                                        </div>
                                    </div>
                                </g:form>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            <li>

                <a href="#" class="icon" data-toggle="modal" data-target="#exampleModalCenter2">
                    <svg xmlns="http://www.w3.org/2000/svg" width="45" height="45" fill="currentColor" class="bi bi-link-45deg" viewBox="0 0 16 16" onclick="getElementById('exampleModalCenter2').style.display='block'">
                        <path d="M4.715 6.542 3.343 7.914a3 3 0 1 0 4.243 4.243l1.828-1.829A3 3 0 0 0 8.586 5.5L8 6.086a1.002 1.002 0 0 0-.154.199 2 2 0 0 1 .861 3.337L6.88 11.45a2 2 0 1 1-2.83-2.83l.793-.792a4.018 4.018 0 0 1-.128-1.287z"/>
                        <path d="M6.586 4.672A3 3 0 0 0 7.414 9.5l.775-.776a2 2 0 0 1-.896-3.346L9.12 3.55a2 2 0 1 1 2.83 2.83l-.793.792c.112.42.155.855.128 1.287l1.372-1.372a3 3 0 1 0-4.243-4.243L6.586 4.672z"/>
                    </svg>
                </a>
                <!-- Modal -->
                <div class="modal fade" id="exampleModalCenter2" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle2" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <div class="col-md-12">
                                    <h5 class="modal-title" id="exampleModalLongTitle2">Share Document</h5>
                                </div>
                                %{--<div class="col-md-1">--}%
                                %{--<button type="button" class="close" data-dismiss="modal" aria-label="Close">--}%
                                %{--<span aria-hidden="true">&times;</span>--}%
                                %{--</button>--}%
                                %{--</div>--}%
                            </div>
                            <div class="modal-body">
                                <g:form controller="dashboard" action="topic" name="create-topic"> %{--params="[id: object.id]"--}%
                                    <div class="container" style="padding:10px">
                                        <div class="form-group">
                                            <label for="topicName">Name:</label>
                                            <g:textField name="topicName" class="input" id="topicName"/>
                                        </div>
                                        <br>
                                        <div class="form-group">
                                            <lable for="topicVisible">Visibility:</lable>
                                            <select class="box"  name="topicVisible" >
                                                <option value="Public" selected>Public</option>
                                                <option value="Private">Private</option>
                                            </select>
                                        </div>
                                        <br>
                                        <div class="modal-footer">
                                            <g:submitButton name="create-topic" value="Save"  class="submit btn btn-primary" style="float: right; margin-right: 4px;" onclick="document.getElementById('Modal-topic').style.display='none'"/>
                                            <input type="button" value="Cancel" class="submit btn btn-primary" data-dismiss="modal" style="float:right; margin-right:4px;" onclick="document.getElementById('modal').style.display='none'">
                                        </div>
                                    </div>
                                </g:form>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            %{--<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>--}%

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
                        %{--<g:link controller="profile" action="prof" params="[id: object.id]" name="User" class="dropdown-item ">Profile</g:link>--}%
                        %{--<a class="dropdown-item" href="#" >Profile</a>--}%
                        %{--<g:link controller="profile" action="users1" params="[id: object.id]" name="Users" class="dropdown-item ">Users</g:link>--}%
                        %{--<a class="dropdown-item" href="#" >Users</a>--}%
                        %{--<g:link controller="topic" action="topics" params="[id: object.id]" name="Topics" class="dropdown-item ">Topics</g:link>--}%
                        %{--<a class="dropdown-item" href="#">Topics</a>--}%
                        %{--<g:link controller="topic" action="posts" params="[id: object.id]" name="Posts" class="dropdown-item ">Posts</g:link>--}%
                        %{--<a class="dropdown-item" href="#">Posts</a>--}%
                        %{--<a class="dropdown-item" href="#">Logout</a>--}%
                        %{--<g:link controller="dummy" action="register" params="[id: object.id]" name="Topic" class="dropdown-item ">Logout</g:link>--}%
                    %{--</div>--}%
                </div>
            </li>
        </ul>
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
                    <div class="card" id="rows1"  style="border-radius: 25px; padding: auto">
                        <div class="card-header">Trending topics
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
                    <div class="container-fluid">
                        <div class="card" id="rows1"  style="border-radius: 25px; padding: auto">
                            <div class="card-header">Top Posts
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
                                Search for "test"
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
<script>
    setTimeout(function(){
        $("#flash").css("display",'none');
    }, 1500 ); // 1.5 sec

</script>
</body>
</html>
