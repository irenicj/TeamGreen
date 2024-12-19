# TeamGreen: Keep Microsoft Teams Status Always Available

## Overview
**TeamGreen** is a PowerShell script designed to keep your Microsoft Teams status set to **Available** all day long. It works by simulating a Num Lock key press every 240 seconds, ensuring your status remains green, even if you step away from your keyboard.

---

## Disclaimer
This script is provided as-is for personal use. **Use it at your own risk.** Make sure to comply with your workplace policies before using this tool. The author is not responsible for any misuse or unintended consequences.

---

## Why Use TeamGreen?
- **Stay Green**: Prevent Microsoft Teams from marking you as "Away."
- **Non-Intrusive**: Runs silently in the background without interfering with your work.
- **Easy to Use**: Simple setup to keep you active all day.

---

## How It Works
The script presses and releases the **Num Lock** key every 240 seconds, simulating user activity to prevent your status from going idle.

---

## How to Use It

### Step 1: Download the Script
1. Click this link to **[Download team_Green.ps1](https://github.com/irencj/TeamGreen/refs/heads/main/team_Green.ps1)**.
2. Save the script file to your **Desktop** or any folder you prefer.

---

### Step 2: Run the Script
1. Open a **PowerShell** window:
   - Press `Win + R`, type `powershell`, and press Enter.
2. Navigate to the folder where you saved the script:
   ```powershell
   cd "C:\Path\To\Your\Script"

Replace C:\Path\To\Your\Script with the actual folder path. 3. Run the script by typing:

./team_Green.ps1

4. Minimize the PowerShell window while the script is running. It won’t display any output, but it’s working in the background.




---

Step 3: Stop the Script

To stop the script:

1. Open the PowerShell window where the script is running.


2. Press Ctrl + C to terminate the script.




---

Customization

If you'd like to adjust the interval between key presses:

1. Open the team_Green.ps1 file in a text editor (e.g., Notepad).


2. Find the following line:

$interval = 240


3. Change 240 to your desired interval in seconds (e.g., 300 for 5 minutes).




---

Key Features

Non-Intrusive: The script only simulates the Num Lock key, which won't interfere with your work.

No Output: Runs silently without cluttering your screen.

Flexible: Fully open-source and customizable.



---

Notes

You do not need admin rights to run this script in most cases.

If you encounter permission issues, enable script execution:

Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned

Type Y and press Enter when prompted.

Works great for Microsoft Teams or similar apps where idle status is an issue.



---

