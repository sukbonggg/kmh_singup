<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../home/header.jsp"%>
<!doctype html>
<html lang="ko">


<head>
<!-- jqGrid 라이브러리 추가  -->



<link rel="stylesheet" href="/css/jquery-ui.structure.css">
<link rel="stylesheet" href="/css/jquery-ui.theme.css">
<link rel="stylesheet" type="text/css" href="/css/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="/css/ui.jqgrid.css" />

<script  src="/js/jquery-1.7.2.min.js"    type="text/javascript" ></script>
<script  src="/js/i18n/grid.locale-kr.js" type="text/javascript" ></script>
<script  src="/js/jquery.jqGrid.min.js"   type="text/javascript" ></script>




	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="/css/bootstrap.min.css">
	<link rel="stylesheet" href="/css/font-awesome.min.css">
	<link rel="stylesheet" href="/vendor/linearicons/style.css">
	<link rel="stylesheet" href="/vendor/chartist/css/chartist-custom.css">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="/css/main.css">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="/css/demo.css">
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="/img/favicon.png">


 <style>
        #area {
            width: 1280px;
            height: 800px;
        }
    </style>
</head>


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
<script src="/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="/vendor/chartist/js/chartist.min.js"></script>
<script src="/scripts/klorofil-common.js"></script>

<style>
        #area {
            width: 1280px;
            height: 800px;
        }
    </style>
</head>

<body>

<table id="jqGrid">

</table>
<div id="area">
    <div id="jqpager"></div>

</div>

</body>
<script>
    $("#jqGrid").jqGrid({
        datatype: "local",
        colNames:['seq','2번', '3번', '4번','5번','6번','7번','8번','9번',],
        colModel:[
            {name:'seq', align:'right'},
            {name:'first', align:'right'},
            {name:'second', align:'right'},
            {name:'third', align:'right'},
            {name:'fifth', align:'right'},
            {name:'sixth', align:'right'},
            {name:'seventh', align:'right'},
            {name:'eighth', align:'right'},
            {name:'ninth', align:'right'},

        ],
        caption: "Custom_edu_first_jqgrid",
        pager : "#jqpager",
        height: 'auto',

    })

    const data1 =  {
        'seq' : 1,
        'first' : 20,
        'second' : 30,
        'third' : 30,
        'fifth' : 40,
        'sixth' : 80,
        'seventh' : 90,
        'eighth' : 70,
        'ninth' : 10
    }

    const data2 =  {
        'seq' : 2,
        'first' : 20,
        'second' : 30,
        'third' : 30,
        'fifth' : 40,
        'sixth' : 80,
        'seventh' : 90,
        'eighth' : 70,
        'ninth' : 10
    }

    const data3 =  {
        'seq' : 3,
        'first' : 20,
        'second' : 30,
        'third' : 30,
        'fifth' : 40,
        'sixth' : 80,
        'seventh' : 90,
        'eighth' : 70,
        'ninth' : 10
    }

    const arr = [data1, data2, data3];

    for(let i in arr){
        $("#jqGrid").jqGrid('addRowData',i+1,arr[i]);
    }


</script>

</html>