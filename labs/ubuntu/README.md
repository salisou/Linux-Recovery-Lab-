# Laboratorio Ubuntu

## Scopo

Applicare le stesse tecniche diagnostiche a una VM Ubuntu e confrontare i risultati con Kali Linux.

## Preparazione

- Crea una VM Ubuntu dedicata.
- Usa una rete virtuale isolata.
- Crea uno snapshot denominato `ubuntu-lab-clean`.
- Verifica che il backup dei materiali didattici sia leggibile.

## Attività

1. Raccogli informazioni con `cat /etc/os-release` e `uname -a`.
2. Controlla memoria e processi con `free -h` e `ps aux`.
3. Controlla dischi e mount point con `lsblk -f` e `findmnt`.
4. Consulta i log con `journalctl -b`.
5. Verifica servizi con `systemctl status NOME`, usando un'unità realmente presente.
6. Confronta i risultati con il laboratorio Kali.

## Consegna

Compila una tabella con comando, scopo, output, interpretazione e differenze osservate. Non disabilitare servizi essenziali e non modificare partizioni o filesystem.
