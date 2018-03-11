#!./libs/bats/bin/bats

MAIN_FILE='./locales/ES-es.gitconfig'
BASH_RC='./locales/ES-es.bashrc'

load 'libs/bats-support/load'
load 'libs/bats-assert/load'

@test "Main file should exists" {
    assert [ -e $MAIN_FILE ]
}

@test "Main file should have an [alias] in the first line" {
    run cat $MAIN_FILE
    assert_line --index 0 '[alias]'
}

@test "agregar should be an alias of add" {
    run cat $MAIN_FILE
    assert_line --regexp '^  agregar = add$'
}

@test "bitacora should be an alias of log" {
    run cat $MAIN_FILE
    assert_line --regexp '^  bitacora = log$'
}

@test "perpetrar should be an alias of commit" {
    run cat $MAIN_FILE
    assert_line --regexp '^  perpetrar = commit$'
}

@test "culpar should be an alias of blame" {
    run cat $MAIN_FILE
    assert_line --regexp '^  culpar = blame$'
}

@test "empujar should be an alias of push" {
    run cat $MAIN_FILE
    assert_line --regexp '^  empujar = push$'
}

@test "estado should be an alias of status" {
    run cat $MAIN_FILE
    assert_line --regexp '^  estado = status$'
}

@test "guardar should be an alias of stash" {
    run cat $MAIN_FILE
    assert_line --regexp '^  guardar = stash$'
}

@test "rama should be an alias of branch" {
    run cat $MAIN_FILE
    assert_line --regexp '^  rama = branch$'
}

@test "revertir should be an alias of revert" {
    run cat $MAIN_FILE
    assert_line --regexp '^  revertir = revert$'
}

@test "tirar should be an alias of pull" {
    run cat $MAIN_FILE
    assert_line --regexp '^  tirar = pull$'
}

@test "tronco should be an alias of log" {
    run cat $MAIN_FILE
    assert_line --regexp '^  tronco = log$'
}

@test "unir should be an alias of merge" {
    run cat $MAIN_FILE
    assert_line --regexp '^  unir = merge$'
}

@test "cretino should be an alias of git itself" {
    run cat $BASH_RC
    assert_output --regexp 'cretino=.git.'
}
