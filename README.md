
# Subdomain Scraper using crt.sh

This repository contains a single bash script, `crt.sh`, which passively scrapes subdomains from `crt.sh` given a single domain or a list of domains.

## Purpose

The purpose of this script is to find subdomains for a given domain or list of domains by querying the certificate transparency logs available at `crt.sh`. This is useful for security assessments, reconnaissance, and other domain-related investigations.

## Usage

### Single Domain

To find subdomains for a single domain, run the script with the domain as an argument:

```bash
./crt.sh <domain>
```

Example:
```bash
./crt.sh example.com
```

### List of Domains from a File

To find subdomains for a list of domains, provide the domains via standard input (stdin):

```bash
cat domains.txt | ./crt.sh
```

Example:
```bash
cat domains.txt | ./crt.sh
```

### Example `domains.txt` File

```
example.com
anotherdomain.com
```

## Notes

- Ensure you have `curl` installed as it is used to fetch data from `crt.sh`.
- The script processes each domain, extracts subdomains, and sorts them uniquely.

## License

This project is licensed under the GNU General Public License v3.0. See the [LICENSE](LICENSE) file for details.

---
Sure, here's the updated README without the script contents and with the correct license information:

---

# Subdomain Scraper using crt.sh

This repository contains a single bash script, `crt.sh`, which passively scrapes subdomains from `crt.sh` given a single domain or a list of domains.

## Purpose

The purpose of this script is to find subdomains for a given domain or list of domains by querying the certificate transparency logs available at `crt.sh`. This is useful for security assessments, reconnaissance, and other domain-related investigations.

## Usage

### Single Domain

To find subdomains for a single domain, run the script with the domain as an argument:

```bash
./crt.sh <domain>
```

Example:
```bash
./crt.sh example.com
```

### List of Domains from a File

To find subdomains for a list of domains, provide the domains via standard input (stdin):

```bash
cat domains.txt | ./crt.sh
```

Example:
```bash
cat domains.txt | ./crt.sh
```

### Example `domains.txt` File

```
example.com
anotherdomain.com
```

## Notes

- Ensure you have `curl` installed as it is used to fetch data from `crt.sh`.
- The script processes each domain, extracts subdomains, and sorts them uniquely.

## License

This project is licensed under the GNU General Public License v3.0. See the [LICENSE](LICENSE) file for details.

