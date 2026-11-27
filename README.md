# Claw Lang Code Examples

Ein Krebs hat sich ins Rechenzentrum verirrt und arbeitet jetzt in zwei Schichten. Tagsüber serviert er HTML, nachts fängt er Kabel, die die IT von der Decke wirft. Beide Schichten laufen in Claw auf 64-Bit-Linux.

## Tagschicht · HTML mit Scheren

Starte den Server im Repo-Ordner.

```bash
make
./claw-cli webserver.claw
```

Unter [127.0.0.1:8080](http://127.0.0.1:8080/) wartet ein verdächtig einladender Kneifknopf. GET und HEAD gehen am Empfang durch. Der offizielle Gesundheitsbericht unter `/health` lautet `ok`.

## Nachtschicht · Kneif am Kabel!

Fang die grünen Netzwerkkabel und lass die roten Steckdosenleisten durchfallen. Nach drei Treffern überbringt KatziError die Kündigung und bietet dir gleich die nächste Schicht an.

```bash
make arcade
./claw-cli krebs-arcade/arcade.claw
```

**Leertaste** startet die Schicht, **←/→** oder **A/D** wechseln die Spur und **Esc** macht Feierabend. Das Spiel braucht einen Linux-Desktop und `libraylib.so` im Suchpfad. Die restliche Dienstanweisung steht in der [Arcade-README](krebs-arcade/README.md).

## Abhängigkeiten

- Die Sprache, in der der Krebs seine Dienstanweisungen bekommt. [Claw](https://github.com/StonkDragon/claw-lang)
- Hilft Claw, mit C zu sprechen. [libffi](https://github.com/libffi/libffi)
- Zeichnet den Krebs und den Kabelsalat. [raylib](https://github.com/raysan5/raylib)
- Öffnet die Startfehler- und Rundenende-Dialoge. [KatziError](https://github.com/KatziIndustries/KatziError)
- Liefert die Sockets für die Tagschicht. [GNU C Library](https://sourceware.org/glibc/)
- Geben den Dialogen ein Fenster. [Wayland](https://wayland.freedesktop.org/), [X.Org](https://www.x.org/)

Für den Build brauchst du die Entwicklungsdateien von libffi, Git, Make und einen C-Compiler. [Git](https://git-scm.com/), [GNU Make](https://www.gnu.org/software/make/), [GCC](https://gcc.gnu.org/)

Bei `make arcade` kommen die Entwicklungsdateien für Wayland-Client und X11 sowie `pkg-config` dazu. [pkg-config](https://wiki.freedesktop.org/Software/pkg-config/)

Der Build verwendet feste Claw- und KatziError-Revisionen. Der [FFI-Patch](patches/claw-ffi-returns.patch) korrigiert die Rückgabewerte nativer Funktionen für den verwendeten Claw-Stand.

## Lizenz

Die Beispiele stehen unter der [MIT-Lizenz](LICENSE), Copyright 2026 Julian. Claw ist Copyright 2026 Paul von Essen.
