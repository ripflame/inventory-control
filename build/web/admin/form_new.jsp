<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Agregar producto</title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700|Archivo+Narrow:400,700" rel="stylesheet" type="text/css">
            <script src="js/bootstrap/js/bootstrap.min.js"></script>
            <link rel="stylesheet" href="js/jquery-ui-1.8.17.custom.css" type="text/css" />
            <link rel="stylesheet" href="js/bootstrap/css/bootstrap.min.css" type="text/css" />
            <link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
            <link href="css/index.css" rel="stylesheet" type="text/css" media="all" />
            <link href="css/forms_properties.css" rel="stylesheet" type="text/css" media="all" />
            <!--[if IE 6]>
            <link href="default_ie6.css" rel="stylesheet" type="text/css" />
            <![endif]-->
    </head>
    <body>
        <div id="header-wrapper">
            <div id="header" class="container">
                <div id="logo">
                    <h1><img src="images/pink_lion.png" alt="pink_lion" width="200" height="90"><a href=".">Hakuna Matata</a></h1>
                </div>
                <div id="logout">
                    <form name="logoutForm" method="post" action="/inventario/logout">
                        <input class="btn_style1" type="submit" name="logout" value="Log Out"></input>
                    </form>
                </div>
            </div>
        </div>
        <div id="page-wrapper">
            <div id="page" class="container">
                <div id="content">
                    <header>NEW ELEMENT</header>

                    <form method="post" action="addProduct" class="marginTop20 form-horizontal blackLabel"> 
                        <fieldset> 
                            <div class="control-group span12"> 
                                <label for="name" class="control-label">Nombre</label> 
                                <div class="controls"><input type="text" name="name" id="name" value="" class="input-xlarge required" required="required" />	
                                </div> 
                            </div>
                            <div class="control-group span12"> 
                                <label for="description" class="control-label">Descripci�n</label> 
                                <div class="controls"><input type="text" name="description" id="description" value="" class="input-xlarge required" required="required" />	
                                </div> 
                            </div>
                            <div class="control-group span12"> 
                                <label for="amount" class="control-label">Cantidad</label> 
                                <div class="controls"><input type="text" name="amount" id="amount" value="" class="input-xlarge required" required="required" />	
                                </div> 
                            </div>

                            <div class="form-actions btn-group span7">
                                <a class="btn btn-danger" href="inventario"><i class="icon-remove icon-white"></i> Cancelar</a>

                                <input type="submit" name="guardar" value="Guardar" class="btn btn-primary">
                            </div>

                        </fieldset>
                    </form>	
                </div>
            </div>
        </div>
        <div id="footer-wrapper" class="form_footer">
            <div id="copyright" class="container">
                <p>Copyright (c) 2013. <font color="lightgray">Roberto, el le�n rosado.</font> All rights reserved. Design by <a href="http://www.freecsstemplates.org">FCT</a>.</p>
            </div>
        </div>
    </body>
</html>
