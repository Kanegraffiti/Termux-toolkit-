#!/data/data/com.termux/files/usr/bin/bash
# Script to install Git in Termux

echo "[*] Updating packages..."
pkg update -y && pkg upgrade -y

echo "[*] Installing Git..."
pkg install git -y

echo "[*] Verifying installation..."
git --version

if [ $? -eq 0 ]; then
    echo "[✓] Git was installed successfully!"
else
    echo "[✗] Git installation failed."
fi
