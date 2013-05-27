<%@ page language="java" contentType="text/html; charset=UTF-8;"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Usuario nuevo</title>
        <meta charset="UTF-8">
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700|Archivo+Narrow:400,700" rel="stylesheet" type="text/css">
        <script src="../js/bootstrap/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="../js/jquery-ui-1.8.17.custom.css" type="text/css" />
        <link rel="stylesheet" href="../js/bootstrap/css/bootstrap.min.css" type="text/css" />
        <link href="../css/default.css" rel="stylesheet" type="text/css" media="all" />
        <link href="../css/index.css" rel="stylesheet" type="text/css" media="all" />
        <link href="../css/forms_properties.css" rel="stylesheet" type="text/css" media="all" />
        <!--[if IE 6]>
        <link href="default_ie6.css" rel="stylesheet" type="text/css" />
        <![endif]-->
    </head>
    <body>
        <div id="header-wrapper">
            <div id="header" class="container">
                <div id="logo">
                    <h1><img src="../images/pink_lion.png" alt="pink_lion" width="200" height="90"><a href=".">Hakuna Matata</a></h1>
                </div>
            </div>
        </div>
        <div id="page-wrapper">
            <div id="page" class="container">
                <div id="content">
                    <header>EDITAR USUARIO</header>

                    <s:form action="struts/editUser" method="post" cssClass="marginTop20 form-horizontal blackLabel">
                            <div class="control-group span12"> 
                                <s:textfield name="user.name" label="Name"
                                             value="%{#session['User'].user.name}" cssClass="input-xlarge required" requiredLabel="required"/>
                            </div>
                            <div class="control-group span12">
                                <s:textfield name="user.password" label="Password"
                                             value="%{#session['User'].user.password}" cssClass="input-xlarge required" requiredLabel="required"/>
                            </div>
                                <s:submit name="guardar" value="Actualizar" cssClass="btn btn-primary"/>
                    </s:form>
                    <a class="btn btn-danger" href="/inventario"><i class="icon-remove icon-white"></i> Cancelar</a>
                </div>
            </div>
        </div>
        <div id="footer-wrapper" class="form_footer">
            <div id="copyright" class="container">
                <p>Copyright (c) 2013. <font color="lightgray">Roberto, el león rosado.</font> All rights reserved. Design by <a href="http://www.freecsstemplates.org">FCT</a>.</p>
            </div>
        </div>
    </body>
</html>