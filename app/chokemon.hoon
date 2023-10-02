:: Chokemon
::
:::: A pokemon API client, with caching.
  ::
/-  *chokemon
/+  default-agent, dbug
|%
::  We have state
+$  versioned-state
  $%  state-0
  ==
::  and the state is a json list
+$  state-0
  $:  [%0 values=(map @tas json)]
  ==
+$  card  card:agent:gall
--
%-  agent:dbug
=|  state-0
=*  state  -
^-  agent:gall
|_  =bowl:gall
+*  this     .
    def      ~(. (default-agent this %|) bowl)
::
++  on-init
  ^-  [(list card) _this]
  ~&  >  '%chokemon initialised successfully'
  =.  state  [%0 *(map @tas json)]
  `this
++  on-save  !>(state)
++  on-load
  |=  old=vase
  ^-  [(list card) _this]
  :-  ^-  (list card)
      ~
  %=  this
    state  !<(state-0 old)
  ==
++  on-poke
  |=  [=mark =vase]
  ^-  [(list card) _this]
  ::  check that this is a noun, else crash
  ?+    mark  (on-poke:def mark vase)
      %noun
    ::  check that this is a term
    ?+    q.vase  (on-poke:def mark vase)
        term
        ~&  vase
        :_  this
        :~
          :*  %pass  /chokemon-msg  %arvo  %k  %fard
              q.byk.bowl
              %pokedex  %noun
              !>
                q.vase
           ==
        ==
    ==
  ==

::
++  on-watch  on-watch:def
++  on-leave  on-leave:def
++  on-peek   on-peek:def
++  on-agent  on-agent:def
++  on-arvo
  |=  [=wire sign=sign-arvo]
  ^-  [(list card) _this]
  ?>  ?=([%chokemon-msg ~] wire)
  ?>  ?=([%khan %arow *] sign)
  ?:  ?=(%.n -.p.sign)
    ((slog leaf+<p.p.sign> ~) `this)
  ((slog !<(@t q.p.p.sign) ~) `this)
  :: (~(put by values.state) [name info])

++  on-fail  on-fail:def
--
