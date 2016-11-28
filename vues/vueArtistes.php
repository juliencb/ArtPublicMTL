<!--commencer directement avec la div contenu-->
<div class="contenu">
	<aside class="recherche">
		<!--recherche ici -->
	</aside>
	<div id="zoneDesArtistes">
		<section id="artistes">
			<h1>Artistes</h1>
				<ul>
					<?php 
                        for($i = "a"; $i <= "z"; $i++){ ?>
                            <h2><?php echo $i; ?></h2>
                            <?php  
                            foreach ($data as $artiste){
                                if($artiste["prenom"]!="Inconnu"){      
                            ?>
                                    <li>
                                        <a href="index.php?Public&action=descriptionArtiste&id=<?php echo $artiste['id'] ?>">
                                            <?php echo $artiste["prenom"] . " " . $artiste["nomArtiste"]; ?>

                                        </a>
                                    </li>
                        <?php 
                                }//fermeture if
                            } //fermeture foreach
						} //fermeture fo
					   ?>
				</ul>
		</section>
	</div>
</div>	

