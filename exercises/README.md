# Esercizi per gli studenti

## Esercizio 1 – Identità del sistema

Raccogli distribuzione, versione, kernel e utente corrente. Spiega la differenza tra kernel e distribuzione.

## Esercizio 2 – Spazio disco

Usa `df -hT`, `lsblk -f` e `findmnt`. Individua la partizione montata su root e riporta spazio totale e disponibile.

## Esercizio 3 – Ricerca errori

Consulta il boot corrente con `journalctl -p err -b`. Seleziona un messaggio e descrivi timestamp, componente e possibile impatto.

## Esercizio 4 – Conteggio eventi

Su un file di log di laboratorio fornito dal docente, conta le righe per tipo di evento usando `grep`, `sort` e `uniq -c`.

## Esercizio 5 – Valutazione del rischio

Per ciascuna famiglia descrivi il possibile impatto: cancellazione ricorsiva, formattazione, scrittura raw, modifica massiva dei permessi, disattivazione firewall. Non eseguire i comandi.

## Esercizio 6 – Piano di ripristino

Scrivi una procedura che comprenda snapshot, backup, verifica hash, ripristino e controlli post-ripristino.
