# Laboratorio Kali Linux

## Scopo

Eseguire la ricognizione e l'analisi di sistema su una VM Kali Linux isolata.

## Preparazione

- Crea una VM Kali dedicata.
- Imposta rete host-only o altra rete isolata adatta alla lezione.
- Installa gli aggiornamenti prima del laboratorio, se previsto.
- Crea uno snapshot denominato `kali-lab-clean`.
- Non collegare cartelle condivise contenenti dati personali.

## Attività

1. Identifica utente, host, distribuzione e kernel.
2. Elenca dispositivi e filesystem con `lsblk -f`.
3. Controlla spazio con `df -hT`.
4. Elenca servizi con `systemctl list-units --type=service`.
5. Analizza errori dell'avvio corrente con `journalctl -p err -b`.
6. Registra risultati e differenze rispetto a Ubuntu.

## Consegna

Una relazione con comandi eseguiti, output significativo, interpretazione e conclusione. Non eseguire operazioni distruttive.
