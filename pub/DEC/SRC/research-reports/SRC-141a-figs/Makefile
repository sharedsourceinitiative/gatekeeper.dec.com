.SUFFIXES: .gif .ps

PSDUMPS = \
    binpack-many-full.ps \
    binpack-one-full.ps \
    chatroom-deckscape-full.ps \
    chatroom-webcard-full.ps \
    chatroom-webscape-full.ps \
    deckscape-full.ps \
    simple-full.ps \
    ttt-one-1-full.ps \
    ttt-one-2-full.ps \
    ttt-one-3-full.ps \
    ttt-two-O-full.ps \
    ttt-two-X-full.ps \
    virtualtv-full.ps 

THUMBNAILS = \
    binpack-many-third.gif \
    binpack-one-third.gif \
    chatroom-deckscape-twofifth.gif \
    chatroom-webcard-twofifth.gif \
    chatroom-webscape-twofifth.gif \
    deckscape-third.gif \
    man.half.gif \
    mhb.half.gif \
    simple-half.gif \
    ttt-one-1-twofifth.gif \
    ttt-one-2-twofifth.gif \
    ttt-one-3-twofifth.gif \
    ttt-two-O-half.gif \
    ttt-two-X-half.gif \
    virtualtv-third.gif

.gif.ps:
	giftoppm $*.gif | ppmtopgm | pnmtops -noturn -runlength >$*.ps

all: $(PSDUMPS) $(THUMBNAILS)

clean:
	rm -f $(PSDUMPS) $(THUMBNAILS) 

thumbnails:
	rm -f $(THUMBNAILS)
	make $(THUMBNAILS)

binpack-many-third.gif:
	giftoppm binpack-many-full.gif | pnmscale -xscale .333 -yscale .333 | ppmquant 256 | ppmtogif >$*.gif

binpack-one-third.gif:
	giftoppm binpack-one-full.gif | pnmscale -xscale .333 -yscale .333 | ppmquant 256 | ppmtogif >$*.gif

chatroom-deckscape-twofifth.gif:
	giftoppm chatroom-deckscape-full.gif | pnmscale -xscale .4 -yscale .4 | ppmquant 256 | ppmtogif >$*.gif

chatroom-webcard-twofifth.gif:
	giftoppm chatroom-webcard-full.gif | pnmscale -xscale .4 -yscale .4 | ppmquant 256 | ppmtogif >$*.gif

chatroom-webscape-twofifth.gif:
	giftoppm chatroom-webscape-full.gif | pnmscale -xscale .4 -yscale .4 | ppmquant 256 | ppmtogif >$*.gif

deckscape-third.gif:
	giftoppm deckscape-full.gif | pnmscale -xscale .333 -yscale .333 | ppmquant 256 | ppmtogif >$*.gif

man.half.gif:
	giftoppm man.gif | pnmscale -xscale .5 -yscale .5 | ppmquant 256 | ppmtogif >$*.gif

mhb.half.gif:
	giftoppm mhb.gif | pnmscale -xscale .5 -yscale .5 | ppmquant 256 | ppmtogif >$*.gif

simple-half.gif:
	giftoppm simple-full.gif | pnmscale -xscale .333 -yscale .333 | ppmquant 256 | ppmtogif >$*.gif

ttt-one-1-twofifth.gif:
	giftoppm ttt-one-1-full.gif | pnmscale -xscale .4 -yscale .4 | ppmquant 256 | ppmtogif >$*.gif

ttt-one-2-twofifth.gif:
	giftoppm ttt-one-2-full.gif | pnmscale -xscale .4 -yscale .4 | ppmquant 256 | ppmtogif >$*.gif

ttt-one-3-twofifth.gif:
	giftoppm ttt-one-3-full.gif | pnmscale -xscale .4 -yscale .4 | ppmquant 256 | ppmtogif >$*.gif

ttt-two-O-half.gif:
	giftoppm ttt-two-O-full.gif | pnmscale -xscale .5 -yscale .5 | ppmquant 256 | ppmtogif >$*.gif

ttt-two-X-half.gif:
	giftoppm ttt-two-X-full.gif | pnmscale -xscale .5 -yscale .5 | ppmquant 256 | ppmtogif >$*.gif

virtualtv-third.gif:
	giftoppm virtualtv-full.gif | pnmscale -xscale .333 -yscale .333 | ppmquant 256 | ppmtogif >$*.gif













