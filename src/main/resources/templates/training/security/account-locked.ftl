<#ftl output_format="HTML" />
<#import "/spring.ftl" as spring />
<#include "/version.ftl" />
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Login_雲林縣在地行動服務</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link href="<@spring.url "/webjars/bootstrap/${bootstrapVersion}/css/bootstrap.min.css" />" rel="stylesheet"/>
    <link href="<@spring.url "/webjars/font-awesome/${fontAwesomeVersion}/css/font-awesome.min.css" />" rel="stylesheet"/>
    <link rel="stylesheet" href="<@spring.url "/css/admin/AdminTIST.min.css" />">
    <link rel="stylesheet" href="<@spring.url "/css/admin/skin-drak-green.css" />">
    <link href="<@spring.url "/css/admin/style.css" />" rel="stylesheet" type="text/css">
    <!--[if lt IE 9]>
    <script src="<@spring.url "/webjars/html5shiv/${html5shivVersion}/html5shiv.min.js" />"></script>
    <script src="<@spring.url "/webjars/respond/${respondVersion}/dest/respond.min.js" />"></script>
    <![endif]-->
    <script src="<@spring.url "/webjars/jquery/${jqueryVersion}/jquery.min.js" />"></script>
</head>

<body class="hold-transition login-page">
    <div class="login-box">
        <div class="login-logo">
            <p><img src="<@spring.url "/css/images/logo.png" />"></p>
            <p><strong>雲林縣</strong>在地行動服務系統</p>
        </div>
        <div class="login-box-body">
            <div class="box-body">
                <div id="message" class="text-danger">${(Session.SPRING_SECURITY_LAST_EXCEPTION)!}</div>
            </div>
        </div>
    </div>
    <footer class="login-footer text-center">
        <p><strong>Copyright &copy; 2016 <a href="http://www4.yunlin.gov.tw/social/index.jsp" title="雲林縣政府社會處(另開新視窗)" target="_blank">雲林縣政府社會處</a>.</strong> All rights reserved.</p>
    </footer>
</body>

</html>
