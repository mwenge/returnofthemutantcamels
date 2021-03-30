# Return of the Mutant Camels (1987) by Jeff Minter
<img src="https://user-images.githubusercontent.com/58846/113047803-adfd1400-9199-11eb-8af3-bd1e80b08488.png" height=300><img src="https://www.myabandonware.com/media/screenshots/r/return-of-the-mutant-camels-5qa/return-of-the-mutant-camels_4.png" height=300>

This is the disassembled and [commented source code] for the 1984 Commodore 64 game Return of the Mutant Camels by Jeff Minter. 

A version of the game you can [play in your browser can be found here]. (Use the arrow keys and `ctrl` to manipulate the display, or use a gamepad if you have one plugged in. See the manual below for more.)

## Requirements

* [64tass][64tass], tested with v1.54, r1900
* [VICE][vice]

[64tass]: http://tass64.sourceforge.net/
[vice]: http://vice-emu.sourceforge.net/
[https://returnofthemutantcamels.xyz]: https://mwenge.github.io/returnofthemutantcamels.xyz
[commented source code]:https://github.com/mwenge/returnofthemutantcamels/blob/master/src/returnofthemutantcamels.asm
[play in your browser can be found here]: https://mwenge.github.io/returnofthemutantcamels

To compile and run it do:

```sh
$ make
```
The compiled game is written to the `bin` folder. 

To just compile the game and get a binary (`romc.prg`) do:

```sh
$ make romc
```

