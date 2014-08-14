<html>
<head>
	<title><g:message code="springSecurity.login.title"/></title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
    <asset:stylesheet src="application.css"/>
    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><g:javascript src="ie8-responsive-file-warning.js"/><![endif]-->
    <g:javascript src="ie-emulation-modes-warning.js"/>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <g:javascript src="ie10-viewport-bug-workaround.js"/>
    <!--[if lt IE 9]>
    <g:javascript src="html5shiv.js"/>
    <g:javascript src="respond.min.js"/>
    <![endif]-->
    <style>
        body {
            padding-top: 40px;
            padding-bottom: 40px;
            background-color: #eee;
        }

        .form-signin {
            max-width: 330px;
            padding: 15px;
            margin: 0 auto;
        }
        .form-signin .form-signin-heading,
        .form-signin .checkbox {
            margin-bottom: 10px;
        }
        .form-signin .checkbox {
            font-weight: normal;
        }
        .form-signin .form-control {
            position: relative;
            height: auto;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            padding: 10px;
            font-size: 16px;
        }
        .form-signin .form-control:focus {
            z-index: 2;
        }
        .form-signin input[type="email"] {
            margin-bottom: -1px;
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
        }
        .form-signin input[type="password"] {
            margin-bottom: 10px;
            border-top-left-radius: 0;
            border-top-right-radius: 0;
        }

</style>
</head>

<body>
<div class="container">


    <form action='${postUrl}' method='POST' id='loginForm' class="form-signin" role="form">
        <h2 class="form-signin-heading"><g:message code="springSecurity.login.header"/></h2>
        <g:if test='${flash.message}'>
            <div class='alert alert-danger'>${flash.message}</div>
        </g:if>
        <input type="text" class="form-control" name="j_username"  id='username' placeholder="${message(code: 'springSecurity.login.username.label')}" required autofocus>
        <input type="password" class="form-control" placeholder="${message(code: 'springSecurity.login.password.label')}" required name='j_password' id='password'>
        <div  class="checkbox">
        <label>
            <input type='checkbox'  name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/> <g:message code="springSecurity.login.remember.me.label"/>
        </label>
        </div>
        <input type='submit' id="submit"  class="btn btn-lg btn-primary btn-block" value='${message(code: "springSecurity.login.button")}'/>
    </form>

</div>

<script type='text/javascript'>
    <!--
    (function() {
        document.forms['loginForm'].elements['j_username'].focus();
    })();
    // -->
</script>
</body>
</html>
