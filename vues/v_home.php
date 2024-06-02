<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Devine le pokémon ! </title>
    <link rel="icon" href="utilities/pokeball.png">
    <script src="main.js" async></script>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h2>DEVINE LE <img src="utilities/pokeball.png" alt="" class="pokeball"></h2>
    <div class="container">
        <?php 
            $pdo = PdoPokemon::getPdoPokemon();
            $img = $pdo->getImages();

            $pokemonName = $img[0]['nom_pok'];
            //echo $pokemonName;
        ?>
        <img src="../images/<?php echo $img[0]['image']; ?>.png" alt=""id="pokemonimage">
        <p id="name">QUEL EST SON NOM ?</p>
        <p id="wrongname">Et bah non ! Essaie à nouveau ou passe au suivant</p>
        <input type="text" id="answer" placeholder="NOM DU POKEMON">
        <button id="submit">JE TE CHOISIS !</button>
        <a href="" id="next">SUIVANT</a>
    </div>
</body>
</html>

<script>
// Variables

const image = document.getElementById('pokemonimage');
const realname = "<?php echo $pokemonName; ?>";
const answer = document.getElementById('answer');
const button = document.getElementById('submit');


// Apres actions

const name = document.getElementById('name');
const next = document.getElementById('next');
const wrongname = document.getElementById('wrongname');



//alert(realname);

button.onclick = function(){
    if(realname.toLowerCase() == answer.value.toLowerCase()){
        name.innerText = realname;
        name.style.color = '#CC444B';
        answer.style.display = 'none';
        button.style.display = 'none';
        next.style.display = 'block';
        image.style.filter = 'brightness(100%)';
        wrongname.style.display = 'none';

        //alert('yes');

    }else{
        next.style.display = 'block';
        answer.style.borderColor = '#CC444B';
        answer.style.color = 'black';
        wrongname.style.display = 'block';
    }
}
    




//alert(Realname);




</script>