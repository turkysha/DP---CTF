#!/usr/bin/env -S emacs --script


(defun posluzitelj ()
  "Echo poslužitelj."
  (interactive)
  (setq rijec "")
  (setq rijec2 "")
  (setq rijec3 "")
  (message "Treba mi riječ od 01101110 01101111 01110100 01100110 01101100 01100001 01100111")
  (while (not(equal rijec "notflag"))
    (setq rijec (read-string "Unesite riječ: ")))
  (message "Treba mi riječ od 163 164 151 154 154 156 157 164 146 154 141 147")
  (while (not(equal rijec2 "stillnotflag"))
    (setq rijec2 (read-string "Unesite riječ: ")))
  (message "Treba mi riječ od 67 69 76 65 6d 65 66 6c 61 67")
  (while (not(equal rijec3 "givemeflag"))
    (setq rijec3 (read-string "Unesite riječ: ")))
  (message "Flag: 3092")
  (posluzitelj)
  )


(posluzitelj)
