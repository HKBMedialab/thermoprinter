# Thermoprinter

This guide helps printing files (Text, Images PDF) with a POS-58 Thermoprinter – tested with Zijiang 58 – on **macOS 11+**.

---

### TL'DR
1. Download this repository to your Computer
2. Install driver with the help of installer.sh
3. Add printer to CUPS
4. Print files with printer.sh

---

## How To

### 1. Download

Download this repository to your Computer as a zip file and extract it.

### 2. Installation

1. Open Terminal via Spotlight or from `/Applications/Utilities/Terminal`.
2. Enter cd and a space `cd ` and drag the extracted folder from Finder into Terminal.
3. Enter `sudo bash install.sh` hit <kbd>⏎ Enter</kbd> and confirm with your password. This installs the printing filter `rastertozj`.

### 3. Add printer to CUPS

1. Enter `cupsctl WebInterface=yes` into Terminal and hit <kbd>⏎ Enter</kbd>.
2. Open http://localhost:631/admin in your Browser.
3. Click <kbd>Add Printer</kbd> and if prompted, login with your username and password.
4. Choose the Printer "GD32 Microelectronics" and click <kbd>Continue</kbd>.
5. Instead of selecting a brand click on <kbd>Choose Driver</kbd> and choose the file `ZJ-58.ppd` in the repository folder.
6. Click on <kbd>Save as Default</kbd>.

### 4. Printing

1. In the Terminal enter `bash printer.sh file.pdf`. Replace "file.pdf" with the file you want to print. 
2. If the file to print is saved in a different location drag the file into Terminal: `bash printer.sh /Users/admin/Documents/image.jpg`

---

## Tricks

- Because of an unkown error the printer can not be used as a regular printer. Before each print, you have to uninstall an reinstall it. That is what the file `printer.sh` is doing.
- Default page size is 48mm by 105mm. To change you need to edit the file `ZJ-58.ppd`. Copy the line `*PageSize X48MMY105MM/58mm x 105mm:...` and change the length of the paper and the resolution. Afterwards change the default size `*DefaultPageSize:` to your new size.
- You can generate your print files with basiljs, html2pdf or simply use a textfile.
- You can start the print command from any source like Bash, Processing (Java), Python, a local Webserver (PHP, NodeJS), basiljs, MaxMSP and many more.
