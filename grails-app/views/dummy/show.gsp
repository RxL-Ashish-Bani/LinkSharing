<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <title>Show</title>
</head>
<body>
<div class="nav" role="navigation">
    <ul>
        <li><g:link class="list" action="index">Dummy list</g:link></li>
    </ul>
</div>
<div id="show-dummy" class="content scaffold-show" role="main">
    <f:display bean="dummy" />
    <g:form resource="${this.dummy}" method="DELETE">
        <fieldset class="buttons">
            <input class="delete" type="submit" value="delete" />
        </fieldset>
    </g:form>
</div>
</body>
</html>