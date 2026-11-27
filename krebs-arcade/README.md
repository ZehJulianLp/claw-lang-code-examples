# Kneif am Kabel!

In diesem Claw-Arcadespiel sammelt ein Krebs Netzwerkkabel und weicht Steckdosenleisten aus. Nach drei Treffern ist die Runde vorbei. Mit jedem vierten gefangenen Kabel wird das Spiel schneller, bis es sein Höchsttempo erreicht.

## Start

Das Spiel benötigt einen Linux-Desktop und Raylib mit `libraylib.so` im Suchpfad. Für native Dialoge baut das Makefile im Spielordner [KatziError](https://github.com/KatziIndustries/KatziError) aus einer festgelegten Revision. Dafür braucht es zusätzlich Git, `pkg-config` und die Entwicklungsbibliotheken für Wayland-Client und X11. Starte den Build und das Spiel im Wurzelordner des Claw-Repos.

```bash
make
make -C krebs-arcade
./claw-cli krebs-arcade/arcade.claw
```

- **Leertaste** startet die Runde oder spielt nach dem Ende erneut.
- **Links/Rechts** oder **A/D** wechseln die Spur.
- **Esc** schließt das Spiel.

Startfehler landen im Terminal und, wenn verfügbar, in einem KatziError-Dialog. Am Rundenende bietet der Dialog **Beenden** und **Nochmal** an. Beim Schließen des Dialogs oder bei einem fehlgeschlagenen Dialogstart bleibt der gewohnte Spielbildschirm mit der Leertaste zum Neustart verfügbar.
