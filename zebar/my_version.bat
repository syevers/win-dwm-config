@echo off
powershell -WindowStyle hidden -Command ^
  $monitors = zebar monitors; ^
  $index = 0; ^
  foreach ($monitor in $monitors) { ^
    if ($index -eq 0) { ^
      Start-Process -WindowStyle Hidden -FilePath \"zebar\" -ArgumentList \"open bar --args $monitor\"; ^
    } elseif ($index -eq 1) { ^
      Start-Process -WindowStyle Hidden -FilePath \"zebar\" -ArgumentList \"open second_monitor --args $monitor\"; ^
    } ^
    $index++; ^
  };
