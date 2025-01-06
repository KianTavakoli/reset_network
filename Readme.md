# DNS and Network Reset Script

This batch script is designed to help troubleshoot and resolve common DNS and network connectivity issues by automating several network-related commands. It performs the following tasks:

- Flushes the DNS cache
- Re-registers DNS entries
- Releases the current IP address
- Renews the IP address
- Resets the Winsock catalog

---

## How It Works

When executed, the script checks for administrative privileges to ensure that the commands can run properly. If the user does not have the required privileges, they will be prompted to run the script as an administrator.

### Steps Performed by the Script

1. **Flush DNS Cache**: Clears the local DNS cache to remove any potentially outdated or incorrect DNS entries.
   ```batch
   ipconfig /flushdns
   ```

2. **Re-register DNS Entries**: Forces the system to refresh its registered DNS names.
   ```batch
   ipconfig /registerdns
   ```

3. **Release IP Address**: Releases the current IP address assigned to the network adapter.
   ```batch
   ipconfig /release
   ```

4. **Renew IP Address**: Requests a new IP address from the DHCP server.
   ```batch
   ipconfig /renew
   ```

5. **Reset Winsock**: Resets the Winsock catalog to a clean state. This is useful when network issues are caused by corrupted Winsock settings.
   ```batch
   netsh winsock reset
   ```

---

## Usage Instructions

1. Download or copy the script.
2. Right-click on the script file and select "Run as administrator". Running as an administrator is essential for the commands to execute successfully.
3. Follow the on-screen instructions. The script will pause after displaying the initial message to allow you to confirm before proceeding.
4. Once the script completes its tasks, it will display a success message and pause before exiting.

---

## Notes

- Ensure that you run the script in an environment where administrative privileges are available.
- This script is intended for troubleshooting purposes and should be used with caution in production environments.

---

## Disclaimer

This script is provided as-is without any guarantees. Use at your own risk. Always ensure you have proper backups and understand the impact of each command before running the script.

