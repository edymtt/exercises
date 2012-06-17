#!/bin/sh

# Compiliamo il documento in HTML mettendo il documento finale nella cartella HTML
htlatex incident.tex "" "" "-dhtml/"

# Spostiamo le immagini che tex4ht ha messo nella root nella cartella img, dove il file HTML le vuole
mv html/*.jpg html/img
mv html/*.png html/img

# lanciamo sed per aggiungere alle immagini la larghezza voluta
# -i indica che gli effetti di sed vengono fatti sullo stesso file dato in argomento
sed -i -f postprocess_html.sed html/incident.html


# visualizziamo il file con firefox
firefox html/incident.html &
