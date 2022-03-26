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
                                %{--<a class="dropdown-item" href="#" >Profile</a>--}%
                                %{--<g:link controller="profile" action="users1" params="[id: usrId]" name="Users" class="dropdown-item ">Users</g:link>--}%
                                %{--<a class="dropdown-item" href="#" >Users</a>--}%
                                %{--<g:link controller="profile" action="topics" params="[id: usrId]" name="Topics" class="dropdown-item ">Topics</g:link>--}%
                                %{--<a class="dropdown-item" href="#">Topics</a>--}%
                                %{--<g:link controller="profile" action="posts" params="[id: usrId]" name="Posts" class="dropdown-item ">Posts</g:link>--}%
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
                                    <h5>Trending topics</h5>
                                </div>
                            </div>
                        </div>
                        <div class="card-body" id="row1">
                            <div class="media">
                                <g:each in="${company.Subscription.list(max:5,order:'desc')}">
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
                                <g:each in="${company.Subscription.list(max:5,order:'desc')}">
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
                                <g:each in="${company.Resources.list(max:5,order:'desc')}">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <g:if test="${it.topic.createdBy.photo!=null}">
                                                <asset:image src="/Photos/${usrId.userName}.png" class="media-object1"/>
                                            </g:if>
                                            <g:else>
                                                <asset:image src="profile.png" class="media-object1"/>
                                            </g:else>
                                        </div>
                                        <div class="col-md-9">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <h6>${it.topic.createdBy.firstName+" "+it.topic.createdBy.lastName}</h6>
                                                </div>
                                                <div class="col-md-8">
                                                    <h6>${"@"+it.topic.createdBy.userName}</h6>
                                                </div>
                                            </div>
                                            <p>${it.description}</p>
                                            <div class="row">
                                                <div class="col-md-1">
                                                </div>
                                                <div class="col-md-11">
                                                    <div class="row">
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