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

$uptime = (get-date) – (gcim Win32_OperatingSystem).LastBootUpTime
while ($True) {
    # first line
    # top - [current hh:mm:ss], [ut days] days, [ut mins] min, [users] user, load average: [??? check]
    $datetime = get-date
    $uptime = $datetime – (gcim Win32_OperatingSystem).LastBootUpTime
    $user_count = ((Get-CIMInstance -ClassName Win32_ComputerSystem).Username | measure).Count
    # TODO: average across time?
    $cpu_load = Get-CIMInstance Win32_Processor | Select -ExpandProperty LoadPercentage

    # drawing interface
    clear
    Write-Host "uptime: $($datetime.Hour):$($datetime.Minute):$($datetime.Second) up $($uptime.Days) days, $($uptime.Minutes) min, $user_count user, load: $cpu_load"
    Write-Host "hello"
}
