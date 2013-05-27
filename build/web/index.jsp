<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Inventory System</title>
        <link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/login.css" rel="stylesheet" type="text/css" media="all" />
    </head>
    <body>
        <div id="wrapper">
            <img src="images/pink_lion.png" alt="pink_lion" class="pink_lion">
                <div id="form">
                    <table width="300" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
                        <tr>
                            <form name="form1" method="post" action="login">
                                <td>
                                    <table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#FFFFFF">
                                        <tr>
                                            <td colspan="3"><strong>Member Login</strong></td>
                                        </tr>
                                        <tr>
                                            <td class="td_align">Username</td>
                                            <td width="294"><input name="myusername" type="text" id="myusername" required="required"></td>
                                        </tr>
                                        <tr>
                                            <td class="td_align">Password</td>
                                            <td><input name="mypassword" type="text" id="mypassword" required="required"></td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td><input type="submit" name="Submit" value="Login"></td>
                                            <td><a class="btn btn-danger" href="admin/createUser"><i class="icon-remove icon-white"></i>Registrarse</a></td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                            </form>
                        </tr>
                    </table>
                </div>
        </div>
    </body>
</html>