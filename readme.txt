The purpose of this project is to rebuild some standard C functions in assembly language.

The project is run in a docker Ubuntu container to facilitate cross platform functionality.

Dependencies:
- Docker

To run:
- Run the run.sh script (might require elevated priviledges) which will setup the container
- Once the container is set up, run 'cd libftasm' and then 'make' to build the project
- Run ./test_main testfile.txt to run tests
