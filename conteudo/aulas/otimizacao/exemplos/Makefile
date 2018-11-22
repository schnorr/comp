OP = -Wno-unused-result

all:

shared.o: shared.c
	gcc $(OP) -c $^

inline: inline_o0.s inline_o1.s inline_to0 inline_to1 inline_manual
	
inline_o0.s: inline.c
	gcc $(OP) -S $^ -o $@

inline_o1.s: inline.c
	gcc $(OP) -S -O $^ -o $@

inline_to0: inline_t.c shared.o
	gcc $(OP) $^ -o $@

inline_to1: inline_t.c shared.o
	gcc $(OP) -O $^ -o $@

inline_manual: inline_manual.c shared.o
	gcc $(OP) $^ -o $@

tail: tail_t.c shared.o
	gcc $(OP) $^ -o $@

loop: loop.c shared.o
	gcc $(OP) $^ -o $@

ofast: ofast_o0 ofast_of ofast_so0.s ofast_so3.s ofast_sof.s
	
ofast_o0: ofast.c
	gcc $(OP) $^ -o $@

ofast_of: ofast.c
	gcc -Ofast $(OP) $^ -o $@

ofast_so0.s: ofast.c
	gcc -S $(OP) $^ -o $@

ofast_so3.s: ofast.c
	gcc -S -O3 $(OP) $^ -o $@

ofast_sof.s: ofast.c
	gcc -S -Ofast $(OP) $^ -o $@

clean:
	rm -f shared.o inline_to1 inline_o0.s inline_o1.s inline_to0 inline_to1 inline_manual tail loop ofast_o0 ofast_of ofast_so0.s ofast_so3.s ofast_sof.s
