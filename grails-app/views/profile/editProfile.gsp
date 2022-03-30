<%@ page import="company.Subscription; company.Topic" %>
<!doctype html>
<html lang="en">
<head>
    <title>Edit Profile</title>
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
                                    <div class="col-md-3">
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
                                            <a href="/profile/topics" class="col-md-6">
                                                <div >
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
                <!-- Nested media object -->
                <div class="container-fluid">
                    <div class="card" id="rows1"  style="border-radius: 25px; padding: auto">
                        <div class="card-header">
                            <div class="row">
                                <div class="col-md-6">
                                    <h5>Topics</h5>
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
                                <g:each in="${company.Topic.list(max:5,order:'desc')}">
                                    <g:if test="${it.createdBy.id==usrId.id}">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <g:if test="${it.createdBy.photo!=null}">
                                                    <asset:image src="/Photos/${it.createdBy.userName}.png" class="media-object1"/>
                                                </g:if>
                                                <g:else>
                                                    <asset:image src="profile.png" class="media-object1"/>
                                                </g:else>
                                            </div>
                                            <div class="col-md-9">
                                                <div class="row">
                                                <a href="/topic/topics">
                                                    <h6 class="media-heading">
                                                        ${it.topicName}
                                                    </h6>
                                                </a>
                                                </div>
                                                <br>

                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <h6>${"@"+it.createdBy.userName}</h6>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <h6>Subscriptions</h6>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <h6>Post</h6>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                    </div>
                                                    <div class="col-md-4">
                                                        <h6>${company.Subscription.countByTopic(Topic.findById(it.id))}</h6>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <h6>${company.Resources.countByTopic(Topic.findById(it.id))}</h6>
                                                    </div>


                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <g:form controller="dashboard" action="changeVisible" params="[tid: it.id,uid: usrId.id]">
                                                            <g:select name="topicVisible" from="${["Private","Public"]}" onchange="submit()" value="${it.topicVisible}"/>
                                                        </g:form>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <g:form controller="dashboard" action="changeSerious" params="[tid: it.id,uid: usrId.id]">
                                                            <g:select name="seriousness" from="${["VerySerious","Serious","Casual"]}" onchange="submit()" value="${sub?.seriousness}"/>
                                                        </g:form>
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
                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16" onclick="getElementById('exampleModalCenter4')">
                                                                            <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                                                            <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                                                                        </svg>
                                                                    </a>
                                                                    <div class="modal fade" id="exampleModalCenter4" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle4" aria-hidden="true">
                                                                        <div class="modal-dialog modal-dialog-centered" role="document">
                                                                            <div class="modal-content">

                                                                                <div class="modal-header">
                                                                                    <div class="col-md-12">
                                                                                        <h5 class="modal-title" id="exampleModalLongTitle4">Share Link</h5>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="modal-body">%{--${usr.email}--}%
                                                                                    <g:form controller="dashboard" action="edit" name="editTopic" params="[id: usrId]">
                                                                                        <div class="container" style="padding:10px">
                                                                                            <div class="form-group">
                                                                                                <label for="topicName">Topic Name :</label>
                                                                                                <g:textField name="topicName" class="input" id="topicName"/>
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
        </div>
        <div class="col-md-7">
            <div class="row" >
                <div class="login-form p-4" id="rows2" >
                    %{--${object.email}--}%
                    <g:uploadForm controller="profile" action="editInfo" method="POST" class="row g-3" params="[id: usrId.id]">
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
                                    <input type="file" name="photo" id="photo">
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
                    </g:uploadForm>
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