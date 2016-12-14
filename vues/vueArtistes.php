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

                        $compteur = 65;
                    ?>
                        <h1>A</h1>
                    <?php 
                        foreach ($data as $artiste){
                            $premiereLettre = substr($artiste["nomArtiste"], 0, 1);
                            
                            if(chr($compteur) != $premiereLettre){
                                $compteur++;
                        ?>
                        <h1><?php echo chr($compteur); ?></h1>
                    <?php    
                            }
                            if(($artiste["prenom"]!="Inconnu") && (chr($compteur) == $premiereLettre)){   
                    ?>    
                                <li>
                                    <a href="index.php?Public&action=descriptionArtiste&id=<?php echo $artiste['id'] ?>">
                                        <?php echo $artiste["prenom"] . " " . $artiste["nomArtiste"]; ?>

                                    </a>
                                </li>

                    <?php 
                            }//fermeture if
                        } //fermeture foreach
                        // fini d'écrire les lettres jusqu'à Z si'il en manque
                        if($compteur < 91){
                            do{
                            $compteur++;
                        ?>
                        <h1><?php echo chr($compteur); ?></h1>
                    <?php        
                            }while($compteur < 90) ;
                        }
				    ?>
				</ul>
		</section>
	</div>
</div>	
