:- include('basededados1.pl').
:- include('basededados2.pl').


projetoIntegrador :-
  write('---------------BEM VINDO---------------'), nl,
  write('Digite uma pergunta LEMBRE-SE LETRAS SEM ACENTUACAO E ENTRE '' E COM . :..........'), nl,

  repeat, nl,
  read(Input),
 search(Input, Output),
  write(Output), nl,
  end_session(Input).

search(Input, Answer) :-
  basedeDados2(Input, Answer), !;
  basedeDados1(Input, Answer), !.

end_session(Input) :-
  Input = sair.
