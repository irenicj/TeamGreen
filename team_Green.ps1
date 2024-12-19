# Import the Windows API function for simulating keyboard events
# (Basically, we're using a cheat code to make your computer think you're typing)
Add-Type -TypeDefinition @"
using System;
using System.Runtime.InteropServices;
public class WinAPI {
    [DllImport("user32.dll")]  // The magical DLL that makes Windows listen to us
    public static extern void keybd_event(byte bVk, byte bScan, uint dwFlags, int dwExtraInfo);
}
"@

# Function to simulate pressing and releasing the Num Lock key
function Press-NumLock {
    $VK_NUMLOCK = 0x90  # Num Lock key's secret identity (Virtual Key Code)
    $KEYEVENTF_KEYUP = 0x0002  # Flag to tell Windows we're letting go of the key

    # Press the Num Lock key
    # (Pretend you're hitting the Num Lock key like a ghost)
    [WinAPI]::keybd_event($VK_NUMLOCK, 0, 0, 0)

    # Wait for 50 milliseconds before releasing the key
    # (Because even ghosts need a break between key presses)
    Start-Sleep -Milliseconds 50

    # Release the Num Lock key
    # (Tell Windows, "Okay, I'm done pressing the key now.")
    [WinAPI]::keybd_event($VK_NUMLOCK, 0, $KEYEVENTF_KEYUP, 0)
}

# Set the interval between key presses in seconds
# (Keep it casual—press the key every 4 minutes)
$interval = 240

# Infinite loop to keep pressing the Num Lock key forever
# (Or until you decide to call it quits with Ctrl+C)
while ($true) {
    # Press the Num Lock key to let Teams know you're still here
    # (Your boss doesn't need to know it's a lie!)
    Press-NumLock

    # Wait for the specified interval before pressing it again
    # (Take a chill pill for $interval seconds before going at it again)
    Start-Sleep -Seconds $interval
}
