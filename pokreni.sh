#!/usr/bin/env bash

# XSB

echo 'Pokrećem XSB'

socat tcp-listen:3000,fork,bind=localhost exec:"xsb --nobanner --noprompt --quietload xsb ",pty,stderr,echo=0 &

# Python

echo 'Pokrećem Python'

socat tcp-listen:3001,fork,bind=localhost exec:"./python.py",pty,stderr,echo=0 &

# JavaScript / NodeJS

echo 'Pokrećem NodeJS'

socat tcp-listen:3050,fork,bind=localhost exec:"./node.js",pty,stderr &

# Emacs Lisp

echo 'Pokrećem ELiSP'

socat tcp-listen:3073,fork,bind=localhost exec:"./elisp.el -Q",pty,stderr,echo=0 &


# Inform 7

echo 'Pokrećem Inform 7'

socat tcp-listen:3092,fork,bind=localhost exec:'/usr/games/glulxe projekt.gblorb',pty,stderr,echo=0 &
