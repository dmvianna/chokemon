::  /ted/poke-choke.hoon
::  Usage:
::    -pokedex 'Pikachu'
/-  spider
/+  strandio
=,  strand=strand:spider
^-  thread:spider
|=  arg=vase
=/  m  (strand ,vase)
^-  form:m
=+  !<([~ argt=@t] arg)
=/  base-url  "https://pokeapi.co/api/v2/pokemon/"
=/  url  (weld base-url (cass (trip argt)))
;<  info=json  bind:m  (fetch-json:strandio url)
(pure:m !>(argt))
