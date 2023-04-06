<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Aanmeldformulier Model / Visagist(e) / Stylist(e)</title>
<link href="form.css" rel="stylesheet" type="text/css" />
</head>


<div class="form-style" id="contact_form">

    <div class="form-style-heading">Aanmeldformulier</div>


    <h4>TFP of betaalde shoot?</h4>

    <p>TFP is de afkorting van Time For Portfolio. Dat betekent dat we samenwerken zonder elkaar te betalen om ons beiden portfolio uit te breiden. De samenwerking is op gelijkwaardige basis en gericht op het versterken van elkaars portfolio.</p>

    <p>Als we een samenwerking aangaan op TFP basis betekent dat we beiden voor ons portfolio aan het werk zijn. Daarvoor zoeken we vooraf een onderwerp dat uitdagend en verniewend genoeg is om onze portfolio's aan te vullen. Familie portretten zijn geen geschikt onderwerp voor een TFP shoot.</p>

    <p>Het kan zijn dat we van te voren met elkaar hebben afgesproken om foto’s in lingerie of bedekt topless te maken. De foto’s vallen hierdoor dus onder de TFP samenwerking. Dat betekent dat de foto’s ook gebruikt kunnen worden voor mijn website, facebook of instagram profiel. Wil je liever niet getagged worden in de foto, of een pseudoniem gebruiken voor publicatie? Geef dit dan van te voren aan.</p>

    <p>De foto’s mogen door jou als model enkel gebruikt worden voor je eigen portfolio, website en privé gebruik. Voor ieder commercieel gebruik van de foto’s is toestemming nodig. Het (laten) publiceren in gedrukte media of insturen voor fotowedstrijden is tevens niet toegestaan. De foto’s vallen onder het auteursrecht en zijn eigendom van de fotograaf. Het is op geen enkele wijze toegestaan om iets aan de foto’s te veranderen of ze te bewerken. Lees ook de algemene voorwaarden die van toepassing zijn bij een fotoshoot.</p>

    <p>Wil je zelf de rechten over de foto's behouden of heb je liever niet dat deze foto’s online verschijnen. Dan is TFP niet de beste wijze om samen te werken. In dat geval adviseer ik dan ook een betaalde fotoshoot te boeken. Bij een betaalde fotoshoot huur jij mij in als fotograaf en bepaal je zelf wat er wel of niet met jouw foto's gebeurd.</p>

    <p>Bovenstaande zaken worden ook vastgelegd in een contract. Op basis van het ingevulde formulier, ontvang je vrijblijvend een contract per e-mail. Welke je ondertekend retour moet sturen.</p>

    <form id="contact_body" method="post" action="contact.php">

        </label>
            <label for="aanmelding"><span>Aanmeden als</span>
            <select name="aanmelding">
            <option value="Model">Model</option>
            <option value="Visagist(e) / Stylist(e)">Visagist(e) / Stylist(e)</option>
            </select>
        </label><br />

        <label for="name"><span>Naam <span class="required">*</span></span>
            <input type="text" name="name" data-required="true"/>
        </label>

        <label for="name"><span>Adres <span class="required">*</span></span>
            <input type="text" name="adres" data-required="true"/>
        </label>
        <label for="name"><span>Postcode <span class="required">*</span></span>
            <input type="text" name="postcode" data-required="true"/>
        </label>
        <label for="name"><span>Plaats <span class="required">*</span></span>
            <input type="text" name="plaats" data-required="true"/>
        </label>

        <label for="email"><span>Email <span class="required">*</span></span>
            <input type="email" name="email" data-required="true"/>
        </label>

        <label><span>Phone <span class="required">*</span></span>
            <input type="number" name="phone1" maxlength="3" placeholder="+91" />&mdash;
            <input type="number" name="phone2" maxlength="15" data-required="true"/>
        </label>

        <label><span>Geb. datum <span class="required">*</span></span>
            <input name="geboortedatum" type="date" value="31-01-1996" data-required="true"/>
        </label>

        <label>Plaats hier een url met foto's van jezelf (model) of een aantal moodboards met ide&euml;en (Visagist(e) / Stylist(e)). Dat kan een url naar je website zijn of naar bijvoorbeeld een dropbox album.</label>

        <label for="website"><span>Website / portfolio</span>
            <input type="text" name="website"/>
        </label>
        <br>


        <label for="subject"><span>Betreft</span>
            <select name="subject">
            <option value="TFP contract">Aanvraag TFP shoot</option>
            <option value="Betaalde shoot">Aanvraag betaalde shoot</option>
            </select>
        </label>
        <br>

        <label>Selecteer voor welke poseercategorien je in anmerking wilt komen</label>

        <input type="checkbox" name="fashion" value="x"><strong>Portret / Fashion</strong><br>
        Hieronder wordt verstaan foto’s waarop het model geheel gekleed staat afgebeeld, daaronder niet begrepen lingerie en badkleding. De tepels en/of schaamstreek is/zijn niet zichtbaar afgebeeld op de foto.
        <br><br>

        <input type="checkbox" name="lingerie" value="x"><strong>Lingerie / Badmode</strong><br>
        Hieronder wordt verstaan foto’s waarop het model geheel in badkleding of lingerie staat afgebeeld. De tepels en/of schaamstreek is/zijn niet zichtbaar afgebeeld op de foto.
        <br><br>

        <input type="checkbox" name="topless" value="x"><strong>Topless</strong><br>
        Hieronder wordt verstaan foto’s waarop het model staat afgebeeld, met de tepels geheel of gedeeltelijk zichtbaar afgebeeld op de foto, terwijl de schaamstreek echter niet zichtbaar is afge- beeld op de foto.
        <br><br>

        <input type="checkbox" name="bedekt" value="x"><strong>Bedekt naakt</strong><br>
        Het model is naakt, maar de meest intieme delen (tepels, schaamstreek) zijn op de opname niet zichtbaar. Zij worden afgedekt door ledematen, lakens, vitrages, accessoires of zijn niet zichtbaar door de afwezigheid van licht.
        <br><br>

        <input type="checkbox" name="esthetisch" value="x"><strong>Esthetisch naakt</strong><br>
        Hieronder wordt verstaan foto’s waarop het model staat afgebeeld, met de tepels geheel of gedeeltelijk zichtbaar afgebeeld op de foto, terwijl de schaamstreek geheel of gedeeltelijk niet zicht- baar is op de foto.
        <br><br>

        <label>Geef hieronder en korte toelichting van je idee&euml;n en verwachtingen van de fotoshoot.</label>

        <label for="message"><span>Bericht <span class="required">*</span></span>
            <textarea name="message" data-required="true"></textarea>
        </label>

        <label><span>&nbsp;</span>
        	<button type="submit">Submit</button>
        </label>
    </form>
    <div id="contact_results"></div>
