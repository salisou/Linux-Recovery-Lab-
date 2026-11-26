# Linux Recovery Lab

**Laboratorio didattico di prevenzione degli incidenti, diagnostica e ripristino per Kali Linux e Ubuntu.**

Materiale curato da **Docente Moussa Salisou** per attività formative di ICT Cybersecurity.

> **Regola fondamentale:** tutte le esercitazioni che modificano il sistema devono essere svolte esclusivamente in macchine virtuali isolate, autorizzate e dotate di snapshot verificato. Non sperimentare comandi distruttivi sul computer principale o su sistemi di terzi.

## Obiettivi

- Riconoscere comandi e operazioni potenzialmente distruttivi.
- Raccogliere informazioni sul sistema senza modificarlo.
- Analizzare log e individuare errori.
- Verificare servizi gestiti da systemd.
- Controllare spazio disco, partizioni e filesystem.
- Pianificare backup, rollback e ripristino.
- Documentare un incidente e verificare il ritorno a uno stato funzionante.

## Struttura

| Percorso | Contenuto |
|---|---|
| [docs/](docs/) | Lezioni teoriche e procedure |
| [labs/](labs/) | Laboratori guidati per Kali e Ubuntu |
| [scripts/](scripts/) | Script diagnostici non distruttivi |
| [exercises/](exercises/) | Esercizi per gli studenti |
| [solutions/](solutions/) | Soluzioni per il docente |
| [resources/](resources/) | Checklist e schede operative |

## Percorso didattico

1. Preparazione dell'ambiente virtuale e snapshot.
2. Prevenzione: comandi rischiosi e controllo dei percorsi.
3. Raccolta di informazioni e diagnostica.
4. Analisi dei log con `journalctl`, `grep`, `sort` e `uniq`.
5. Verifica dei servizi con `systemctl`.
6. Controllo di dischi, filesystem e spazio disponibile.
7. Backup e recupero di file.
8. Verifica dei pacchetti APT e controllo post-incidente.
9. Relazione tecnica e verifica finale.

## Requisiti

- Kali Linux o Ubuntu aggiornato, installato in una VM.
- VirtualBox, VMware o un hypervisor equivalente.
- Almeno uno snapshot iniziale e spazio sufficiente per backup.
- Account con privilegi amministrativi per le sole attività che li richiedono.
- Connessione di rete controllata; per i laboratori di sicurezza preferire una rete host-only o una rete virtuale isolata.

## Avvio rapido

Clona il repository:

```bash
git clone https://github.com/salisou/Linux-Recovery-Lab-.git
cd Linux-Recovery-Lab-
```

Rendi eseguibili gli script diagnostici:

```bash
chmod +x scripts/*.sh
```

Esegui una verifica in sola lettura:

```bash
./scripts/verifica_sistema.sh
```

Gli script inclusi sono pensati per la raccolta di informazioni: non formattano dischi, non cancellano file, non disabilitano servizi e non modificano la configurazione di rete.

## Sicurezza e limiti

- Non eseguire `rm -rf`, `mkfs`, `dd`, `shred` o comandi equivalenti su dispositivi o percorsi reali durante le lezioni.
- Non copiare comandi da fonti non verificate, specialmente sequenze come `curl ... | sudo bash`.
- Prima di qualsiasi modifica, identificare sistema, dispositivo e percorso; verificare lo snapshot e predisporre il rollback.
- Le procedure di riparazione del filesystem dipendono dal filesystem e dallo stato di montaggio. Non lanciare controlli correttivi su filesystem montati in scrittura.
- Le unità e i servizi possono avere nomi differenti tra versioni e installazioni di Kali e Ubuntu.

## Licenza

Questo progetto è distribuito con licenza MIT. Consultare [LICENSE](LICENSE).

---

© 2026 – Tutti i diritti riservati – Docente Moussa Salisou
