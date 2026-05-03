# cyberKaido Smart Shell

## Overview

**cyberKaido Smart Shell** is a Bash-based interactive console designed to automate file organization, system inspection, and command execution within a Linux environment.

It transforms repetitive command-line tasks into a structured and user-friendly interface.

---

## Definition

cyberKaido Smart Shell is a **shell automation tool** that belongs to the class of **Bash scripting systems**, characterized by:

* interactive command execution
* automated file sorting
* system monitoring capabilities

---

## Features

* 📂 File organization (Documents, Images, Videos)
* 🔍 Directory scanning
* 📊 System information display
* 🎨 Colored terminal interface
* 🧠 Command-based interaction system

---

## How It Works

The system runs an infinite loop that continuously accepts user commands.

Each command is processed using a `case` structure:

* `Scan` → Lists files in a directory
* `Organize` → Sorts files automatically
* `Sysinfo` → Displays system details
* `Clear` → Clears terminal
* `Exit` → Terminates the console

---

## Installation

```bash
git clone https://github.com/Cyberkaido/cyberkaido-smart-shell.git
cd cyberkaido-smart-shell
chmod +x Smart.sh
./Smart.sh
```

---

## Usage

Once executed, type:

```bash
help
```

To view available commands.

---

## Project Structure

```
cyberkaido-smart-shell/
│── Smart.sh
│── README.md
```

---

## Example

Instead of manually running multiple commands:

```bash
ls -lah
mv *.pdf Documents/
mv *.jpg Images/
```

The tool automates everything with a single command:

```bash
Organize
```

---

## Special Notices

🔵 **NOTE**
This project demonstrates foundational Bash scripting concepts, including loops, conditionals, and file manipulation.

🟡 **CAUTION**
Ensure correct directory input before organizing files to avoid unintended file movement.

🟠 **WARNING**
Running this script with root privileges may affect system directories.

🔴 **DANGER**
Improper wildcard usage (`*`) may lead to accidental file loss.

---

## Technologies Used

* Bash
* Linux (Kali)
* Git & GitHub

---

## Future Improvements

* Add support for more file types
* Logging system for actions
* Advanced sorting logic
* Security-focused modules

---

## Author

**Kaidō (CyberKaidō)**
Cybersecurity Learner | Future Security Engineer

---
