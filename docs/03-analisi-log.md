# 03 – Analisi dei log con journalctl e grep

## Perché analizzare i log

I log registrano eventi di sistema e applicazioni. Sono utili per ricostruire la sequenza temporale di un problema e individuare errori, riavvii o servizi non disponibili.

## journalctl

`journalctl` interroga il journal gestito da systemd.

| Comando | Significato |
|---|---|
| `journalctl` | Mostra le registrazioni disponibili |
| `journalctl -b` | Eventi dall'avvio corrente |
| `journalctl -p err -b` | Priorità errori dall'avvio corrente |
| `journalctl -u ssh` | Eventi associati all'unità ssh |
| `journalctl --since "1 hour ago"` | Eventi dell'ultima ora |
| `journalctl -n 50` | Ultime 50 righe |

I nomi delle unità variano: verificare prima con `systemctl list-units --type=service`.

## grep

`grep` cerca righe che corrispondono a un modello.

- `grep "ERROR" file.log`: cerca la parola ERROR.
- `grep -i "error" file.log`: ignora maiuscole/minuscole.
- `grep -n "ERROR" file.log`: mostra il numero di riga.
- `grep -v "ERROR" file.log`: esclude le righe corrispondenti.

## Pipe

La pipe `|` passa l'output di un comando come input al successivo.

Esempio: `journalctl -b | grep -i "error"`.

## Ordinare e contare

`sort` ordina le righe; `uniq` individua ripetizioni adiacenti. Per contare correttamente le occorrenze si usa spesso:

```bash
sort nomi.txt | uniq -c
```

Per ordinare il conteggio in ordine decrescente:

```bash
sort nomi.txt | uniq -c | sort -nr
```

## Salvare una ricerca

```bash
grep -i "error" system.log > errori.txt
```

L'operatore `>` crea o sovrascrive il file di destinazione. Usare `>>` per aggiungere in coda.

## Esercizio

Dato un log di laboratorio, estrai le righe ERROR, salvale in un file e conta quante volte compare ciascun messaggio. Lavora su una copia dei log, non alterare i log originali.
