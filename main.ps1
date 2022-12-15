# Your challenge is to write a PowerShell function that duplicates, or at least as close as possible, the functionality of top, but for Windows platforms. You can omit information where there is no Windows equivalent. Your command should include the following functionality:

# Let the user specify the refresh rate.
# Let the user specify the formatting unit for memory usage, i.e. MB or GB.
# Let the user specify which process owners to display.
# Let the user specify the number of processes to show based on some criteria.

# For truly advanced PowerShell scripters, add these features to your command:

# Run remotely and show the computer name. You should support credentials.
# Allow the user to save and use a configuration file.
# Allow the user to specify a timeout value.
# Allow the user to specify processes by name.
# Or add support for any other top feature of your choosing.

# step 1: testing gui
# get system uptime, repeatedly clear + display the screen in order to replicate tui
$uptime = (get-date) – (gcim Win32_OperatingSystem).LastBootUpTime
while ($True) {
    $uptime = (get-date) – (gcim Win32_OperatingSystem).LastBootUpTime
    clear
    Write-Host "uptime: $uptime"
    Write-Host "hello"
}