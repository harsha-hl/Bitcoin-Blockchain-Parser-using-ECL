blockchain.out: mainCOPY.cpp
	g++ mainCOPY.cpp -o blockchain.out
run:	blockchain.out
	./blockchain.out
