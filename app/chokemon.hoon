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
              %chokemon  %pokedex  %noun
              !>  :*
                bowl
                q.vase
              ==
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
  |=  [=wire =sign-arvo]
  ^-  [(list card) _this]
  ?+  wire  (on-arvo:def wire sign-arvo)
    [%chokemon-msg ~]  :: Is this a well formed pokemon name?
      ~&  "We got a chokemon-msg!"
      ~&  sign-arvo
      :_  this  ~  :: (~(put by values.state) [name info])
  ==
++  on-fail  on-fail:def
--