</div>


<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript">
var allowed_file_size 	= "2097152"; //2MB allowed file size
var allowed_file_types 	= ['image/png', 'image/gif', 'image/jpeg', 'image/pjpeg', 'application/x-zip-compressed', 'application/pdf']; //Allowed file types
var border_color 		= "#C2C2C2"; //initial input border color
var maximum_files 		= 10; //Maximum number of files allowed

$("#contact_body").submit(function(e){
    e.preventDefault(); //prevent default action
	proceed = true;

	//simple input validation
	$($(this).find("input[data-required=true], textarea[data-required=true]")).each(function(){
            if(!$.trim($(this).val())){ //if this field is empty
                $(this).css('border-color','red'); //change border color to red
                proceed = false; //set do not proceed flag
            }
            //check invalid email
            var email_reg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
            if($(this).attr("type")=="email" && !email_reg.test($.trim($(this).val()))){
                $(this).css('border-color','red'); //change border color to red
                proceed = false; //set do not proceed flag
            }
	}).on("input", function(){ //change border color to original
		 $(this).css('border-color', border_color);
	});


	//if everything's ok, continue with Ajax form submit
	if(proceed){
		var post_url = $(this).attr("action"); //get form action url
		var request_method = $(this).attr("method"); //get form GET/POST method
		var form_data = new FormData(this); //Creates new FormData object

		$.ajax({ //ajax form submit
			url : post_url,
			type: request_method,
			data : form_data,
			dataType : "json",
			contentType: false,
			cache: false,
			processData:false
		}).done(function(res){ //fetch server "json" messages when done
			if(res.type == "error"){
				$("#contact_results").html('<div class="error">'+ res.text +"</div>");
			}
			if(res.type == "done"){
				$("#contact_results").html('<div class="success">'+ res.text +"</div>");
			}
		});
	}
});
</script>

</body>
</html>
