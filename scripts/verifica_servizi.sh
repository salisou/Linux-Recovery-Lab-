#!/usr/bin/env bash
# Elenca servizi falliti e unità di servizio attive.
# Non avvia, arresta o modifica servizi.

set -u

if ! command -v systemctl >/dev/null 2>&1; then
    echo "systemctl non è disponibile."
    exit 1
fi

echo "=== Servizi falliti ==="
systemctl --failed --type=service --no-pager || true

echo
echo "=== Servizi attivi ==="
systemctl list-units --type=service --state=running --no-pager

echo
echo "Questa verifica è in sola lettura: nessun servizio è stato modificato."
