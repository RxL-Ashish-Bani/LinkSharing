<!doctype html>
<html lang="en">
<head>
    %{--<link rel="stylesheet" href="Style.css">--}%
    %{--<script src="JS.js"></script>--}%
    <title>Register</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/css">
    </script>
    <asset:stylesheet href="Style.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body id="b" style="background-color: #1f273c">
<div id="flash">
    <g:if test="${flash.message}">
        <div class="alert alert-dismissible alert-success fade show" role="alert">
        <strong>${flash.message}!</strong>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    </g:if>
</div>
<div class="container-fluid">
    <nav class="navbar navbar-expand-md py-3 navbar-light" id="nav">
        <div class="container-fluid">
            <a class="navbar-brand" href="#" id="modalbegin">
                <b>Link Sharing</b>
            </a>
            %{--<form class="d-flex">--}%
                %{--<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">--}%
                %{--<button class="btn btn-secondary" id="button" type="submit">Search</button>--}%
            %{--</form>--}%
        </div>
    </nav>
    <br>
    <br>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-7">
                <div class="row">
                    <div class="container-fluid">
                        <div class="card" id="cards1" style="border-radius: 25px">
                            <h4 class="card-header">Recent Searches</h4>
                            <div class="card-body" id="n">
                                <div class="media">
                                    <div class="row">
                                        <g:each in="${company.Resources.list(max:5)}">
                                            <div class="col-md-3">
                                                <g:if test="${it.user.photo!=null}">
                                                    <asset:image src="/Photos/${it.user.userName}.png" class="media-object3"/>
                                                </g:if>
                                                <g:else>
                                                    <asset:image src="profile.png" class="media-object3"/>
                                                </g:else>
                                            </div>
                                            <div class="col-md-9">
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <h6>${it.user.firstName+" "+it.user.lastName}</h6>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <h6>${"@"+it.user.userName}</h6>
                                                    </div>
                                                    <div class="col-md-3 d-flex">
                                                        <a href="/profile/topics">
                                                            <h6 class="media-heading">
                                                                ${it.topic.topicName}
                                                            </h6>
                                                        </a>
                                                    </div>
                                                    <p>${it.description}</p>
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
                                                    <div class="col-md-5">
                                                    </div>
                                                    <div class="col-md-3">
                                                        <a href="/profile/posts">
                                                            <h6>View post</h6>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <hr style="height: 0px">
                                        </g:each>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>

                        <div class="card" id="cards1" style="border-radius: 25px">
                            <h4 class="card-header">Top posts</h4>
                            <div class="card-body" id="n">
                                <div class="media">
                                    <div class="row">
                                        <g:each in="${company.Resources.list(max:5)}">
                                            <div class="col-md-3">
                                                <g:if test="${it.user.photo!=null}">
                                                    <asset:image src="/Photos/${it.user.userName}.png" class="media-object3"/>
                                                </g:if>
                                                <g:else>
                                                    <asset:image src="profile.png" class="media-object3"/>
                                                </g:else>
                                            </div>
                                            <div class="col-md-9">
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <h6>${it.user.firstName+" "+it.user.lastName}</h6>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <h6>${"@"+it.user.userName}</h6>
                                                    </div>
                                                    <div class="col-md-3 d-flex">
                                                        <a href="/profile/topics">
                                                            <h6 class="media-heading">
                                                                ${it.topic.topicName}
                                                            </h6>
                                                        </a>
                                                    </div>
                                                    <p>${it.description}</p>
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
                                                    <div class="col-md-5">
                                                    </div>
                                                    <div class="col-md-3">
                                                        <a href="/profile/posts">
                                                            <h6>View post</h6>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <hr style="height: 0px">
                                        </g:each>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-5" >
                <div class="row" >
                    <div class="login-form p-4" id="row2" >
                        <g:form action="login" controller="dummy" class="row">
                            <h4>Login</h4>
                            <hr>
                            <div class="row" >
                                <label class="col-4">Email/Username</label>
                                <div class="col-8">
                                    <input type="text" name="userName" class="col-8 form-control">
                                </div>
                            </div>
                            <br>
                            <br>
                            <div class="row">
                                <label class="col-4">Password</label>
                                <div class="col-8">
                                    <input type="password" name="password" class="col-8 form-control">
                                </div>
                            </div>
                            <br>
                            <br>
                            <div class="row">
                                <div class="col-8">
                                    <p class="text-center"><a href="#">Forgot password</a></p>
                                </div>
                                <div class="col-4">
                                    <fieldset class="buttons">
                                        <input type="submit" name="login" class="login btn btn-secondary" id="button" value="Login">
                                    </fieldset>
                                    %{--<button type="submit" name="login" class="login btn btn-dark float-end">Login</button>--}%
                                </div>
                            </div>
                        </g:form>
                    </div>
                </div>
                <br>
                <br>
                <div class="row">
                    <div id="row2" class="content scaffold-create login-form p-4" role="main">
                        <g:uploadForm action="register" controller="dummy" method="Post" class="row" >
                            <fieldset class="form">
                                <h4>Register</h4>
                                <hr>
                                <div class="row">
                                    <label class="col-4">First name</label>
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
                                    <label class="col-4">Email</label>
                                    <div class="col-8">
                                        <input type="email" name="email" class="col-8 form-control" required>
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
                                <div class="row">
                                    <label class="col-4">Password</label>
                                    <div class="col-8">
                                        <input type="password" name="password" minlength="6" class="col-8 form-control" required>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <label class="col-4">Confirm password</label>
                                    <div class="col-8">
                                        <input type="password" name="confirmPassword" minlength="6" class="col-8 form-control" required>
                                    </div>
                                </div>
                                <BR>
                                <div class="row" >
                                    <label class="col-4">
                                        Photo
                                    </label>
                                    <div class="col-8">
                                        <input type="file" name="photo" id="photo">
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-8">
                                    </div>
                                    <div class="col-4">

                                        <g:actionSubmit value="Register" class="btn btn-secondary" id="button" action="register"/>

                                    </div>
                                </div>
                            </fieldset>
                        </g:uploadForm>
                    </div>


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
