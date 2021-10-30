all: Main.hs
	ghc -dynamic --make Main.hs -o calc
	rm *.hi
	rm *.o
	rm ./CalcLib/*.hi
	rm ./CalcLib/*.o

calc: Main.hs
	ghc -dynamic --make Main.hs -o calc

clean:
	rm *.hi
	rm *.o
	rm ./CalcLib/*.hi
	rm ./CalcLib/*.o
