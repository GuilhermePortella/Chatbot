% Universidade Cruzeiro do Sul
% Ciencia da Computacao
% Disciplina: Projeto Integrador de Competencias em Ciencia da Computacao
% Nome: Guilherme Portella

% referência ao banco de dados
:- include('basededados1.pl').
:- include('basededados2.pl').

projetoIntegrador :-
  write('---------------BEM VINDO AO FUTURO---------------'), nl,
  write('Digite uma pergunta LEMBRE-SE LETRAS SEM ACENTUACAO E ENTRE '' E COM . :..........'), nl,

  repeat, nl,
  read(Input),
 % data_base_search(Input, Output),
 search(Input, Output),
  write(Output), nl,
  end_session(Input).

search(Input, Answer) :-
  basedeDados2(Input, Answer), !;
  basedeDados1(Input, Answer), !.

end_session(Input) :-
  Input = sair.
