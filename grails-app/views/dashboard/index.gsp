<!doctype html>
<html>
<head>
    <title>Dashboard</title>
    %{--<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">--}%
    %{--<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>--}%
    %{--<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>--}%
    %{--<script type="text/css"></script>--}%
    %{--<script src="JS.js"></script>--}%
    %{--<link rel="stylesheet" href="Style.css">--}%
    %{--<script src="JS.js"></script>--}%
    <script type="text/css">
    </script>
    <asset:stylesheet href="Style.css"/>
    <script>
        $("document").ready(function(){
            // setTimeout(function(){
            //     $("#flash").remove();
            // }, 1000 ); // 5 secs
            $("#flash").fadeTo(2000, 500).slideUp(500, function(){
                $("#flash").slideUp(500);
            });

        });
    </script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body id="b">
<div id="flash">
    <g:if test="${flash.message}">
        <div class="alert alert-warning alert-dismissible fade show" role="alert">
            <strong>${flash.message}!</strong>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    </g:if>
</div>

<div class="container-fluid">
    <nav class="navbar navbar-expand-md py-3 navbar-light" id="nav" style="background-color: #bdfeff;">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="/dashboard/dashboard" id="modalbegin"><b>Link Sharing</b></a>
            </div>
            <form class="navbar-form navbar-right d-flex" action="/action_page.php">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Search</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="#" class="icon" data-toggle="modal" data-target="#exampleModalCenter">
                        <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-chat-fill" viewBox="0 0 16 16" loading="lasy" onclick="getElementById('exampleModalCenter').style.display='block'">
                            <path d="M8 15c4.418 0 8-3.134 8-7s-3.582-7-8-7-8 3.134-8 7c0 1.76.743 3.37 1.97 4.6-.097 1.016-.417 2.13-.771 2.966-.079.186.074.394.273.362 2.256-.37 3.597-.938 4.18-1.234A9.06 9.06 0 0 0 8 15z"/>
                        </svg>
                    </a>
                    <!-- Modal -->
                <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <g:form controller="dashboard" action="topic" name="create-topic" params="[id: usr.id]">
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
                                    </div>
                                </g:form>
                            </div>
                            <div class="modal-footer">
                                <g:submitButton name="create-topic" value="Save"  class="submit btn btn-primary" style="float: right; margin-right: 4px;" onclick="document.getElementById('Modal-topic').style.display='none'"/>
                                <input type="button" value="Cancel" class="submit btn btn-primary" data-dismiss="modal" style="float:right; margin-right:4px;" onclick="document.getElementById('modal').style.display='none'">

                            </div>
                        </div>
                    </div>
                </div>

                </li>
                <br>
                <br>
                <li>
                    <a href="#" class="icon" data-toggle="modal" data-target="#exampleModalCenter1">
                        <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-envelope" viewBox="0 0 16 16" onclick="getElementById('exampleModalCenter1').style.display='block'">
                            <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4Zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2Zm13 2.383-4.708 2.825L15 11.105V5.383Zm-.034 6.876-5.64-3.471L8 9.583l-1.326-.795-5.64 3.47A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.741ZM1 11.105l4.708-2.897L1 5.383v5.722Z"/>
                        </svg>
                    </a>

                    <!-- Modal -->
                    <div class="modal fade" id="exampleModalCenter1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle1" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLongTitle1">Modal title</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <g:form controller="dashboard" action="topic" name="create-topic" params="[id: object.id]">
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
                                        </div>
                                    </g:form>
                                </div>
                                <div class="modal-footer">
                                    <g:submitButton name="create-topic" value="Save"  class="submit btn btn-primary" style="float: right; margin-right: 4px;" onclick="document.getElementById('Modal-topic').style.display='none'"/>
                                    <input type="button" value="Cancel" class="submit btn btn-primary" data-dismiss="modal" style="float:right; margin-right:4px;" onclick="document.getElementById('modal').style.display='none'">

                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>

                    <a href="#" class="icon" data-toggle="modal" data-target="#exampleModalCenter2">
                        <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-link-45deg" viewBox="0 0 16 16" onclick="getElementById('exampleModalCenter2').style.display='block'">
                            <path d="M4.715 6.542 3.343 7.914a3 3 0 1 0 4.243 4.243l1.828-1.829A3 3 0 0 0 8.586 5.5L8 6.086a1.002 1.002 0 0 0-.154.199 2 2 0 0 1 .861 3.337L6.88 11.45a2 2 0 1 1-2.83-2.83l.793-.792a4.018 4.018 0 0 1-.128-1.287z"/>
                            <path d="M6.586 4.672A3 3 0 0 0 7.414 9.5l.775-.776a2 2 0 0 1-.896-3.346L9.12 3.55a2 2 0 1 1 2.83 2.83l-.793.792c.112.42.155.855.128 1.287l1.372-1.372a3 3 0 1 0-4.243-4.243L6.586 4.672z"/>
                        </svg>
                    </a>
                    <!-- Modal -->
                    <div class="modal fade" id="exampleModalCenter2" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle2" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLongTitle2">Modal title</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <g:form controller="dashboard" action="topic" name="create-topic" params="[id: object.id]">
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
                                        </div>
                                    </g:form>
                                </div>
                                <div class="modal-footer">
                                    <g:submitButton name="create-topic" value="Save"  class="submit btn btn-primary" style="float: right; margin-right: 4px;" onclick="document.getElementById('Modal-topic').style.display='none'"/>
                                    <input type="button" value="Cancel" class="submit btn btn-primary" data-dismiss="modal" style="float:right; margin-right:4px;" onclick="document.getElementById('modal').style.display='none'">

                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>

                    <a href="#" class="icon" data-toggle="modal" data-target="#exampleModalCenter3" style="">
                        <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-file-earmark-plus" viewBox="0 0 16 16" onclick="getElementById('exampleModalCenter3').style.display='block'">
                            <path d="M8 6.5a.5.5 0 0 1 .5.5v1.5H10a.5.5 0 0 1 0 1H8.5V11a.5.5 0 0 1-1 0V9.5H6a.5.5 0 0 1 0-1h1.5V7a.5.5 0 0 1 .5-.5z"/>
                            <path d="M14 4.5V14a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h5.5L14 4.5zm-3 0A1.5 1.5 0 0 1 9.5 3V1H4a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V4.5h-2z"/>
                        </svg>
                    </a>
                    <!-- Modal -->
                    <div class="modal fade" id="exampleModalCenter3" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle3" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLongTitle3">Modal title</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <g:form controller="dashboard" action="topic" name="create-topic" params="[id: object.id]">
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
                                        </div>
                                    </g:form>
                                </div>
                                <div class="modal-footer">
                                    <g:submitButton name="create-topic" value="Save"  class="submit btn btn-primary" style="float: right; margin-right: 4px;" onclick="document.getElementById('Modal-topic').style.display='none'"/>
                                    <input type="button" value="Cancel" class="submit btn btn-primary" data-dismiss="modal" style="float:right; margin-right:4px;" onclick="document.getElementById('modal').style.display='none'">
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
</div>

</body>
</html>