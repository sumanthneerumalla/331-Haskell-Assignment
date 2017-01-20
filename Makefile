all:
	ghc -o myHaskell myHaskell.hs
run: 
	./myHaskell
clean:
	rm -rf *.o
	rm -f *.hi