#!/usr/bin/env bash
# Linux Recovery Lab - raccolta informazioni di sistema
# Script in sola lettura: non installa, cancella o modifica configurazioni.

set -u

section() {
    printf '\n========== %s ==========\n' "$1"
}

section "DATA E UTENTE"
date
id

section "DISTRIBUZIONE"
if [[ -r /etc/os-release ]]; then
    cat /etc/os-release
else
    echo "File /etc/os-release non disponibile."
fi

section "KERNEL E HOST"
uname -a
hostname 2>/dev/null || true

section "UPTIME E CARICO"
uptime

section "MEMORIA"
if command -v free >/dev/null 2>&1; then
    free -h
else
    echo "Comando free non disponibile."
fi

section "DISCHI E FILESYSTEM"
if command -v lsblk >/dev/null 2>&1; then
    lsblk -f
else
    echo "Comando lsblk non disponibile."
fi
if command -v df >/dev/null 2>&1; then
    df -hT
fi

section "FILESYSTEM MONTATI"
if command -v findmnt >/dev/null 2>&1; then
    findmnt
fi

section "SERVIZI IN ERRORE (SE SUPPORTATO)"
if command -v systemctl >/dev/null 2>&1; then
    systemctl --failed --no-pager || true
else
    echo "systemctl non disponibile."
fi

section "FINE"
echo "Raccolta completata. Lo script non ha modificato il sistema."
