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
=+  !<([~ name=@tas] arg)
=/  base-url  "https://pokeapi.co/api/v2/pokemon/"
=/  url  (weld base-url (cass (trip name)))
;<  info=json  bind:m  (fetch-json:strandio url)
(pure:m !>([name=name info=info]))
