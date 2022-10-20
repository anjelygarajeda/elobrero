 <header class="main-header">
 	
	<!--=====================================
	LOGOTIPO
	======================================-->
	<a href="inicio" class="logo">

		<span class="logo-mini">
			
			<img src="vistas/img/plantilla/logo.png" class="img-responsive" style="padding:10px">

		</span>

		<span class="logo-lg">
			
			<img src="vistas/img/plantilla/logo.png" class="img-responsive" style="padding:7px 0px">

		</span>

	</a>

	<!--=====================================
	BARRA DE NAVEGACIÓN
	======================================-->
	<nav class="navbar navbar-static-top" role="navigation">

		<a href="#" class="sidebar-toggle hidden-lg" data-toggle="push-menu" role="button"></a>

		<div class="navbar-custom-menu">
				
			<ul class="nav navbar-nav">

				<li class="hidden-sm hidden-xs">
					
					<a class="nombre">

						<span>TIENDA EL OBRERO</span>

					</a>
				
				</li>
				
				<li class="user user-menu">

					<a>

						<?php

						if($_SESSION["foto"] != ""){

							echo '<img src="'.$_SESSION["foto"].'" class="user-image">';

						}else{

							echo '<img src="vistas/img/usuarios/default/anonymous.png" class="user-image">';

						}

						?>

						<span class="hidden-xs"><?php echo $_SESSION["nombre"]; ?></span>

					</a>

				</li>

				<li class="btn-danger">
					
					<a href="salir">

						<span><i class="fas fa-power-off"></i></span>

					</a>
					
				</li>

			</ul>

		</div>

	</nav>

 </header>