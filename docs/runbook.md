# Runbook — Project 4 (Anonymized)

## Restart Apache
sudo systemctl restart httpd
sudo systemctl status httpd --no-pager

## Check your current public IP
curl ifconfig.me

## Common fixes
- No HTTP? Verify SG inbound, subnet auto-assign public IP, route to IGW.
- NACL deny not working? Confirm exact HOME_IP and whether you’re on VPN.
- 403 from curl? Expected based on current SG/NACL combination.

(*No real IDs or public IPs appear in this repo.*)
