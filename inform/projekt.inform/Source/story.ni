"projekt" by "turky".

Release along with an interpreter.
Release along with a website.
Release along with the introductory booklet.

Policijska stanica is a room. "Oko Vas vidite cetiri sobe za ispitivanje. U svakoj sobi je po jedan policajac i zeli Vas ispitati o Turingovom testu."

Soba za ispitivanje 1 is north of Policijska stanica. "Vidite ljutog policajca koji ima pitanje za Vas. Pitajte ga o Turingovom testu i recite mu odgovor."

Soba za ispitivanje 2 is east of Policijska stanica. "Vidite ljutog policajca koji ima pitanje za Vas. Pitajte ga o Turingovom testu i recite mu odgovor."

Soba za ispitivanje 3 is south of Policijska stanica. "Vidite ljutog policajca koji ima pitanje za Vas. Pitajte ga o Turingovom testu i recite mu odgovor."

Soba za ispitivanje 4 is west of Policijska stanica. "Vidite ljutog policajca koji ima pitanje za Vas. Pitajte ga o Turingovom testu i recite mu odgovor. Izlaz iz stanice je juzno."

Izlaz iz stanice is south of Soba za ispitivanje 4.

Odgovor 1 is a truth state that varies.

Odgovor 2 is a truth state that varies.

Odgovor 3 is a truth state that varies.

Odgovor 4 is a truth state that varies.

When play begins:
     now Odgovor 1 is false;
     now Odgovor 2 is false;
     now Odgovor 3 is false;
     now Odgovor 4 is false;

Policajac 1 is a person.

Policajac 1 is in Soba za ispitivanje 1.

Instead of asking Policajac 1 about "Turingov test", say "Policajac 1 pita: Tko je izdao test?".

Instead of telling Policajac 1 about "Alan Turing":
	say "Policajac 1 kaze: Tocan odgovor";
	now Odgovor 1 is true.

Instead of going to Soba za ispitivanje 2:
	if Odgovor 1 is false:
		say "Ne mozete u Sobu za ispitivanje 2 dok niste odgovorili na pitanje iz Sobe za ispitivanje 1";
	otherwise:
		continue the action.

Policajac 2 is a person.

Policajac 2 is in Soba za ispitivanje 2.

Instead of asking Policajac 2 about "Turingov test", say "Policajac 2 pita: Koje godine je test izdan?".

Instead of telling Policajac 2 about "1950":
	say "Policajac 2 kaze: Tocan odgovor";
	now Odgovor 2 is true.

Instead of going to Soba za ispitivanje 3:
	if Odgovor 2 is false:
		say "Ne mozete u Sobu za ispitivanje 3 dok niste odgovorili na pitanje iz Sobe za ispitivanje 2";
	otherwise:
		continue the action.

Policajac 3 is a person.

Policajac 3 is in Soba za ispitivanje 3.

Instead of asking Policajac 3 about "Turingov test", say "Policajac 3 pita: Kako se test originalno zvao?".

Instead of telling Policajac 3 about "igra imitacije":
	say "Policajac 3 kaze: Tocan odgovor";
	now Odgovor 3 is true.

Instead of going to Soba za ispitivanje 4:
	if Odgovor 3 is false:
		say "Ne mozete u Sobu za ispitivanje 4 dok niste odgovorili na pitanje iz Sobe za ispitivanje 3";
	otherwise:
		continue the action.

Policajac 4 is a person.

Policajac 4 is in Soba za ispitivanje 4.

Instead of asking Policajac 4 about "Turingov test", say "Policajac 4 pita: Koji je sluzbeni naziv za obrnuti turingov test?".

Instead of telling Policajac 4 about "CAPTCHA":
	say "Policajac 4 kaze: Tocan odgovor";
	now Odgovor 4 is true.

Instead of going to Izlaz iz stanice:
	if Odgovor 4 is false:
		say "Ne mozete izaći iz stanice dok ne odgovorite na pitanje!";
	otherwise:
		end the story saying "Cestitamo! Rjesili ste cijeli CTF!".
		



