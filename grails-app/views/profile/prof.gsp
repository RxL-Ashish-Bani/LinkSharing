<%@ page import="company.Resources; company.Topic" %>
<!doctype html>
<html>
<head>
    <title>User Profile</title>
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
                    %{--<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>--}%

                    <li class="nav navbar-nav navbar-right" id="modalend">
                        <a href="/profile/prof" class="icon">
                            <g:if test="${usrId.photo!=null}">
                                <asset:image src="/Photos/${usrId.userName}.png" class="media-object2"/>
                            </g:if>
                            <g:else>
                                <asset:image src="profile.png" class="media-object2"/>
                            </g:else>
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
                                    <div class="col-md-3" >
                                        <g:if test="${usrId.photo!=null}">
                                            <asset:image src="/Photos/${usrId.userName}.png" class="media-object1"/>
                                        </g:if>
                                        <g:else>
                                            <asset:image src="profile.png" class="media-object1"/>
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
            <br>
            <br>
            <div class="row">
                <div class="container-fluid">
                    <div class="card" id="rows1"  style="border-radius: 25px; padding: auto">
                        <div class="card-header">
                            <div class="row">
                                <div class="col-md-9">
                                    <h5>Topics</h5>
                                </div>
                            </div>
                        </div>
                        <div class="card-body" id="row1">
                            <div class="media">
                                <g:each in="${company.Topic.list()}">
                                    <g:if test="${it.createdBy.id==usrId.id}">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <g:if test="${it.createdBy.photo!=null}">
                                                    <asset:image src="/Photos/${it.createdBy.userName}.png" class="media-object"/>
                                                </g:if>
                                                <g:else>
                                                    <asset:image src="profile.png" class="media-object"/>
                                                </g:else>
                                            </div>
                                            <div class="col-md-9">
                                                <div class="row">
                                                    <a href="/profile/topics" class="col-md-3">
                                                        <h6 class="media-heading">
                                                            ${it.topicName}
                                                        </h6>
                                                    </a>
                                                    <div class="col-md-2">
                                                        %{--<h6>${"@"+it.topic.createdBy.userName}</h6>--}%
                                                    </div>
                                                    <div class="col-md-4">
                                                        <h6>Subscriptions</h6>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <h6>Post</h6>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-5" href="#">

                                                    </div>
                                                    <div class="col-md-4">
                                                        <h6>${company.Subscription.countByTopic(Topic.findById(it.id))}</h6>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <h6>${company.Resources.countByTopic(Topic.findById(it.id))}</h6>
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <select class="box"  name="topicVisible" >
                                                            <option value="Public" selected>Public</option>
                                                            <option value="Private">Private</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <select class="box"  name="seriousness" >
                                                            <option value="Very Serious" selected>Very Serious</option>
                                                            <option value="Serious">Serious</option>
                                                            <option value="Casual">Casual</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="row">
                                                            <div class="col-md-3">
                                                                <a href="#" class="icon" data-toggle="modal" data-target="#exampleModalCenter1">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-envelope" viewBox="0 0 16 16" onclick="getElementById('exampleModalCenter1').style.display='block'">
                                                                        <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4Zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2Zm13 2.383-4.708 2.825L15 11.105V5.383Zm-.034 6.876-5.64-3.471L8 9.583l-1.326-.795-5.64 3.47A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.741ZM1 11.105l4.708-2.897L1 5.383v5.722Z"/>
                                                                    </svg>
                                                                </a>
                                                                <div class="modal fade" id="exampleModalCenter1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle1" aria-hidden="true">
                                                                    <div class="modal-dialog modal-dialog-centered" role="document">
                                                                        <div class="modal-content">
                                                                            <div class="modal-header">
                                                                                <div class="col-md-12">
                                                                                    <h5 class="modal-title" id="exampleModalLongTitle1">Send Invitation</h5>
                                                                                </div>
                                                                            </div>
                                                                            <br>
                                                                            <div class="modal-body">
                                                                                <g:form controller="dashboard" action="invitation" name="invite" params="[id: usrId]">
                                                                                    <div class="container" style="padding:10px">
                                                                                        <div class="form-group">
                                                                                            <label for="topicName">Email:</label>
                                                                                            <g:textField name="topicName" class="input" id="topicName"/>
                                                                                        </div>
                                                                                        <br>
                                                                                        <div class="form-group" >
                                                                                            <lable for="topicVisible">Topic: ${it.topicName}</lable>
                                                                                            %{--<g:select optionKey="id" optionValue="topicName" from="${company.Topic.list()}" name="topic"/>--}%
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
                                                            </div>
                                                            <div class="col-md-3">
                                                                <g:if test="${it.createdBy.id==usrId.id}">
                                                                    <a href="#" class="icon" data-toggle="modal" data-target="#exampleModalCenter4">
                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16" onclick="getElementById()">
                                                                            <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                                                            <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                                                                        </svg>
                                                                    </a>
                                                                </g:if>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <g:if test="${it.createdBy.id==usrId.id}">
                                                                    <g:link controller="dashboard" action="delete" params="[tid: it.id]">
                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16" >
                                                                            <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                                                                            <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                                                                        </svg>
                                                                    </g:link>
                                                                </g:if>
                                                            </div>
                                                            <div class="col-md-3">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <hr>
                                        </div>
                                    </g:if>
                                </g:each>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br>
            <div class="row">
                <!-- Nested media object -->
                <div class="container-fluid">
                    <div class="card" id="rows1"  style="border-radius: 25px; padding: auto">
                        <div class="card-header">
                            <div class="row">
                                <div class="col-md-9">
                                    <h5>Subscriptions</h5>
                                </div>
                                <div class="col-md-3">
                                    %{--<a href="#">View All</a>--}%
                                </div>
                            </div>
                        </div>
                        <div class="card-body" id="row1">
                            <div class="media">
                                <g:each in="${company.Subscription.list()}">
                                    <g:if test="${it?.user?.id==usrId?.id}">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <g:if test="${it.topic.createdBy.photo!=null}">
                                                    <asset:image src="/Photos/${it.topic.createdBy.userName}.png" class="media-object"/>
                                                </g:if>
                                                <g:else>
                                                    <asset:image src="profile.png" class="media-object"/>
                                                </g:else>
                                            </div>
                                            <div class="col-md-9">

                                                <div class="row">
                                                    <a href="/profile/topics" class="col-md-3">
                                                        <h6 class="media-heading">
                                                            ${it.topic.topicName}
                                                        </h6>
                                                    </a>
                                                    <div class="col-md-2">
                                                        %{--<h6>${"@"+it.topic.createdBy.userName}</h6>--}%
                                                    </div>
                                                    <div class="col-md-4">
                                                        <h6>Subscriptions</h6>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <h6>Post</h6>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-5" href="#">

                                                    </div>
                                                    <div class="col-md-4">
                                                        <h6>${company.Subscription.countByTopic(Topic.findById(it.topic.id))}</h6>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <h6>${company.Resources.countByTopic(Topic.findById(it.topic.id))}</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <hr>
                                    </g:if>
                                </g:each>
                            </div>
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
                            <div class="row">
                                <div class="col-md-6">
                                    <h5>Posts</h5>
                                </div>
                                <div class="col-md-6">
                                    %{--<form class="d-flex" action="/action_page.php">--}%
                                        %{--<div class="form-group">--}%
                                            %{--<input type="text" class="form-control" placeholder="Search">--}%
                                        %{--</div>--}%
                                        %{--<button type="submit" class="btn btn-primary" id="button">Search</button>--}%
                                    %{--</form>--}%
                                </div>
                            </div>
                        </div>
                        <div class="card-body" id="row1">
                            <div class="media">
                                <g:each in="${company.Resources.list()}">
                                    %{--<g:if test="${(it.topic.id==top.id)}">--}%
                                    <g:if test="${(it.user.id==usrId.id) }">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <g:if test="${it.user.photo!=null}">
                                                    <asset:image src="/Photos/${it.user.userName}.png" class="media-object1"/>
                                                </g:if>
                                                <g:else>
                                                    <asset:image src="profile.png" class="media-object1"/>
                                                </g:else>
                                            </div>
                                            <div class="col-md-9">
                                                <p>${it.description}</p>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div class="row">
                                                            <div class="col-md-5">
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

                                                            <div class="col-md-7">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-9">
                                                        <div class="row">
                                                            <div class="col-md-3"></div>
                                                            <div class="col-md-3"></div>
                                                            <g:if test="${company.LinkResource.findByResources(it)}">
                                                                <a class="col-md-3" href="${company.LinkResource.findByResources(it).url}" target="_blank">
                                                                    View full site
                                                                </a>
                                                            </g:if>
                                                            <g:elseif test="${company.DocumentResource.findByResource(it)}">
                                                                <a class="col-md-3" href="${company.DocumentResource.findByResource(it)?.filePath}" download>Download</a>
                                                            </g:elseif>
                                                            <br>
                                                            <br>
                                                            <g:link controller="profile" action="post" params="[rid: it.id,uid: it.user.id]" class="col-md-3">
                                                                View post
                                                            </g:link>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <hr>
                                    </g:if>
                                </g:each>
                            </div>
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