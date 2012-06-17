
#preformattazione del codice html per poter far pattern matching sulle immagini
# prima substitution per eliminare l'EOL dopo alt="PIC" per tirar su 
# seconda substitution per eliminare l'EOL dopo img
# da notare l'attributo /g che sta per globally, la sostituzione è fatta su TUTTE le occorrenze trovate

:a;N;$!ba;s/alt="PIC"  \n/alt="PIC"/g;s/img \n/img /g;

#aggiunta dei collegamenti ipertestuali a nuova pagina per le immagini delle schermate

s:<img src="\(./img/MainPage.png\|./img/ToolBar.png\|./img/Autenticazione.png\|./img/RichiestaMail.png\|./img/RichiestaTelefonica.png\|./img/RicercaUtenteChiamataTelefonica.png\|./img/Cerca1.png\|./img/Cerca2.png\|./img/EscalationPrendereInGestione.png\|./img/ScreenShotChiusuraIncident.png\|./img/ScreenShotChiusuraIncidentDetailed.png\|./img/AbbandonaPrendereInGestione.png\)" alt="PIC">:<a href="\1" target="_blank"><img src="\1" width="200" alt="PIC"></a>:g
