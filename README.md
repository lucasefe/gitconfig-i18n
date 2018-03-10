## Explanation

Are you tired of hearing people saying things like "Pusheaste ya?" but later thinking "damn, they have a point, the command is in English".

Now you can change those commands and let the discussion be over. No more excuses.


## Install

Add this to your `.gitconfig`, using the your own absolute path to the localized .gitconfig file.

```
[include]
   path = /Users/lucasefe/Code/blackhole/gitconfig-i18n/locales/ES-es.gitconfig

```

Now you enjoy the following aliases. You're welcome.

```
agregar = add
bitacora = log
clonar = clone
culpar = blame
dife = diff
distante = remote
empujar = push
eneso = init
estado = status
etiquetar = tag
guardar = stash
inic = init
mostrar = show
perpetrar = commit
rama = branch
restablecer = reset
revertir = revert
revisar = checkout
tirar = pull
tronco = log
unir = merge
```

There's a more Argentina-specific [.gitconfig](https://github.com/lucasefe/gitconfig-i18n/blob/master/locales/AR-es.gitconfig) available if you want the full `lunfardo` experience (more to come).

## Example

```
$ git tirar
$ vim README.md
$ git agregar README.md
$ git perpetrar -am "Readme updated"
$ git empujar
```

## Wanna contribute?

Fork away and submit PRs (include tests, please).
