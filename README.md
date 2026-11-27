# Claw Lang Code Examples

Zwei Programme in [Claw](https://github.com/StonkDragon/claw-lang) für 64-Bit-Linux. Der Webserver bindet Linux-Sockets über libc an. Das Arcade-Spiel nutzt Raylib und KatziError über Claws FFI.

## Webserver

Der Build benötigt Git, Make, einen C-Compiler und die libffi-Entwicklungsdateien. Führe die Befehle im Wurzelordner dieses Repos aus.

```bash
make
./claw-cli webserver.claw
```

Unter [127.0.0.1:8080](http://127.0.0.1:8080/) liefert der Server `index.html` mit einem animierten Krebs aus. `/health` antwortet mit `ok`. Der Server unterstützt GET und HEAD.

## Kneif am Kabel!

Fang Netzwerkkabel, weich Steckdosenleisten aus und schlag deinen Rekord. Das Spiel benötigt einen Linux-Desktop und `libraylib.so` im Suchpfad. Für KatziError braucht der Build zusätzlich `pkg-config` sowie die Entwicklungsdateien für Wayland-Client und X11.

```bash
make arcade
./claw-cli krebs-arcade/arcade.claw
```

**Leertaste** startet das Spiel, **←/→** oder **A/D** wechseln die Spur und **Esc** beendet das Spiel. Startfehler und das Rundenende können einen nativen Dialog öffnen. Weitere Details stehen in der [Arcade-README](krebs-arcade/README.md).

## Abhängigkeiten und Lizenz

Die Beispiele stehen unter der [MIT-Lizenz](LICENSE), Copyright 2026 Julian. Der Build verwendet festgelegte Revisionen von [Claw](https://github.com/StonkDragon/claw-lang) und [KatziError](https://github.com/KatziIndustries/KatziError). Claw ist Copyright 2026 Paul von Essen. Der [FFI-Patch](patches/claw-ffi-returns.patch) korrigiert die Rückgabewerte aus nativen Funktionen für den hier verwendeten Claw-Stand.
