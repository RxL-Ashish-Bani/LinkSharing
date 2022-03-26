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
        <div class="col-md-7">
            <div class="row">
                <div class="container-fluid">
                    <div class="card" id="cards1" style="border-radius: 25px; padding: auto">
                        <div class="card-body" id="row1">
                            <div class="media">
                                <g:each in="${company.Resources.list(max:5,order:'desc')}">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <g:if test="${it.topic.createdBy.photo!=null}">
                                                <asset:image src="/Photos/${it.topic.createdBy.userName}.png" class="media-object1"/>
                                            </g:if>
                                            <g:else>
                                                <asset:image src="profile.png" class="media-object1"/>
                                            </g:else>
                                        </div>
                                        <div class="col-md-9">
                                            <div class="row">
                                                <div class="col-md-9">
                                                    <h6>${it.topic.createdBy.firstName+" "+it.topic.createdBy.lastName}</h6>
                                                </div>
                                                <div class="col-md-3">
                                                    <a href="/profile/topics">
                                                        <h6>
                                                            ${it.topic.topicName}
                                                        </h6>
                                                    </a>
                                                </div>
                                                <h6>${"@"+it.user.userName}</h6>
                                            </div>
                                        </div>
                                        <hr style="height: 0px">
                                        <div class="row">
                                            <p>${it.description}</p>
                                            <br>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="col-md-4">
                                                        <div class="row">
                                                            <div class="col-md-1">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="23" height="23" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                                                                    <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/>
                                                                </svg>
                                                            </div>
                                                            <div class="col-md-1">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="23" height="23" fill="currentColor" class="bi bi-twitter" viewBox="0 0 16 16">
                                                                    <path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"/>
                                                                </svg>
                                                            </div>
                                                            <div class="col-md-1">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="23" height="23" fill="currentColor" class="bi bi-google" viewBox="0 0 16 16">
                                                                    <path d="M15.545 6.558a9.42 9.42 0 0 1 .139 1.626c0 2.434-.87 4.492-2.384 5.885h.002C11.978 15.292 10.158 16 8 16A8 8 0 1 1 8 0a7.689 7.689 0 0 1 5.352 2.082l-2.284 2.284A4.347 4.347 0 0 0 8 3.166c-2.087 0-3.86 1.408-4.492 3.304a4.792 4.792 0 0 0 0 3.063h.003c.635 1.893 2.405 3.301 4.492 3.301 1.078 0 2.004-.276 2.722-.764h-.003a3.702 3.702 0 0 0 1.599-2.431H8v-3.08h7.545z"/>
                                                                </svg>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-8">
                                                    </div>
                                                    %{--<div class="col-md-3">--}%
                                                    %{--<a href="/profile/posts">--}%
                                                    %{--<h6>View post</h6>--}%
                                                    %{--</a>--}%
                                                    %{--</div>--}%
                                                </div>
                                                <div class="col-md-2"></div>
                                                <div class="col-md-7">
                                                    <div class="row">
                                                        <div class="col-md-3"></div>
                                                        <div class="col-md-3" href="#">
                                                            Delete
                                                        </div>
                                                        <div href="#" class="col-md-3">
                                                            Edit
                                                        </div>
                                                        <g:if test="${company.LinkResource.findByResources(it)}">
                                                            <a class="col-md-3" href="${company.LinkResource.findByResources(it).url}" target="_blank">
                                                                View full site
                                                            </a>
                                                        </g:if>
                                                        <g:else>
                                                            <div class="col-md-3" href="#">
                                                                Download
                                                            </div>
                                                        </g:else>
                                                    </div>
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
        <div class="col-md-5">
            <div class="row">
                <div class="container-fluid">
                    <div class="card" id="row2"  style="border-radius: 25px; padding: auto">
                        <div class="card-header">
                            <div class="row">
                                <div class="col-md-9">
                                    <h5>Trending topics</h5>
                                </div>
                            </div>
                        </div>
                        <div class="card-body" id="row2">
                            <div class="media">
                                <g:each in="${company.Subscription.list(max:5,order:'desc')}">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <g:if test="${it.user.photo!=null}">
                                                <asset:image src="/Photos/${it.user.userName}.png" class="media-object"/>
                                            </g:if>
                                            <g:else>
                                                <asset:image src="profile.png" class="media-object"/>
                                            </g:else>
                                        </div>
                                        <div class="col-md-9">
                                            <div class="row">
                                                <div class="col-md-9">
                                                    ${it.user.firstName+" "+it.user.lastName}
                                                </div>
                                                <div class="col-md-3">
                                                    <a href="/profile/topics">
                                                        <h6 class="media-heading">
                                                            ${it.topic.topicName}
                                                        </h6>
                                                    </a>
                                                </div>
                                            </div>
                                            <br>

                                            <div class="row">
                                                <div class="col-md-4">
                                                    <h6>${"@"+it.user.userName}</h6>
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
                                                    Subscribe
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
