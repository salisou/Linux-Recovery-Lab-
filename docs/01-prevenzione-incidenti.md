# 01 – Prevenzione degli incidenti Linux

## Che cos'è la prevenzione

La prevenzione comprende le misure che riducono la probabilità che un errore, un comando improprio o un attacco provochino indisponibilità o perdita di dati.

## Prima di intervenire

1. Identifica la macchina: host o VM?
2. Verifica distribuzione e versione.
3. Leggi il comando prima di copiarlo.
4. Controlla directory corrente e percorsi assoluti.
5. Verifica privilegi e impatto.
6. Crea uno snapshot e un backup separato quando è prevista una modifica.
7. Definisci come annullare l'intervento.

## Comandi di ricognizione (sola lettura)

| Comando | Che cosa mostra |
|---|---|
| `whoami` | Utente corrente |
| `id` | UID, GID e gruppi |
| `pwd` | Directory corrente |
| `hostnamectl` | Identità e sistema host, se supportato |
| `cat /etc/os-release` | Distribuzione e versione |
| `uname -a` | Informazioni sul kernel |
| `lsblk -f` | Dispositivi a blocchi e filesystem |
| `df -hT` | Spazio dei filesystem montati |

## Comandi da riconoscere, non da provare

- `sudo rm -rf --no-preserve-root /`: tenta di rimuovere ricorsivamente il contenuto della gerarchia radice.
- `mkfs`: crea un filesystem e può sovrascrivere strutture preesistenti.
- `dd`: copia dati a basso livello; un dispositivo di destinazione errato può causare perdita di dati.
- `chmod -R` o `chown -R` su directory di sistema: possono alterare permessi e proprietà in modo esteso.
- `:(){ :|:& };:`: fork bomb, può saturare le risorse del sistema.

Non eseguire questi esempi. La loro presenza in questa lezione serve esclusivamente al riconoscimento.

## Esercizio

Spiega perché è necessario controllare `pwd`, `ls -lah` e il percorso completo prima di eliminare un file. Indica almeno tre precauzioni da adottare prima di una modifica amministrativa.
