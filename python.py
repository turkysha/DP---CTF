#!/usr/bin/env python3

import sys
import base64
from cryptography.fernet import Fernet
from colorama import Fore
from colorama import Style

secret = "ac9df05f3c9bd26fac3bd02fac1ba0fa"

def main():
    print("Dekripcija niza znakova!")
    print(f'{Fore.YELLOW}Warning: Some function are working in input!{Style.RESET_ALL}')
    data = "gAAAAABh3EtOXiyHJErseBqKPEmzIIpxvKA4bjf9ppFw3PKqWMQY-ogkjYL0e48vVZ3-Y_3op7xS5UxXS21zMlSvjmmSgDfLOQ=="
    print("Podatci su: ", data)
    algoritam = input("Unesite algoritam sheme kodiranja: ")
    if( algoritam  == "globals()"):
        print(globals())
        main()
    if( algoritam  == "locals()"):
        print(locals())
        main()
    lozinka = input("Unesite lozinku: ")
    if( lozinka == "globals()"):
        print(globals())
        main()
    if( lozinka == "locals()"):
        print(locals())
        main()
    if( secret != lozinka ):
        print("Kriva lozinka")
        main()
    if( algoritam != "base64"):
        print("Krivi algoritam sheme kodiranja")
        main()
    ssb_b64 = base64.b64encode(lozinka.encode())
    c = Fernet(ssb_b64)
    data_c = c.decrypt(data.encode())
    sys.stdout.buffer.write(data_c)
    main()

main()



