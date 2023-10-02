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
  $:  [%0 values=(map @t json)]
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
  =.  state  [%0 *(map @t json)]
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
        =/  tid  `@ta`(cat 3 'thread_' (scot %uv (sham eny.bowl)))
        =/  ta-now  `@ta`(scot %da now.bowl)
        =/  start-args  [~ `tid byk.bowl(r da+now.bowl) %pokedex !>(`q.vase)]
        :_  this
        :~  [%pass /thread/[ta-now] %agent [our.bowl %spider] %watch /thread-result/[tid]]
            [%pass /thread/[ta-now] %agent [our.bowl %spider] %poke %spider-start !>(start-args)]
            ==
         ==
  ==

::
++  on-watch  on-watch:def
++  on-leave  on-leave:def
++  on-peek   on-peek:def
++  on-agent
   |=  [=wire =sign:agent:gall]
   ^-  (quip card _this)
   ?+    -.wire  (on-agent:def wire sign)
       %thread
     ?+    -.sign  (on-agent:def wire sign)
         %poke-ack
       ?~  p.sign
         %-  (slog leaf+"Thread started successfully" ~)
         `this
       %-  (slog leaf+"Thread failed to start" u.p.sign)
       `this
     ::
         %fact
       ?+    p.cage.sign  (on-agent:def wire sign)
           %thread-fail
         =/  err  !<  (pair term tang)  q.cage.sign
         %-  (slog leaf+"Thread failed: {(trip p.err)}" q.err)
         `this
           %thread-done
        ~&  !<(=json q.cage.sign)
         `this
       ==
     ==
   ==
++  on-arvo   on-agent:def
++  on-fail  on-fail:def
--
