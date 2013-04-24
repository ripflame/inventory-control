<%@page import="java.util.Iterator"%><%@page import="java.util.List"%><%@page import="inventory_management.Product"%><%@page import="managers.ProductsManager"%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"><!--Design by Free CSS Templateshttp://www.freecsstemplates.orgReleased for free under a Creative Commons Attribution 2.5 LicenseName       : Workspace Description: A two-column, fixed-width design with dark color scheme.Version    : 1.0Released   : 20132602--><html xmlns="http://www.w3.org/1999/xhtml">    <head>        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />        <title></title>        <meta name="keywords" content="" />        <meta name="description" content="" />        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700|Archivo+Narrow:400,700" rel="stylesheet" type="text/css">            <script src="js/bootstrap/js/bootstrap.min.js"></script>            <link rel="stylesheet" href="js/jquery-ui-1.8.17.custom.css" type="text/css" />            <link rel="stylesheet" href="js/bootstrap/css/bootstrap.min.css" type="text/css" />            <link href="css/default.css" rel="stylesheet" type="text/css" media="all" />            <link href="css/index.css" rel="stylesheet" type="text/css" media="all" />            <!--[if IE 6]>                        <link href="default_ie6.css" rel="stylesheet" type="text/css" />                        <![endif]-->    </head>    <body>        <div id="header-wrapper">            <div id="header" class="container">                <div id="logo">                    <h1><img src="images/pink_lion.png" alt="pink_lion" width="200" height="90"><a href=".">Hakuna Matata</a></h1>                </div>                <div id="logout">                    <!-- Gilberto -->                    <form name="logoutForm" method="post" action="/inventario/admin/logout">                        <input class="btn_style1" type="submit" name="logout" value="Log Out"></input>                    </form>                    <!-- Gilberto -->                </div>            </div>        </div>        <div id="page-wrapper">            <div id="page" class="container">                <div id="content">                    <form name="addProduct" method="post" action="/inventario/admin/addProduct">                        <input type="submit" name="addProduct" value="+ Add Element" class="btn_style1 btn_add_element a_color>">                    </form>                    <header>INVENTORY</header>                    <table id="rounded-corner" summary="2007 Major IT Companies' Profit">                        <thead>                            <tr>                                <th scope="col" class="rounded-company">Id</th>                                <th scope="col" class="rounded-q1">Nombre</th>                                <th scope="col" class="rounded-q2">Descripcion</th>                                <th scope="col" class="rounded-q3">Cantidad</th>                                <th scope="col" class="rounded-q4"></th>                            </tr>                        </thead>                        <tbody>                            <%                                ProductsManager prodMan = new ProductsManager();                                List<Product> prodList = prodMan.getProducts();                                Iterator<Product> prodIterator = prodList.iterator();                                while (prodIterator.hasNext()) {                                    Product tempProd = prodIterator.next();                                    out.println("<tr><td>" + tempProd.getId() + "</td>");                                    out.println("<td>" + tempProd.getName() + "</td>");                                    out.println("<td>" + tempProd.getDescription() + "</td>");                                    out.println("<td>" + tempProd.getQuantity() + "</td>");                                    out.println("<td>"                                            + "<a class='btn btn-mini btn' href='form_edit.jsp' title='Editar'><i class='icon icon-pencil'></i></a>"                                            + "<a class='btn btn-mini btn' title='Elimine este banner'><i class='icon icon-trash'></i></a>"                                            + "</tr>");                                }                            %>                            <!--<tr>                                                            <td>Microsoft</td>                                                        <td>20.3</td>                                                        <td>30.5</td>                                                        <td>23.5</td>                                                        <td>                                                            <a class="btn btn-mini btn" href="form_edit.jsp" title="Editar"><i class="icon icon-pencil"></i></a>                                                            <a class="btn btn-mini btn" title="Elimine este banner"><i class="icon icon-trash"></i></a>                                                        </td>                                                    </tr>                                                    <tr>                                                            <td>Google</td>                                                        <td>50.2</td>                                                        <td>40.63</td>                                                        <td>45.23</td>                                                        <td>                                                            <a class="btn btn-mini btn" href="form_edit.jsp" title="Editar"><i class="icon icon-pencil"></i></a>                                                            <a class="btn btn-mini btn" title="Elimine este banner"><i class="icon icon-trash"></i></a>                                                        </td>                                                    </tr>                                                    <tr>                                                            <td>Apple</td>                                                        <td>25.4</td>                                                        <td>30.2</td>                                                        <td>33.3</td>                                                        <td>                                                            <a class="btn btn-mini btn" href="form_edit.jsp" title="Editar"><i class="icon icon-pencil"></i></a>                                                            <a class="btn btn-mini btn" title="Elimine este banner"><i class="icon icon-trash"></i></a>                                                        </td>                                                    </tr>                                                    <tr>                                                            <td>IBM</td>                                                        <td>20.4</td>                                                        <td>15.6</td>                                                        <td>22.3</td>                                                        <td>                                                            <a class="btn btn-mini btn" href="form_edit.jsp" title="Editar"><i class="icon icon-pencil"></i></a>                                                            <a class="btn btn-mini btn" title="Elimine este banner"><i class="icon icon-trash"></i></a>                                                        </td>                                                    </tr>                                                    <tr>                                                            <td>Microsoft</td>                                                        <td>20.3</td>                                                        <td>30.5</td>                                                        <td>23.5</td>                                                        <td>                                                            <a class="btn btn-mini btn" href="form_edit.jsp" title="Editar"><i class="icon icon-pencil"></i></a>                                                            <a class="btn btn-mini btn" title="Elimine este banner"><i class="icon icon-trash"></i></a>                                                        </td>                                                    </tr>                                                    <tr>                                                            <td>Microsoft</td>                                                        <td>20.3</td>                                                        <td>30.5</td>                                                        <td>23.5</td>                                                        <td>                                                            <a class="btn btn-mini btn" href="form_edit.jsp" title="Editar"><i class="icon icon-pencil"></i></a>                                                            <a class="btn btn-mini btn" title="Elimine este banner"><i class="icon icon-trash"></i></a>                                                        </td>                                                    </tr>                                                    <tr>                                                            <td>Microsoft</td>                                                        <td>20.3</td>                                                        <td>30.5</td>                                                        <td>23.5</td>                                                        <td>                                                            <a class="btn btn-mini btn" href="form_edit.jsp" title="Editar"><i class="icon icon-pencil"></i></a>                                                            <a class="btn btn-mini btn" title="Elimine este banner"><i class="icon icon-trash"></i></a>                                                        </td>                                                    </tr>                                                    <tr>                                                            <td>Microsoft</td>                                                        <td>20.3</td>                                                        <td>30.5</td>                                                        <td>23.5</td>                                                        <td>                                                            <a class="btn btn-mini btn" href="form_edit.jsp" title="Editar"><i class="icon icon-pencil"></i></a>                                                            <a class="btn btn-mini btn" title="Elimine este banner"><i class="icon icon-trash"></i></a>                                                        </td>                                                    </tr>                                                    <tr>                                                            <td>Microsoft</td>                                                        <td>20.3</td>                                                        <td>30.5</td>                                                        <td>23.5</td>                                                        <td>                                                            <a class="btn btn-mini btn" href="form_edit.jsp" title="Editar"><i class="icon icon-pencil"></i></a>                                                            <a class="btn btn-mini btn" title="Elimine este banner"><i class="icon icon-trash"></i></a>                                                        </td>                                                    </tr>                                            <tr>                                                            <td>Microsoft</td>                                                        <td>20.3</td>                                                        <td>30.5</td>                                                        <td>23.5</td>                                                        <td>                                                            <a class="btn btn-mini btn" href="form_edit.jsp" title="Editar"><i class="icon icon-pencil"></i></a>                                                            <a class="btn btn-mini btn" title="Elimine este banner"><i class="icon icon-trash"></i></a>                                                        </td>                                                    </tr>-->                        </tbody>                    </table>                </div>            </div>        </div>        <div id="footer-wrapper">            <div id="copyright" class="container">                <p>Copyright (c) 2013. <font color="lightgray">Roberto, el león rosado.</font> All rights reserved. Design by <a href="http://www.freecsstemplates.org">FCT</a>.</p>            </div>        </div>    </body></html>