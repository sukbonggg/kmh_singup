<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../home/header.jsp"%>
<!doctype html>
<html lang="en">



<!-- jqGrid 라이브러리 추가  -->

<link rel="stylesheet" type="text/css" href="/css/ui.jqgrid.css" />

<link rel="stylesheet" href="./jquery-ui-1.12.1.custom/jquery-ui.structure.css">
<link rel="stylesheet" href="./jquery-ui-1.12.1.custom/jquery-ui.theme.css">
<link rel="stylesheet" type="text/css" href="/css/jquery-ui.css">


<script src="/js/jquery-1.7.2.min.js" type="text/javascript"></script>
<script src="/js/i18n/grid.locale-kr.js" type="text/javascript"></script>
<script src="/js/jquery.jqGrid.min.js" type="text/javascript"></script>



<!-- <li>
<a class="update-pro" href="https://www.themeineed.com/downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>UPGRADE TO PRO</span></a>
						</li> -->


<!-- LEFT SIDEBAR -->
<div id="sidebar-nav" class="sidebar">
	<div class="sidebar-scroll">
		<nav>
			<ul class="nav">
				<li><a href="index.html" class="active"><i
						class="lnr lnr-home"></i> <span>Dashboard</span></a></li>
				<li><a href="elements.html" class=""><i
						class="lnr lnr-code"></i> <span>Board</span></a></li>
				<li><a href="charts.html" class=""><i
						class="lnr lnr-chart-bars"></i> <span>JqGrid</span></a></li>
				<li><a href="icons.html" class=""><i
						class="lnr lnr-linearicons"></i> <span>API</span></a></li>
			</ul>
		</nav>
	</div>
</div>







<footer>
	<div class="container-fluid">
		<p class="copyright">
			Shared by <i class="fa fa-love"></i><a
				href="https://bootstrapthemes.co">BootstrapThemes</a>
		</p>
	</div>
</footer>

<!-- END WRAPPER -->
<!-- Javascript -->
<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
<script src="/vendor/chartist/js/chartist.min.js"></script>
<script src="/scripts/klorofil-common.js"></script>

<body>
 
 <table id="jqGrid"></table>
<div id="gridpager"></div>
  
</body>
<script>
var dataArr = [ 
    {ID:"1",javascript:"80",python:"60",jsp:"50"},
    {ID:"2",javascript:"57",python:"80",jsp:"50"},
    {ID:"3",javascript:"90",python:"40",jsp:"85"},
    {ID:"4",javascript:"67",python:"84",jsp:"76"},
    {ID:"5",javascript:"35",python:"83",jsp:"85"},
    {ID:"6",javascript:"90",python:"67",jsp:"56"},
    {ID:"7",javascript:"80",python:"60",jsp:"50"},
    {ID:"8",javascript:"45",python:"67",jsp:"100"},
    {ID:"9",javascript:"90",python:"40",jsp:"68"},
    {ID:"10",javascript:"67",python:"57",jsp:"76"},
    {ID:"11",javascript:"36",python:"83",jsp:"35"},
    {ID:"12",javascript:"76",python:"35",jsp:"98"},
    ]; 
    
$("#jqGrid").jqGrid({
   datatype: "local",
   data: dataArr,
   height: 250, 
   width: 500,
   colNames : ['ID','자바스크립트','파이썬','JSP'], 

   colModel:[
       {name:"ID",
       index:"ID",
       width:15,
       align:'center',
       hidden:false
       },

       {name : 'javascript',
       index : 'javascript',
       width : 70, 
       align : 'left',
       hidden:false,
       },

       {name : 'python',
       index : 'python',
       width : 70, 
       align : 'center',
       hidden:false
       },

       {name : 'jsp',
       index : 'jsp',
       width : 70, 
       resizable : true,
       align : 'right',
       hidden:false
       }],

   loadtext: "로딩중일때 표시되는 텍스트!",
   caption: "jQuery Grid: jqGrid 샘플",

   pager:"#gridpager",
   rowNum:5,
</script>

</html>