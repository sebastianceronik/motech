<%@ page language="java" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:setLocale value="${pageLang}" />
<fmt:setBundle basename="org.motechproject.resources.messages" var="bundle"/>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>MOTECH - Mobile Technology for Community Health</title>

    <link rel="stylesheet" type="text/css" href="../../server/resources/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../../server/resources/css/index.css" />

    <script src="../../server/resources/lib/jquery/jquery.js"></script>
    <script src="../../server/resources/lib/jquery/jquery.migrate.min.js"></script>
    <script src="../../server/resources/lib/bootstrap/bootstrap.js"></script>
</head>

<body class="body-down">
<div class="bodywrap">
    <div class="header">
        <div class="container">
            <a href="."><div class="dashboard-logo"><img class="logo" alt="Logo - {{msg('server.motechTitle')}}" src="../../server/resources/img/motech-logo.jpg"></div></a>
            <div class="hidden-xs hidden-sm">
                <div class="header-title"><fmt:message key="server.motechTitle" bundle="${bundle}"/></div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

    <div class="clearfix"></div>
    <div class="navbar-wrapper navbar-default">
        <div class="header-nav navbar">
            <div class="navbar-inner navbar-inner-bg">
            </div>
        </div>
    </div>

    <div class="clearfix"></div>
    <div id="content" class="container">
        <div class="row">
            <div id="main-content">
                <div class="well2 margin-center margin-before spnw6">
                    <div class="box-header"><fmt:message key="security.resetInstructions" bundle="${bundle}"/></div>
                    <div class="box-content">
                        <form class="inside" method="post">
                            <div class="well3">
                                <div class="form-group">
                                    <h4><fmt:message key="security.enterEmailQuestions" bundle="${bundle}"/></h4>
                                </div>
                                <div class="form-group">
                                    <p><fmt:message key="security.enterEmailMsg" bundle="${bundle}"/></p>
                                </div>
                                <div class="form-group">
                                    <label><fmt:message key="security.enterEmail" bundle="${bundle}"/></label>
                                    <input class="col-sm-12 form-control" type="email" id="email" name="email">
                                </div>
                                <div class="form-group">
                                    <input class="btn btn-primary" type="submit" value="<fmt:message key="security.sendReset" bundle="${bundle}"/>"/>
                                    <a href="." class="pull-right margin-before05" /><fmt:message key="security.back" bundle="${bundle}"/></a>
                                </div>
                            </div>
                        </form>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
