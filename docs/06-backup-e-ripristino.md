# 06 – Backup e ripristino

## Backup e snapshot non sono la stessa cosa

Un backup è una copia dei dati conservata separatamente. Uno snapshot registra uno stato della macchina virtuale e consente di tornare a quel punto, ma non sostituisce una strategia di backup indipendente.

## Strategia didattica

1. Crea una VM pulita e installa gli aggiornamenti.
2. Spegni la VM in modo ordinato.
3. Crea uno snapshot con nome e data.
4. Crea una copia separata dei file didattici.
5. Verifica che il backup sia leggibile.
6. Esegui solo simulazioni innocue previste dal laboratorio.
7. Ripristina lo snapshot e controlla che il sistema torni allo stato atteso.

## Verifica dell'integrità di un file

`sha256sum` calcola un'impronta SHA-256.

```bash
sha256sum archivio_backup.tar
```

Confronta il valore con quello registrato al momento della creazione del backup. Un hash uguale indica che il contenuto è identico rispetto al riferimento, ma non dimostra da solo che il backup sia completo o ripristinabile.

## Recupero di un file

Esercitati copiando file di prova in una directory dedicata all'interno della VM. Recupera il file dalla copia di backup e confronta l'hash. Non usare file personali o dati di produzione.

## Checklist post-ripristino

- Il sistema si avvia?
- La versione del sistema è quella prevista?
- I filesystem attesi risultano montati?
- I servizi necessari sono attivi?
- I log mostrano errori nuovi?
- I file recuperati superano il controllo hash?
- La connettività funziona nella rete di laboratorio?
- La documentazione dell'incidente è stata aggiornata?
