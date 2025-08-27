#!/usr/bin/env bash
set -euo pipefail

if [ ! -f variables.env ]; then
  echo "variables.env not found. Copy variables.env.template to variables.env and fill values."
  exit 1
fi

source variables.env

echo "== HTTP HEAD check (public) =="
echo "SGB public ${SGB_PUBLIC_IP}"
curl -I --max-time 5 "http://${SGB_PUBLIC_IP}" || true
echo

echo "SGA public ${SGA_PUBLIC_IP}"
curl -I --max-time 5 "http://${SGA_PUBLIC_IP}" || true
echo

echo "== ICMP check (private) =="
echo "Ping SGB private ${SGB_PRIVATE_IP}"
ping -c 4 "${SGB_PRIVATE_IP}" || true
echo

echo "== Reminder =="
echo "NACL demo denies HTTP from/to HOME_IP=${HOME_IP}/32 (placeholder)"
