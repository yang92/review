<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>WEIVER - 내 정보</title>

    <!-- Bootstrap Core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
	
    <!-- MetisMenu CSS -->
    <link href="resources/css/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="resources/css/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="resources/css/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="resources/fonts/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<script type="text/javascript">
$("#profileUpdateSuccess").on("click", function() {
	alert("수정이 완료되었습니다.");
});
</script>
<style type="text/css">
.form-control{
	max-width: 150px;
}

#profile_image{
	height: 150px;
	width: 150px;
}
#info_col{
	max-width: 400px;
}
#updateButton{
	vertical-align: bottom;
}
#introduce{
	max-width: 300px;
}

</style>

</head>



<body>

    <div id="wrapper">

       <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="main.main"><img src="resources/images/mainLogo.jpg" width="130"></a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
            <c:if test="${id == null}">
            	<li class="pull-right"><a href="/proj/login.member"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	      		<li class="pull-right"><a href="/proj/join.member"><span class="glyphicon glyphicon-plus"></span> Register</a></li>
	        	
	      	</c:if>
            <c:if test="${id != null}">

                <!-- /.dropdown -->
                <li class="dropdown pull-right">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="profile.member"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="logout.member"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
                </c:if>
            </ul>
            <!-- /.navbar-top-links -->

           
            <!-- /.navbar-static-side -->
        </nav>


<!--          div 바디   절취선 ----------------------------------------------------------------------------- -->
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Profile</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div class="row">
                <div class="col-lg-9">
                    <div class="panel panel-default">
<!--                         <div class="panel-heading"> -->
<!--                             Striped Rows -->
<!--                         </div> -->
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        	<form action="/proj/profileUpdate.member" id="profileUpdateSuccess"  method="post">
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <colgroup>
                                    	<col width="30%" />
                                    	<col width="*%" id="info_col"/>
                                    </colgroup>	
                                    <tbody>
                                           
                                        <tr height="200px">
                                            
                                            <td colspan="2">
                                            		프로필 사진<br/>
<!-- 												<div  class="col-lg-2 col-md-2"> -->
                                            		<img alt="이미지가 없습니다." 
                                            		src="resources/images/척.jpg" 
                                            		class="img-thumbnail"
                                            		id="profile_image">
<!--                                             	</div> -->
												<br/>
                                            <label>프로필 수정</label>
                                            <input type="file">
                                        	</td>
                                        </tr>
                                        <tr>
                                            <td>아이디</td> <td>${userInfo.member_id}</td>
                                        </tr>
                                        <tr>
                                            <td>비밀번호</td> <td><input class="form-control" type="password" name="member_pw" id="pw"  maxlength="16"></td>
                                        </tr>
                                        <tr>
                                            <td>비밀번호 확인</td> <td><input class="form-control" type="password" id="secondPass"  maxlength="16"></td>
                                        </tr>
                                        <tr>
                                            <td>이름</td> <td>${userInfo.member_name }</td>
                                        </tr>
                                        <tr>
                                            <td>닉네임</td> <td><input class="form-control" type="text" name="member_nickname" id="secondPass"  maxlength="16" value="${userInfo.member_nickname}"></td>
                                        </tr>
                                        <tr>
                                            <td>등급</td> <td>${userInfo.member_grade }</td>
                                        </tr>
                                        <tr>
                                            <td>H.P</td> <td><input class="form-control" type="text" name="member_phonenumber" id="secondPass"  maxlength="16" value="${userInfo.member_phonenumber}"></td>
                                        </tr>
                                        <tr>
                                            <td>E-Mail</td> <td><input class="form-control" type="text" name="member_email" id="secondPass"  maxlength="16" value="${userInfo.member_email}"></td>
                                        </tr>
                                        <tr>
                                            <td>성별</td> <td>${userInfo.member_sex }</td>
                                        </tr>
                                        <tr>
                                            <td>생일</td> <td><input class="form-control" type="text" name="member_birth" id="secondPass"  maxlength="16" value="${userInfo.member_birth}"></td>
                                        <tr>
                                            <td>자기소개(최대 100Bytes)</td> <td><textarea class="form-control" name="member_memo" rows="3" maxlength="100" id="introduce">${userInfo.member_memo}</textarea></td>
                                        </tr>
                                    </tbody>
                                </table>
                                    <input type="submit"  class="btn btn-primary" id="updateButton" value="수정">
                            </div>
                            </form>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
</div></div>
<!--          div 바디   절취선 ----------------------------------------------------------------------------- -->
    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="resources/js/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="resources/js/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="resources/js/raphael-min.js"></script>
    <script src="resources/js/morris.min.js"></script>
    <script src="resources/js/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="resources/js/sb-admin-2.js"></script>
    <script src="resources/js/passwordCheck.js"></script>
    

</body>

</html>
