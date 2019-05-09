EXECS=mpi_hello_world
MPICC?=mpicc

all: ${EXECS}

mpi_hello_world: mpi_hello_world.c
	${MPICC} -o mpi_hello_world mpi_hello_world.c

install:
	cp mpi_hello_world ~/.local/bin

check:
	sleep 10
	echo '(mock) testing software components'

clean:
	rm ${EXECS}
