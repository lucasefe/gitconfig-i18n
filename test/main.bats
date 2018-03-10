#!./libs/bats/bin/bats

MAIN_FILE='./locales/ES-es.gitconfig'

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
    assert_line --index 1 --regexp '^  agregar = add$'
}

@test "bitacora should be an alias of log" {
    run cat $MAIN_FILE
    assert_line --index 2 --regexp '^  bitacora = log$'
}

@test "perpetrar should be an alias of commit" {
    run cat $MAIN_FILE
    assert_line --index 3 --regexp '^  perpetrar = commit$'
}

@test "culpar should be an alias of blame" {
    run cat $MAIN_FILE
    assert_line --index 4 --regexp '^  culpar = blame$'
}

@test "empujar should be an alias of push" {
    run cat $MAIN_FILE
    assert_line --index 5 --regexp '^  empujar = push$'
}

@test "estado should be an alias of status" {
    run cat $MAIN_FILE
    assert_line --index 6 --regexp '^  estado = status$'
}

@test "guardar should be an alias of stash" {
    run cat $MAIN_FILE
    assert_line --index 7 --regexp '^  guardar = stash$'
}

@test "rama should be an alias of branch" {
    run cat $MAIN_FILE
    assert_line --index 8 --regexp '^  rama = branch$'
}

@test "revertir should be an alias of revert" {
    run cat $MAIN_FILE
    assert_line --index 9 --regexp '^  revertir = revert$'
}

@test "tirar should be an alias of pull" {
    run cat $MAIN_FILE
    assert_line --index 10 --regexp '^  tirar = pull$'
}

@test "tronco should be an alias of log" {
    run cat $MAIN_FILE
    assert_line --index 11 --regexp '^  tronco = log$'
}

@test "unir should be an alias of merge" {
    run cat $MAIN_FILE
    assert_line --index 12 --regexp '^  unir = merge$'
}
