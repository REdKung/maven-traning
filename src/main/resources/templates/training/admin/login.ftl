<#ftl output_format="HTML" />
<#import "/spring.ftl" as spring />
<#include "/version.ftl" />
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>台灣資服系統框架</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link href="<@spring.url "/webjars/bootstrap/${bootstrapVersion}/css/bootstrap.min.css" />" rel="stylesheet"/>
    <link href="<@spring.url "/webjars/font-awesome/${fontAwesomeVersion}/css/font-awesome.min.css" />" rel="stylesheet"/>
    <link rel="stylesheet" href="<@spring.url "/css/admin/AdminTIST.min.css" />">
    <link rel="stylesheet" href="<@spring.url "/css/admin/skin-blue-green.css" />">

    <link href="<@spring.url "/css/admin/style.css" />" rel="stylesheet" type="text/css">
    <!--[if lt IE 9]>
    <script src="<@spring.url "/webjars/html5shiv/${html5shivVersion}/html5shiv.min.js" />"></script>
    <script src="<@spring.url "/webjars/respond/${respondVersion}/dest/respond.min.js" />"></script>
    <![endif]-->
    <script src="<@spring.url "/webjars/jquery/${jqueryVersion}/jquery.min.js" />"></script>
    <script src="<@spring.url "/webjars/bootstrap-notify/${bootstrapNotifyVersion}/bootstrap-notify.min.js" />"></script>
</head>

<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">
        <p><strong>${adminConfig.systemName!}</strong></p>
    </div>
    <div class="login-box-body">
        <form role="form" action="<@spring.url "/admin/login/process" />" method="post">
            <input type="hidden" name="${(_csrf.parameterName)!}" value="${(_csrf.token)!}"/>
            <div class="box-body">
                <div class="form-group has-feedback">
                    <label for="user"><strong>帳號</strong></label>
                    <input type="text" name="username" value="" class="form-control" placeholder="請輸入帳號"
                           autocomplete="off"/>
                </div>
                <div class="form-group has-feedback">
                    <label for="password"><strong>密碼</strong></label>
                    <input type="password" name="password" value="" class="form-control" placeholder="請輸入密碼"
                           autocomplete="off"/>
                </div>
                <div class="form-group has-feedback">
                    <input id="juanLogin" type="submit" class="btn btn-primary btn-block" value="登入"/>
                    <button type="button" class="btn btn-block btn-info"
                            onclick="location.href='<@spring.url"/home/reset-pwd"/>'">重設密碼
                    </button>
                </div>
                <input type="hidden" name="${(_csrf.parameterName)!}" value="${(_csrf.token)!}"/>
                <div id="message" class="text-danger">${(Session.SPRING_SECURITY_LAST_EXCEPTION)!}</div>
            </div>
        </form>
    </div>
</div>
<footer class="login-footer text-center">
</footer>
</body>

</html>
