# VALGRIND IN MACOS
easy way to use valgrind in macos (you will need to have docker).

## Installation
### Building the Docker Image
in the Dockerfile directory, run:
    
    docker build . -t valgrind

### Adding an Alias for Convenience
After the image has been built, to make it easier to run, you can add an alias so you just need to type valgrind to run the container. Run:

    echo "alias valgrind='docker run --rm -v $PWD:/temp valgrind'" >> ~/.zshrc
    source ~/.zshrc
The '-v' flag shares your current directory with the container, and with the '--rm' flag, the container deletes itself right after execution.

## USAGE
You need to ensure that your executable is compiled for Linux. Go to the project directory you want to run valgrind. You can compile your files using make:

    valgrind make

Or by specifying the file names directly.

    valgrind <f1> <f2> <f3> ...

Now you have the executable, just run: 

    valgrind ./<path_to_executable>
