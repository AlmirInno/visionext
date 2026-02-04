$filePath = "interactive-media-designer\index.html"
$content = [System.IO.File]::ReadAllText($filePath, [System.Text.Encoding]::UTF8)

$oldText = '            <p class="reveal reveal-bottom">Visionext è il progetto che sto costruendo passo dopo passo.
                Nasce dal desiderio di trasformare la presenza digitale delle persone in qualcosa che parli davvero di
                loro, che esprima ciò che le rende uniche, che lasci un segno.

                Non è solo un nome: è un approccio.
                Visionext è il mio modo di vedere oltre ciò che appare, di cogliere l''essenza di un''idea e tradurla in
                un''esperienza visiva e interattiva capace di emozionare.

                Ogni progetto che affronto inizia dall''ascolto. Voglio capire chi ho davanti, cosa sogna, cosa lo muove,
                quali sensazioni vuole trasmettere. Da lì inizio a costruire: forme, ritmi, interazioni. Tutto prende
                vita in un equilibrio tra estetica, strategia e narrativa digitale.

                Visionext rappresenta questo:
                uno spazio in cui la tua identità può trovare la sua voce, il suo stile, la sua presenza nel mondo.
                Un luogo in cui creatività e intenzione si incontrano per dare forma a un''esperienza che non passa
                inosservata.

                Il progetto è giovane, in evoluzione.
                E ogni nuova collaborazione lo arricchisce, lo espande, lo rende più vivo.

                Visionext è la mia visione del design:
                un processo che ti accompagna, ti valorizza e trasforma la tua idea in qualcosa che non solo funziona,
                ma che racconta chi sei.</p>'

$newText = '            <p class="reveal reveal-bottom"><strong>Visionext</strong> non è solo uno studio, è una filosofia: il mio modo di aiutare imprese e professionisti a costruire un''<strong>identità digitale autentica e performante</strong>.

                Nasce dal desiderio di andare oltre il design superficiale. Voglio capire chi sei, cosa rappresenti, cosa rende unico il tuo brand. Da lì comincio a costruire: una visione coerente, una comunicazione efficace, un''esperienza che lascia il segno.

                <strong>Visionext significa:</strong> ascoltare, progettare, trasformare. È il ponte tra la tua idea e la sua realtà digitale, con rigore strategico e creatività senza compromessi.</p>'

$newContent = $content.Replace($oldText, $newText)

[System.IO.File]::WriteAllText($filePath, $newContent, [System.Text.Encoding]::UTF8)

Write-Host "Sostituzione completata!"
