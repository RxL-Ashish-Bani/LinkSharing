<%@ page import="company.Subscription; company.Resources; company.Topic" %>
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
                    <li>

                        <a href="#" class="icon" id="modal" data-toggle="modal" data-target="#exampleModalCenter">
                            <svg xmlns="http://www.w3.org/2000/svg" width="45" height="45" fill="currentColor" class="bi bi-chat-fill" viewBox="0 0 16 16" loading="lasy" onclick="getElementById('exampleModalCenter').style.display='block'">
                                <path d="M8 15c4.418 0 8-3.134 8-7s-3.582-7-8-7-8 3.134-8 7c0 1.76.743 3.37 1.97 4.6-.097 1.016-.417 2.13-.771 2.966-.079.186.074.394.273.362 2.256-.37 3.597-.938 4.18-1.234A9.06 9.06 0 0 0 8 15z"/>
                            </svg>
                        </a>
                        <!-- Modal -->
                        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <div class="col-md-12">
                                            <h5 class="modal-title" id="exampleModalLongTitle">Create Topic</h5>
                                        </div>
                                    </div>
                                    <div class="modal-body">

                                        <g:form controller="dashboard" action="topic" name="create-topic" method="POST" params="[id: usr]">
                                            <div class="container" style="padding:10px">
                                                <div class="form-group">
                                                    <label for="topicName">Name:</label>
                                                    <g:textField name="topicName" class="input" id="topicName" />
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
                                                    <g:submitButton name="create-topic" value="Save"  class="btn btn-secondary" id="button" action="topic" style="float: right; margin-right: 4px;"/>
                                                    <input type="button" value="Cancel" class="submit btn btn-secondary" id="button" data-dismiss="modal" style="float:right; margin-right:4px;" >

                                                </div>
                                            </div>
                                        </g:form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <br>
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
                                            <h5 class="modal-title" id="exampleModalLongTitle1">Send Invitation</h5>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="modal-body">
                                        <g:form controller="dashboard" action="invitation" name="invite" params="[id: usr]">
                                            <div class="container" style="padding:10px">
                                                <div class="form-group">
                                                    <label for="topicName">Email:</label>
                                                    <g:textField name="topicName" class="input" id="topicName"/>
                                                </div>
                                                <br>
                                                <div class="form-group" >
                                                    <lable for="topicVisible">Topic:</lable>
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
                                    <div class="modal-body">%{--${usr.email}--}%
                                        <g:form controller="dashboard" action="linkRes" name="linkResource" params="[id: usr]">
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
                                        <g:uploadForm controller="dashboard" action="docRes" name="documentResource" params="[id: usr]">
                                            <div class="container" style="padding:10px">
                                                <div class="form-group">
                                                    <div class="col-md-4">
                                                        <label>Document :</label>%{--<label>Document :</label> label for="document"--}%
                                                    </div>%{--<g:textField name="document" class="input" id="document"/>--}%
                                                    <div class="col-md-8">
                                                        <input type="file" name="photo" id="photo">
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
                                        </g:uploadForm>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </li>%{--<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>--}%

                    <li class="nav navbar-nav navbar-right" id="modalend">
                        <a href="/profile/prof" class="icon">
                            <g:if test="${usr.photo!=null}">
                                <asset:image src="/Photos/${usr.userName}.png" class="media-object2"/>
                            </g:if>
                            <g:else>
                                <asset:image src="profile.png" class="media-object2"/>
                            </g:else>
                        </a>
                    </li>
                    <li>
                        <div class="dropdown show">
                            <a class="btn btn-primary dropdown-toggle icon" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                ${usr.userName}
                            </a>

                            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                <g:link controller="profile" action="editProfile" params="[id: usr]" name="User" class="dropdown-item ">Profile</g:link>
                                <g:link controller="profile" action="users" params="[id: usr]" name="Users" class="dropdown-item ">Users</g:link>
                                <g:link controller="profile" action="topics" params="[id: usr]" name="Topics" class="dropdown-item ">Topics</g:link>
                                <g:link controller="profile" action="posts" params="[id: usr]" name="Posts" class="dropdown-item ">Posts</g:link>
                                <g:link controller="dummy" action="logout" params="[id: usr]" name="Logout" class="dropdown-item ">Logout</g:link>
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
            <div class="row"><!-- Nested media object -->
                <div class="container-fluid">
                    <div class="card roundside" id="rows1">
                        <div class="card-body" id="row1">
                            <div class="media">
                                <div class="row">
                                    <div class="col-md-3">
                                        <g:if test="${usr.photo!=null}">
                                            <asset:image src="/Photos/${usr.userName}.png" class="media-object1"/>
                                        </g:if>
                                        <g:else>
                                            <asset:image src="profile.png" class="media-object1"/>
                                        </g:else>
                                    </div>
                                    <div class="col-md-9">
                                        <h3 class="media-heading">${usr.firstName+" "+usr.lastName}</h3>
                                        <h6>${"@"+usr.userName}</h6>
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
                                                    <h6>${company.Subscription.countByUser(usr)}</h6>
                                                </div>
                                            </a>
                                            <a href="/profile/prof" class="col-md-6">
                                                <div>
                                                    <h6>${company.Topic.countByCreatedBy(usr)}</h6>
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
            <div class="row"><!-- Nested media object -->
                <div class="container-fluid">
                    <div class="card" id="rows1"  style="border-radius: 25px; padding: auto">
                        <div class="card-header">
                            <div class="row">
                                <div class="col-md-9">
                                    <h5>Subscriptions</h5>
                                </div>
                                <div class="col-md-3">
                                    <a href="#">View All</a>
                                </div>
                            </div>
                        </div>
                        <div class="card-body" id="row1">
                            <div class="media">
                                <g:each in="${company.Subscription.list(max:5)}">
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
                                            <a href="/profile/topics">
                                                <h6 class="media-heading">
                                                    ${it.topic.topicName}
                                                </h6>
                                            </a>
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
                                                    Unsubscribe
                                                </div>
                                                <div class="col-md-4">
                                                    <h6>${company.Subscription.countByTopic(Topic.findById(it.topic.id))}</h6>
                                                </div>
                                                <div class="col-md-4">
                                                    <h6>${company.Resources.countByTopic(Topic.findById(it.topic.id))}</h6>
                                                </div>
                                            </div>
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

                                                            <!-- Modal -->
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
                                                                            <g:form controller="dashboard" action="invitation" name="invite" params="[id: usr]">
                                                                                <div class="container" style="padding:10px">
                                                                                    <div class="form-group">
                                                                                        <label for="topicName">Email:</label>
                                                                                        <g:textField name="topicName" class="input" id="topicName"/>
                                                                                    </div>
                                                                                    <br>
                                                                                    <div class="form-group" >
                                                                                        <lable for="topicVisible">Topic: ${it.topic.topicName}</lable>
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
                                                            <a href="#" class="icon" data-toggle="modal" data-target="#exampleModalCenter4">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                                                    <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                                                    <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                                                                </svg>
                                                            </a>

                                                            <!-- Modal -->
                                                            %{--<div class="modal fade" id="exampleModalCenter1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle1" aria-hidden="true">--}%
                                                                %{--<div class="modal-dialog modal-dialog-centered" role="document">--}%
                                                                    %{--<div class="modal-content">--}%

                                                                        %{--<div class="modal-header">--}%
                                                                            %{--<div class="col-md-12">--}%
                                                                                %{--<h5 class="modal-title" id="exampleModalLongTitle1">Send Invitation</h5>--}%
                                                                            %{--</div>--}%
                                                                        %{--</div>--}%
                                                                        %{--<br>--}%
                                                                        %{--<div class="modal-body">--}%
                                                                            %{--<g:form controller="dashboard" action="invitation" name="invite" params="[id: usr]">--}%
                                                                                %{--<div class="container" style="padding:10px">--}%
                                                                                    %{--<div class="form-group">--}%
                                                                                        %{--<label for="topicName">Email:</label>--}%
                                                                                        %{--<g:textField name="topicName" class="input" id="topicName"/>--}%
                                                                                    %{--</div>--}%
                                                                                    %{--<br>--}%
                                                                                    %{--<div class="form-group" >--}%
                                                                                        %{--<lable for="topicVisible">Topic:</lable>--}%
                                                                                        %{--<g:select optionKey="id" optionValue="topicName" from="${company.Topic.list()}" name="topic"/>--}%
                                                                                    %{--</div>--}%
                                                                                    %{--<br>--}%
                                                                                    %{--<div class="modal-footer">--}%
                                                                                        %{--<g:submitButton name="create-topic" value="Save"  class="submit btn btn-primary" style="float: right; margin-right: 4px;" onclick="document.getElementById('Modal-topic').style.display='none'"/>--}%
                                                                                        %{--<input type="button" value="Cancel" class="submit btn btn-primary" data-dismiss="modal" style="float:right; margin-right:4px;" >--}%

                                                                                    %{--</div>--}%
                                                                                %{--</div>--}%
                                                                            %{--</g:form>--}%
                                                                        %{--</div>--}%
                                                                    %{--</div>--}%
                                                                %{--</div>--}%
                                                            %{--</div>--}%
                                                        </div>
                                                        <div class="col-md-3">
                                                            <a href="#" class="icon" data-toggle="modal" data-target="#exampleModalCenter5">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-envelope" viewBox="0 0 16 16" onclick="getElementById('exampleModalCenter1').style.display='block'">
                                                                    <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4Zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2Zm13 2.383-4.708 2.825L15 11.105V5.383Zm-.034 6.876-5.64-3.471L8 9.583l-1.326-.795-5.64 3.47A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.741ZM1 11.105l4.708-2.897L1 5.383v5.722Z"/>
                                                                </svg>
                                                            </a>

                                                            <!-- Modal -->
                                                        </div>
                                                        <div class="col-md-3"></div>
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
            </div>
            <br>
            <div class="row">
                <div class="container-fluid">
                    <div class="card" id="rows1"  style="border-radius: 25px; padding: auto">
                        <div class="card-header">
                            <div class="row">
                                <div class="col-md-9">
                                    <h5>Trending topics</h5>
                                </div>
                            </div>
                        </div>
                        <div class="card-body" id="row1">
                            <div class="media">
                                <g:each in="${company.Subscription.list(max:5)}">
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
                                            <a href="/profile/topics">
                                                <h6 class="media-heading">
                                                    ${it.topic.topicName}
                                                </h6>
                                            </a>
                                            <br>

                                            <div class="row">
                                                <div class="col-md-4">
                                                    <h6>${"@"+it.topic.createdBy.userName}</h6>
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
            </div>
        </div>
        <div class="col-md-7">
            <div class="row">
                <div class="container-fluid">
                    <div class="card" id="cards1" style="border-radius: 25px; padding: auto">

                        <div class="card-header">
                            <div class="row">
                                <div class="col-md-6">
                                    <h5>Inbox</h5>
                                </div>
                                <div class="col-md-6">

                                </div>
                            </div>
                        </div>
                        <div class="card-body" id="row1">
                            <div class="media">
                                <g:each in="${company.Resources.list(max:5)}">
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
                                                <div class="col-md-3">
                                                    <h6>${it.topic.createdBy.firstName+" "+it.topic.createdBy.lastName}</h6>
                                                </div>
                                                <div class="col-md-9">
                                                    <h6>${"@"+it.topic.createdBy.userName}</h6>
                                                </div>
                                            </div>
                                            <p>${it.description}</p>
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
                                                <div class="col-md-9">
                                                    <div class="row">
                                                        <div class="col-md-3" href="#">
                                                            Download
                                                        </div>
                                                        <a class="col-md-3" href="${company.LinkResource.findByResources(it).url}" target="_blank">
                                                            View full site
                                                        </a>
                                                        <div class="col-md-3" href="#">
                                                            Mark as read
                                                        </div>
                                                        <a href="/profile/posts" class="col-md-3">
                                                            View post
                                                        </a>
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
    </div>
</div>
<script>
    setTimeout(function(){
        $("#flash").css("display",'none');
    }, 1500 ); // 1.5 sec


</script>
</body>
</html>