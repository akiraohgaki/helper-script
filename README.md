# helper-script

A various helper scripts.

### remkdir.sh

remkdir.sh [target directory] [includes]

```sh
sh remkdir.sh public 'src/*.html src/assets'
```

```sh
curl -fsSL https://raw.githubusercontent.com/akiraohgaki/helper-script/main/remkdir.sh |
  sh -s -- public 'src/*.html src/assets'
```

### deno-bundle.ts

deno-bundle.ts [entry point] [outfile]

```sh
deno run --allow-env --allow-read --allow-write --allow-net \
  deno-bundle.ts src/main.ts public/main.bundle.js
```

```sh
deno run --allow-env --allow-read --allow-write --allow-net \
  https://raw.githubusercontent.com/akiraohgaki/helper-script/main/deno-bundle.ts \
  src/main.ts public/main.bundle.js
```
