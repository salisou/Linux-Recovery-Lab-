# 05 – Dischi, partizioni e filesystem

## Concetti fondamentali

- **Disco/dispositivo:** supporto fisico o virtuale.
- **Partizione:** suddivisione logica di un dispositivo.
- **Filesystem:** struttura che organizza file e directory.
- **Mount point:** directory attraverso cui un filesystem è accessibile.

## Comandi di sola lettura

| Comando | Utilità |
|---|---|
| `lsblk -f` | Elenca dispositivi, partizioni e filesystem |
| `df -hT` | Spazio disponibile e tipo filesystem |
| `du -sh DIRECTORY` | Spazio occupato da una directory |
| `findmnt` | Mostra i filesystem montati |
| `blkid` | Mostra attributi identificativi dei filesystem |
| `sudo fdisk -l` | Elenca la tabella delle partizioni |

## Interpretazione

- Una percentuale di utilizzo elevata in `df` può indicare poco spazio residuo.
- `lsblk` aiuta a distinguere disco e partizioni.
- `findmnt` mostra dove è montato un filesystem.
- Non dedurre che un dispositivo sia sacrificabile dal solo nome: verificare modello, dimensione, UUID e punto di mount.

## Attenzione a fsck

`fsck` verifica filesystem e, a seconda delle opzioni e delle risposte, può modificarli. Le riparazioni non devono essere improvvisate su filesystem montati in scrittura. In questo corso si studia prima la diagnostica e si pianificano eventuali controlli correttivi solo in VM, con snapshot e filesystem correttamente smontato.

Non usare `mkfs`, `dd` o strumenti di partizionamento per simulare guasti su dischi reali.
