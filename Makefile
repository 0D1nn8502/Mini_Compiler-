
all: flexy genflex 

flexy: 
	flex -o Aditya_Singh_A2.c Aditya_Singh_A2.l 
	clang lex.yy.c 


genflex: 
	./a.out < Aditya_Singh_A2.nc  




