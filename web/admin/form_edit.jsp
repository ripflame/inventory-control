<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Workspace 
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20132602

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
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
			<button class="btn_style1">Log Out <i class="icon-white icon-eject"></i> </button>
		</div>
	</div>
</div>
<div id="page-wrapper">
	<div id="page" class="container">
		<div id="content">
			<header>EDITING</header>
			<form id="form" method="post" action="inventario.jsp" class="marginTop20 form-horizontal blackLabel" enctype="multipart/form-data"> 
			<fieldset> 
				<div class="control-group span12"> 
					<label for="name" class="control-label">Nombre</label> 
					<div class="controls"><input type="text" name="name" id="name" value="" class="input-xlarge required" required="required" />	
					</div> 
				</div>
				<div class="control-group span12"> 
					<label for="description" class="control-label">Descripci&oacute;n</label> 
					<div class="controls"><input type="text" name="description" id="description" value="" class="input-xlarge required" required="required" />	
					</div> 
				</div>
				<div class="control-group span12"> 
					<label for="amount" class="control-label">Cantidad</label> 
					<div class="controls"><input type="text" name="amount" id="amount" value="" class="input-xlarge required" required="required" />	
					</div> 
				</div>
				
				<div class="form-actions btn-group span7">
					<a class="btn btn-danger" href="inventario.jsp"><i class="icon-remove icon-white"></i> Cancelar</a>
					<button class="btn btn-primary" type="submit"><i class="icon-ok icon-white"></i> Guardar</button>
				</div>
												
			</fieldset>
			</form>	
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
