<%@ page import="company.Resources; company.Topic" %>
<!doctype html>
<html>
<head>
    <title>Dashboard</title>
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
<body id="b">
<div id="flash">
    <g:if test="${flash.message}">
        <div class="alert alert-warning alert-dismissible alert-danger fade show" role="alert">
            <strong>${flash.message}!</strong>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    </g:if>
</div>


<div class="container-fluid">
    <nav class="navbar navbar-expand-md py-3 navbar-light" id="nav">
        <div class="container-fluid">
            <div class="navbar-header col-md-4">
                <a class="navbar-brand" href="/dashboard/dashboard" id="modalbegin"><b>Link Sharing</b></a>
            </div>
            <div class="col-md-8">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <form class="navbar-form navbar d-flex" action="/action_page.php">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Search">
                            </div>
                            <button type="submit" class="btn btn-primary" id="button">Search</button>
                        </form>
                    </li>
                    <br>
                    <br>
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
                                            <h5 class="modal-title" id="exampleModalLongTitle2">Share Link</h5>
                                        </div>
                                    </div>
                                    <div class="modal-body">
                                    %{--${usr.email}--}%
                                        <g:form controller="dashboard" action="linkRes" name="linkResource" params="[id: usrId]">
                                            <div class="container" style="padding:10px">
                                                <div class="form-group">
                                                    <label for="url">Link :</label>
                                                    <g:textField name="url" class="input" id="url"/>
                                                </div>
                                                <br>
                                                <div class="form-group">
                                                    <label for="description">Description :</label>
                                                    <g:textArea name="description" class="input" id="description"/>
                                                </div>
                                                <br>
                                                <div class="form-group" >
                                                    <lable for="topic">Topic :</lable>
                                                    <g:select optionKey="id" optionValue="topicName" from="${company.Topic.list()}" name="topic"/>
                                                </div>
                                                <br>
                                                <div class="modal-footer">
                                                    <g:submitButton name="create-topic" value="Save"  class="submit btn btn-primary" style="float: right; margin-right: 4px;" onclick="document.getElementById('Modal-topic').style.display='none'"/>
                                                    <input type="button" value="Cancel" class="submit btn btn-primary" data-dismiss="modal" style="float:right; margin-right:4px;">

                                                </div>
                                            </div>
                                        </g:form>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </li>
                    <li>

                        <a href="#" class="icon" data-toggle="modal" data-target="#exampleModalCenter3">
                            <svg xmlns="http://www.w3.org/2000/svg" width="45" height="45" fill="currentColor" class="bi bi-file-earmark-plus" viewBox="0 0 16 16" onclick="getElementById('exampleModalCenter3').style.display='block'">
                                <path d="M8 6.5a.5.5 0 0 1 .5.5v1.5H10a.5.5 0 0 1 0 1H8.5V11a.5.5 0 0 1-1 0V9.5H6a.5.5 0 0 1 0-1h1.5V7a.5.5 0 0 1 .5-.5z"/>
                                <path d="M14 4.5V14a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h5.5L14 4.5zm-3 0A1.5 1.5 0 0 1 9.5 3V1H4a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V4.5h-2z"/>
                            </svg>
                        </a>
                        <!-- Modal -->
                        <div class="modal fade" id="exampleModalCenter3" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle3" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered" role="document">
                                <div class="modal-content">

                                    <div class="modal-header">
                                        <div class="col-md-12">
                                            <h5 class="modal-title" id="exampleModalLongTitle3">Share Document</h5>
                                        </div>
                                    </div>
                                    <div class="modal-body">
                                        <g:form controller="dashboard" action="docRes" name="documentResource" params="[id: usrId]">
                                            <div class="container" style="padding:10px">
                                                <div class="form-group">
                                                    <div class="col-md-4">
                                                        <label>Document :</label>%{--<label>Document :</label> label for="document"--}%
                                                    </div>

                                                    %{--<g:textField name="document" class="input" id="document"/>--}%
                                                    <div class="col-md-8">
                                                        <g:form action="upload" enctype="multipart/form-data" useToken="true">

                                                            <span class="button">
                                                                <input type="file" name="photo"/>
                                                                <input type="submit" class="upload" value="upload"/>

                                                            </span>

                                                        </g:form>
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="form-group">
                                                    <label for="description">Description :</label>
                                                    <g:textArea name="description" class="input" id="description"/>
                                                </div>
                                                <br>
                                                <div class="form-group" >
                                                    <lable for="topic">Topic :</lable>
                                                    <g:select optionKey="id" optionValue="topicName" from="${company.Topic.list()}" name="topic"/>
                                                </div>
                                                <br>
                                                <div class="modal-footer">
                                                    <g:submitButton name="create-topic" value="Save"  class="submit btn btn-primary" style="float: right; margin-right: 4px;" onclick="document.getElementById('Modal-topic').style.display='none'"/>
                                                    <input type="button" value="Cancel" class="submit btn btn-primary" data-dismiss="modal" style="float:right; margin-right:4px;" >
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
                        <a href="/profile/prof" class="icon">
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
                                %{--<g:link controller="profile" action="topics" params="[id: usr]" name="Topics" class="dropdown-item ">Topics</g:link>--}%
                                %{--<a class="dropdown-item" href="#">Topics</a>--}%
                                %{--<g:link controller="profile" action="posts" params="[id: usr]" name="Posts" class="dropdown-item ">Posts</g:link>--}%
                                %{--<a class="dropdown-item" href="#">Posts</a>--}%
                                %{--<a class="dropdown-item" href="#">Logout</a>--}%
                                <g:link controller="dummy" action="logout" params="[id: usrId]" name="Logout" class="dropdown-item ">Logout</g:link>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>
<br>
<br>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-8">
            <div class="row">
                <!-- Nested media object -->
                <div class="container-fluid">
                    <div class="card roundside" id="cards">
                        <div class="card-body" id="n">
                            <div class="media">
                                <div class="row">
                                    <div class="col-md-3">
                                        <g:if test="${usrId.photo!=null}">
                                            <asset:image src="/Photos/${usrId.userName}.png" class="media-object1"/>
                                        </g:if>
                                        <g:else>
                                            <asset:image src="profile.png" class="media-object"/>
                                        </g:else>
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
                                            <a href="/profile/prof" class="col-md-6">
                                                <div>
                                                    <h6>${company.Subscription.countByUser(usrId)}</h6>
                                                </div>
                                            </a>
                                            <a href="/profile/prof" class="col-md-6">
                                                <div>
                                                    <h6>${company.Topic.countByCreatedBy(usrId)}</h6>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="row">
                <div class="container-fluid">
                    <div class="card" id="rows"  style="border-radius: 25px; padding: auto">
                        <div class="card-header">
                            <div class="row">
                                <div class="col-md-9">
                                    <h5>Trending topics</h5>
                                </div>
                            </div>
                        </div>
                        <div class="card-body" id="row1">
                            <div class="media">
                                <g:each in="${company.Subscription.list()}">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <g:if test="${usrId.photo!=null}">
                                                <asset:image src="/Photos/${usrId.userName}.png" class="media-object1"/>
                                            </g:if>
                                            <g:else>
                                                <asset:image src="profile.png" class="media-object"/>
                                            </g:else>
                                        </div>
                                        <div class="col-md-9">
                                            <a href="/profile/topics">
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
                                                    <h6>${company.Resources.countByTopic(Topic.findById(it.topic.id))}</h6>
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
