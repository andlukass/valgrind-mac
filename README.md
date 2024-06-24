# VALGRIND IN MACOS
easy way to use valgrind in macos (you will need to have docker).

## INSTALL
### BUILD THE IMAGE
in the Dockerfile directory, run:
    
    docker build . -t valgrind

### ADD AN ALIAS
After the image has been built, to make it easier to run, you can add an alias so you just need to type valgrind to run the container. Run:

    echo "alias valgrind='docker run --rm -v $PWD:/temp valgrind'" >> ~/.zshrc
    source ~/.zshrc
The '-v' flag shares your current directory with the container, and with the '--rm' flag, the container deletes itself right after execution.

## USAGE
You first must to generate a linux compiled executable file, running valgrind with "make", or with the file names you want to compile. After just run valgrind with the executable path.

### RUNNING THE CONTAINER
In any directory run:
    
    docker run --rm -v $PWD:/temp valgrind <arguments>

Or if you have the alias configured, just run: 
  
    valgrind <arguments>

### ARGUMENTS
To compile raw C/CPP files, run:

    valgrind <f1> <f2> <f3> ...
  
To compile entire projects with a Makefile, run:
    
    valgrind make
    
Now with the executable, just run: 

    valgrind ./<path_to_executable>
