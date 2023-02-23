add necessary r packages to using conda

export env. file to environment.yml and rebuild.


```bash
conda env export > environment.yml
```


run with (where required input is in /demo)


```bash
docker run --rm -it --volume="$(pwd):/workdir" --workdir=/workdir/demo plaquette/r_helper:dev bash -c "Rscript ..."
```

to build:
```bash
docker build -t plaquette/r_helper:dev .
```

to push
```bash
docker push plaquette/r_helper:dev  
 ```
