CC = gcc
CFLAGS = -Wall

all: info discentes cc main setup

unip:
	@echo "***************"
	@echo "> UNIPAMPA - Universidade Federal do Pampa"
	@echo "> Campus Bagé"
	@echo "> Bagé-RS"
	@echo "> 07/07/2024"
	@echo "***************"
	
disc:
	@echo "***************"
	@echo "Discentes:"
	@echo "	Anthonny Cruz"
	@echo "	Lucas de Freitas Cogoy"
	@echo "	Vitor Hugo dos Santos Furtado"
	@echo "***************"

cc:
	@echo "***************"
	@echo "Componente curricular:"
	@echo "	Introdução à Engenharia de Computação"
	@echo "Docente:"
	@echo "	Fabio Ramos"
	@echo "***************"

main: main.o
	$(CC) $(CFLAGS) -o main main.o

main.o: main.c
	$(CC) $(CFLAGS) -c main.c
	
pasta:
	@mkdir -p pasta_iec
	@echo "***************" > pasta_iec/info.txt
	@echo "> UNIPAMPA - Universidade Federal do Pampa" >> pasta_iec/info.txt
	@echo "> Campus Bagé" >> pasta_iec/info.txt
	@echo "> Bagé-RS" >> pasta_iec/info.txt
	@echo "> 02/07/2024" >> pasta_iec/info.txt
	@echo "***************" >> pasta_iec/info.txt
	@echo "" >> pasta_iec/info.txt
	@echo "Discentes:" >> pasta_iec/info.txt
	@echo "	Anthonny Cruz" >> pasta_iec/info.txt
	@echo "	Vitor Hugo dos Santos Furtado" >> pasta_iec/info.txt
	@echo "	Lucas de Freitas Cogoy" >> pasta_iec/info.txt
	@echo "***************" >> pasta_iec/info.txt
	@echo "" >> pasta_iec/info.txt
	@echo "Componente curricular:" >> pasta_iec/info.txt
	@echo "	Introdução à Engenharia de Computação" >> pasta_iec/info.txt
	@echo "Docente:" >> pasta_iec/info.txt
	@echo "	Fabio Ramos" >> pasta_iec/info.txt
	@echo "***************" >> pasta_iec/info.txt
	@echo "Pasta e arquivo de texto criados com sucesso."

run: main
	./main

clean:
	rm -f *.o main
	rm -rf pasta_iec
