<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<%@include file="../home/header.jsp"%>

  

  

<div id="sidebar-nav" class="sidebar">
	<div class="sidebar-scroll">
		<nav>
			<ul class="nav">
				<li><a href="index.html" class="active"><i
						class="lnr lnr-home"></i> <span>Dashboard</span></a></li>
				<li><a href="elements.html" class=""><i
						class="lnr lnr-code"></i> <span>Elements</span></a></li>
				<li><a href="charts.html" class=""><i
						class="lnr lnr-chart-bars"></i> <span>Charts</span></a></li>
				<li><a href="panels.html" class=""><i class="lnr lnr-cog"></i>
						<span>Panels</span></a></li>
				<li><a href="notifications.html" class=""><i
						class="lnr lnr-alarm"></i> <span>Notifications</span></a></li>
				<li><a href="#subPages" data-toggle="collapse"
					class="collapsed"><i class="lnr lnr-file-empty"></i> <span>Pages</span>
						<i class="icon-submenu lnr lnr-chevron-left"></i></a>
					<div id="subPages" class="collapse ">
						<ul class="nav">
							<li><a href="page-profile.html" class="">Profile</a></li>
							<li><a href="page-login.html" class="">Login</a></li>
							<li><a href="page-lockscreen.html" class="">Lockscreen</a></li>
						</ul>
					</div></li>
				<li><a href="tables.html" class=""><i class="lnr lnr-dice"></i>
						<span>Tables</span></a></li>
				<li><a href="typography.html" class=""><i
						class="lnr lnr-text-format"></i> <span>Typography</span></a></li>
				<li><a href="icons.html" class=""><i
						class="lnr lnr-linearicons"></i> <span>Icons</span></a></li>
			</ul>
		</nav>
	</div>
</div>
<!-- END LEFT SIDEBAR -->
<!-- MAIN -->
<div class="main">
	<!-- MAIN CONTENT -->
	
	<div class="main-content">
		<div class="container-fluid">
			<!-- OVERVIEW -->
			<form action="doJoin" method="post">
			<div class="panel panel-headline">
				<div class="panel-heading">
				
					<h3 class="panel-title">Sing Up</h3>
						<div><input type="text" name="nickname" class="name panel panel-headline" style="width: 800px;"  maxlength="20"  placeholder="nickname" ></div>
						<div><input type="text" name="name" class="name panel panel-headline" style="width: 800px;"  maxlength="20"  placeholder="name" ></div>
						<div><input type="text" name="loginId" class="loginId panel panel-headline" style="width: 800px;" maxlength=20  placeholder="loginId" ></div>
						<div><input type="password" name="loginPw" class="loginPw panel panel-headline" maxlength="20" style="width: 800px;" placeholder="loginPw" ></div>
						<div><input type="tel" name="cellphoneNum" class="cepllphoneNum panel panel-headline" style="width: 800px;" maxlength="20"  placeholder="cellphoneNum" ></div>
						<div><input type="email" name="email" class="email panel panel-headline" maxlength="20" style="width: 800px;"  placeholder="email" ></div>
						<div><input type="submit" style="width: 800px; background-color: #B0E0E6;  color:white "value="Join" ></div>
						
				</div>
			</div>
			</form>
		</div>


	</div>
	
	<!-- END MAIN -->
	<div class="clearfix"></div>
	<footer>
		<div class="container-fluid">
			<p class="copyright">
				Shared by <i class="fa fa-love"></i><a
					href="https://bootstrapthemes.co">BootstrapThemes</a>
			</p>
		</div>
	</footer>
</div>
<!-- END WRAPPER -->
<!-- Javascript -->
<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src=/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
<script src="/vendor/chartist/js/chartist.min.js"></script>
<script src="/scripts/klorofil-common.js"></script>
<script>
	$(function() {
		var data, options;

		// headline charts
		data = {
			labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
			series: [
				[23, 29, 24, 40, 25, 24, 35],
				[14, 25, 18, 34, 29, 38, 44],
			]
		};

		options = {
			height: 300,
			showArea: true,
			showLine: false,
			showPoint: false,
			fullWidth: true,
			axisX: {
				showGrid: false
			},
			lineSmooth: false,
		};

		new Chartist.Line('#headline-chart', data, options);


		// visits trend charts
		data = {
			labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
			series: [{
				name: 'series-real',
				data: [200, 380, 350, 320, 410, 450, 570, 400, 555, 620, 750, 900],
			}, {
				name: 'series-projection',
				data: [240, 350, 360, 380, 400, 450, 480, 523, 555, 600, 700, 800],
			}]
		};

		options = {
			fullWidth: true,
			lineSmooth: false,
			height: "270px",
			low: 0,
			high: 'auto',
			series: {
				'series-projection': {
					showArea: true,
					showPoint: false,
					showLine: false
				},
			},
			axisX: {
				showGrid: false,

			},
			axisY: {
				showGrid: false,
				onlyInteger: true,
				offset: 0,
			},
			chartPadding: {
				left: 20,
				right: 20
			}
		};

		new Chartist.Line('#visits-trends-chart', data, options);


		// visits chart
		data = {
			labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
			series: [
				[6384, 6342, 5437, 2764, 3958, 5068, 7654]
			]
		};

		options = {
			height: 300,
			axisX: {
				showGrid: false
			},
		};

		new Chartist.Bar('#visits-chart', data, options);


		// real-time pie chart
		var sysLoad = $('#system-load').easyPieChart({
			size: 130,
			barColor: function(percent) {
				return "rgb(" + Math.round(200 * percent / 100) + ", " + Math.round(200 * (1.1 - percent / 100)) + ", 0)";
			},
			trackColor: 'rgba(245, 245, 245, 0.8)',
			scaleColor: false,
			lineWidth: 5,
			lineCap: "square",
			animate: 800
		});

		var updateInterval = 3000; // in milliseconds

		setInterval(function() {
			var randomVal;
			randomVal = getRandomInt(0, 100);

			sysLoad.data('easyPieChart').update(randomVal);
			sysLoad.find('.percent').text(randomVal);
		}, updateInterval);

		function getRandomInt(min, max) {
			return Math.floor(Math.random() * (max - min + 1)) + min;
		}

	});
	</script>
</body>

</html>
