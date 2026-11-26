#!/usr/bin/env bash
# Mostra gli errori del boot corrente senza modificare i log.

set -u

if ! command -v journalctl >/dev/null 2>&1; then
    echo "journalctl non è disponibile su questo sistema."
    exit 1
fi

echo "Errori del boot corrente (massimo 100 righe):"
journalctl -p err -b -n 100 --no-pager
status=$?

if [[ $status -ne 0 ]]; then
    echo "Impossibile leggere il journal. Potrebbero servire permessi o un journal persistente."
    exit "$status"
fi

echo
echo "Suggerimento: per approfondire un servizio usa journalctl -u NOME_SERVIZIO."
