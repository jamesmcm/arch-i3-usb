" Defines a vim remapping that substitutes pairs of characters with individual
" ascii chars.

set wildcharm=<Tab>

command GamepadOn call GamepadOn()
command GamepadOff call GamepadOff()

" uses inoremap and cnoremap
function GamepadOn()
    call RemapDpad()
    call RemapNumeric()
    call RemapAlphabet()
endfunction

function RemapDpad()
    inoremap rk <Up>
    cnoremap rk <Up>
    inoremap rj <Down>
    cnoremap rj <Down>
    inoremap rh <Left>
    cnoremap rh <Left>
    inoremap rl <Right>
    cnoremap rl <Right>
    inoremap ; <Space>
    inoremap dd <Del>
    cnoremap dd <Del>
    cnoremap ; <Space>
    inoremap uu ;
    cnoremap uu ;
    inoremap da <Tab>
    cnoremap da <Tab>
    inoremap ud <PageUp>
    cnoremap ud <PageUp>
    inoremap du <PageDown>
    cnoremap du <PageDown>
    inoremap rr ,
    cnoremap rr ,
    inoremap aa .
    cnoremap aa .
    inoremap dr `
    cnoremap dr `
    inoremap ru \
    cnoremap ru \
    inoremap ar ]
    cnoremap ar ]
    inoremap ra [
    cnoremap ra [
    inoremap ak '
    cnoremap ak '
    inoremap al #
    cnoremap al #
    inoremap RR <
    cnoremap RR <
    inoremap AA >
    cnoremap AA >
    inoremap DR ¬
    cnoremap DR ¬
    inoremap RU |
    cnoremap RU |
    inoremap AR }
    cnoremap AR }
    inoremap RA {
    cnoremap RA {
    inoremap AK @
    cnoremap AK @
    inoremap AL ~
    cnoremap AL ~
endfunction
" works!

function RemapNumeric()
    inoremap hp -
    cnoremap hp -
    inoremap hw =
    cnoremap hw =
    inoremap le 1
    cnoremap le 1
    inoremap lq 2
    cnoremap lq 2
    inoremap lp 3
    cnoremap lp 3
    inoremap lw 4
    cnoremap lw 4
    inoremap je 5
    cnoremap je 5
    inoremap jq 6
    cnoremap jq 6
    inoremap jp 7
    cnoremap jp 7
    inoremap jw 8
    cnoremap jw 8
    inoremap ke 9
    cnoremap ke 9
    inoremap kq 0
    cnoremap kq 0
    inoremap HP _
    cnoremap HP _
    inoremap HW +
    cnoremap HW +
    inoremap LE !
    cnoremap LE !
    inoremap LQ "
    cnoremap LQ "
    inoremap LP £
    cnoremap LP £
    inoremap LW $
    cnoremap LW $
    inoremap JE %
    cnoremap JE %
    inoremap JQ ^
    cnoremap JQ ^
    inoremap JP &
    cnoremap JP &
    inoremap JW *
    cnoremap JW *
    inoremap KE (
    cnoremap KE (
    inoremap KQ )
    cnoremap KQ )
endfunction

" A linotype-like frequency mapping
function RemapAlphabet()
    inoremap ee e
    inoremap eh t
    inoremap el a
    inoremap ej r
    inoremap ek i
    inoremap qh o
    inoremap ql n
    inoremap qj s
    inoremap hh h
    inoremap qk d
    inoremap ll l
    inoremap ph u
    inoremap ww w
    inoremap pl m
    inoremap pj f
    inoremap pk c
    inoremap wh g
    inoremap wl y
    inoremap pp p
    inoremap wj b
    inoremap kk k
    inoremap wk v
    inoremap jj j
    inoremap he x
    inoremap qq q
    inoremap hq z
    cnoremap ee e
    cnoremap eh t
    cnoremap el a
    cnoremap ej r
    cnoremap ek i
    cnoremap qh o
    cnoremap ql n
    cnoremap qj s
    cnoremap hh h
    cnoremap qk d
    cnoremap ll l
    cnoremap ph u
    cnoremap ww w
    cnoremap pl m
    cnoremap pj f
    cnoremap pk c
    cnoremap wh g
    cnoremap wl y
    cnoremap pp p
    cnoremap wj b
    cnoremap kk k
    cnoremap wk v
    cnoremap jj j
    cnoremap he x
    cnoremap qq q
    cnoremap hq z
    inoremap ee e
    inoremap eh t
    inoremap el a
    inoremap ej r
    inoremap ek i
    inoremap qh o
    inoremap ql n
    inoremap qj s
    inoremap hh h
    inoremap qk d
    inoremap ll l
    inoremap ph u
    inoremap ww w
    inoremap pl m
    inoremap pj f
    inoremap pk c
    inoremap wh g
    inoremap wl y
    inoremap pp p
    inoremap wj b
    inoremap kk k
    inoremap wk v
    inoremap jj j
    inoremap he x
    inoremap qq q
    inoremap hq z
    cnoremap ee e
    cnoremap eh t
    cnoremap el a
    cnoremap ej r
    cnoremap ek i
    cnoremap qh o
    cnoremap ql n
    cnoremap qj s
    cnoremap hh h
    cnoremap qk d
    cnoremap ll l
    cnoremap ph u
    cnoremap ww w
    cnoremap pl m
    cnoremap pj f
    cnoremap pk c
    cnoremap wh g
    cnoremap wl y
    cnoremap pp p
    cnoremap wj b
    cnoremap kk k
    cnoremap wk v
    cnoremap jj j
    cnoremap he x
    cnoremap qq q
    cnoremap hq z
    inoremap EE E
    inoremap EH T
    inoremap EL A
    inoremap EJ R
    inoremap EK I
    inoremap QH O
    inoremap QL N
    inoremap QJ S
    inoremap HH H
    inoremap QK D
    inoremap LL L
    inoremap PH U
    inoremap WW W
    inoremap PL M
    inoremap PJ F
    inoremap PK C
    inoremap WH G
    inoremap WL Y
    inoremap PP P
    inoremap WJ B
    inoremap KK K
    inoremap WK V
    inoremap JJ J
    inoremap HE X
    inoremap QQ Q
    inoremap HQ Z
    cnoremap EE E
    cnoremap EH T
    cnoremap EL A
    cnoremap EJ R
    cnoremap EK i
    cnoremap QH O
    cnoremap QL N
    cnoremap QJ S
    cnoremap HH H
    cnoremap QK D
    cnoremap LL L
    cnoremap PH U
    cnoremap WW W
    cnoremap PL M
    cnoremap PJ F
    cnoremap PK C
    cnoremap WH G
    cnoremap WL Y
    cnoremap PP P
    cnoremap WJ B
    cnoremap KK K
    cnoremap WK V
    cnoremap JJ J
    cnoremap HE X
    cnoremap QQ Q
    cnoremap HQ Z
endfunction

" use mapclear! to wipe all current remaps
function GamepadOff()
    mapclear!
endfunction
