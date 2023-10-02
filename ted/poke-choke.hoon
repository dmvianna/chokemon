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
=+  !<([~ arg=@t] arg)
=/  base-url  "https://pokeapi.co/api/v2/pokemon/"
=/  url  (weld base-url (cass (trip arg)))
;<  info=json  bind:m  (fetch-json:strandio url)
(pure:m !>(info))