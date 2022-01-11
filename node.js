#!/usr/bin/env nodejs

const main = () => {
    console.log("SQL injekcija")
    console.log("Postoji tablica sa nazivom korisnici.")
    console.log("Sadrži polja: id, ime, prezime, lozinka")
    console.log("SQL na serveru: \"SELECT * FROM korisnici WHERE id = \" + txtUserId;")
    const readline = require('readline').createInterface({
	input: process.stdin,
	output: process.stdout
    })
    readline.question(`Input: `, upit => {
	if(!provjeriUpit(upit,1)){
	    console.log("Upit je neispravan!")
	    return
	}
	console.log("Upit ispravan!")
	console.log('SQL na serveru: "SELECT * FROM korisnici WHERE ime =\" + uName + \" AND lozinka =\" + uPass\ + "')
	readline.question("Input: ", upit2 => {
	    if(!provjeriUpit(upit2,2)){
		console.log("Upit je neispravan!")
		return
	    }
	    console.log("Drugi upit je ispravan!")
	    console.log('SQL na serveru: "SQL na serveru: \"SELECT * FROM korisnici WHERE id = \" + txtUserId;')
	    console.log("Potrebno je izbrisati tablicu narudzbe!")
	    readline.question("Input: ", upit3 => {
		if(!provjeriUpit(upit3,3)){
		    console.log("Upit je neispravan!")
		    return
		}
		console.log("Treći upit je ispravan!")
		console.log("Flag: 3073")
		readline.close()
		main()
	    })
	})
    })
}

const provjeriUpit = (upit,pitanje) =>{
    switch(pitanje){
    case 1: 
	if(upit.toLowerCase() == "50 or 1=1") return true;
	break;
    case 2:
	if(upit.toLowerCase() == "\" or \"\"=\"\"") return true;
	break;
   case 3:
	if(upit.toLowerCase() == "50; drop table narudzbe") return true;
	break;
    }
    
    return false;
}

main()
