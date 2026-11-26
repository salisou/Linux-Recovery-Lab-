# 04 – Verifica dei servizi con systemd

## Che cos'è un servizio

Un servizio è un processo in background che offre una funzione al sistema o agli utenti. Su Kali e Ubuntu molte attività sono gestite da systemd.

## systemctl

- `systemctl status NOME`: stato e informazioni dell'unità.
- `systemctl list-units --type=service`: servizi caricati.
- `systemctl list-unit-files --type=service`: file unità installati e stato di abilitazione.
- `systemctl is-active NOME`: verifica se è attivo.
- `systemctl is-enabled NOME`: verifica se è abilitato all'avvio.

I comandi precedenti sono principalmente di consultazione. Operazioni come `start`, `stop`, `restart`, `enable` e `disable` modificano lo stato del sistema e vanno svolte solo in VM autorizzate, dopo aver verificato il nome dell'unità e il piano di rollback.

## Procedura diagnostica

1. Identifica il servizio con `systemctl list-units --type=service`.
2. Consulta `systemctl status NOME`.
3. Leggi i messaggi recenti con `journalctl -u NOME -n 50`.
4. Annota data, ora, stato e messaggi di errore.
5. Non riavviare o disabilitare un servizio senza comprenderne le dipendenze.

## Nota sulle distribuzioni

Non presumere che un servizio abbia lo stesso nome o sia installato in tutte le versioni. Per esempio, il servizio SSH può essere denominato `ssh` su Debian/Kali e Ubuntu. Verificare sempre sul sistema reale.
