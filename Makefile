.PHONY: all clean run

D64_IMAGE = "bin/romc.d64"
X64 = x64
X64SC = x64sc
C1541 = c1541

all: clean d64 run
original: clean d64_orig run_orig

romc.prg: src/romc.asm src/extra_sprites.asm
	64tass -Wall -Wno-implied-reg --cbm-prg -o bin/rc.prg -L bin/list-co1.txt -l bin/labels.txt src/romc.asm
	64tass -Wall -Wno-implied-reg --cbm-prg -o bin/extra_sprites.prg src/extra_sprites.asm
	exomizer sfx sys bin/rc.prg bin/extra_sprites.prg,0xe000  -n -o bin/romc.prg
	md5sum bin/rc.prg bin/rc-bench.prg
	md5sum bin/extra_sprites.prg bin/extra_sprites-bench.prg

d64: romc.prg
	$(C1541) -format "romc,rq" d64 $(D64_IMAGE)
	$(C1541) $(D64_IMAGE) -write bin/romc.prg "romc"
	$(C1541) $(D64_IMAGE) -list

run: d64
	$(X64) -verbose $(D64_IMAGE)

run: d64

clean:
	-rm $(D64_IMAGE)
	-rm bin/romc.prg
	-rm bin/rc.prg
	-rm bin/extra_sprites.prg
	-rm bin/*.txt
