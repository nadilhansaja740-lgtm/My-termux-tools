# ⚡ MY-TERMUX-TOOLS

### Professional Termux Security & Diagnostics Toolkit

A modular command-line toolkit built for Termux on Android.

---

## 🚀 Features

- 📱 Device information
- 🔋 Battery information
- 💾 Storage information
- 🌐 Network diagnostics
- 📡 Ping testing
- 🔍 DNS diagnostics
- 🔎 DNS lookup
- 🌍 HTTP headers inspection
- 🔐 File hash generation
- 🔑 Password strength checking
- 🛡️ Permission auditing
- 📶 Internet diagnostics
- 💻 System information
- 🎨 Colored terminal interface
- 📦 Modular tool structure

---

## 📂 Project Structure

```text
My-termux-tools/
│
├── README.md
├── run.sh
├── install.sh
│
├── config/
│   └── colors.sh
│
├── lib/
│   └── ui.sh
│
└── tools/
    ├── device/
    │   ├── device-info.sh
    │   ├── battery-info.sh
    │   └── storage-info.sh
    │
    ├── network/
    │   ├── network-info.sh
    │   ├── ping-test.sh
    │   └── dns-check.sh
    │
    ├── recon/
    │   ├── dns-lookup.sh
    │   └── http-headers.sh
    │
    ├── security/
    │   ├── file-hash.sh
    │   ├── password-check.sh
    │   └── permission-audit.sh
    │
    ├── diagnostics/
    │   ├── internet-test.sh
    │   └── network-test.sh
    │
    └── system/
        └── system-info.sh;
