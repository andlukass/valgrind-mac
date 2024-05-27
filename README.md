# VALGRIND IN MACOS
easy way to use valgrind in macos (if you already have docker).

## INSTALL
### BUILD THE IMAGE
in the Dockerfile directory, run:
docker build . -t valgrind

### RUN THE CONTAINER
in any directory run:
docker run --rm -v $PWD:/temp valgrind
with the '-v' flag, you "share" your current directory with the container, and with the '--rm', you make it delete it self right after its execution


### ADD AN ALIAS
to make it easier to run, we can add an alias, so we just need to type valgrind to run our container
echo "alias valgrind='docker run --rm -v $PWD:/temp valgrind'" >> ~/.zshrc
source ~/.zshrc

# USAGE
if you want just to compile files, run "valgrind f1 f2 f3 ..."
if you want to compile entire projects with a Makefile, run "valgrind make"
now re have our executable, just run "valgrind ./<path_to_executable>"