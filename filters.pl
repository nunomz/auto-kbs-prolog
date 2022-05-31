%-----------------------------
%-----------filtros-----------
%-----------------------------

membro(X, [X|_]).
membro(X, [_|R]) :- membro(X, R).

%-----------------------------
%hotel(localização,pais,continente,dens populacional,tipo,[caracteristicas],nivel,nome,distancia,preco).
%-----------------------------

%-----------------------------

filter(Tipo,Carac,Custo) :-
    findall((Y,L,X),(hotel(L,_,_,_,Tipo,X,Custo,Y,_,_),membro(Carac,X)),L),
    print(L).

%-----------------------------

profile(praia_lowcost_surf) :- filter(praia,surf,lowcost).
profile(praia_lowcost_nadar) :- filter(praia,nadar,lowcost).
profile(praia_lowcost_festas) :- filter(praia,festas,lowcost).

profile(praia_medio_surf) :- filter(praia,surf,medio).
profile(praia_medio_nadar) :- filter(praia,nadar,medio).
profile(praia_medio_festas) :- filter(praia,festas,medio).

profile(praia_luxo_surf) :- filter(praia,surf,luxo).
profile(praia_luxo_nadar) :- filter(praia,nadar,luxo).
profile(praia_luxo_festas) :- filter(praia,festas,luxo).

profile(cidade_lowcost_compras) :- filter(cidade,compras,lowcost).
profile(cidade_lowcost_cultura) :- filter(cidade,cultura,lowcost).
profile(cidade_lowcost_festas) :- filter(cidade,festas,lowcost).
profile(cidade_lowcost_gastronomia) :- filter(cidade,gastronomia,lowcost).

profile(cidade_medio_compras) :- filter(cidade,compras,medio).
profile(cidade_medio_cultura) :- filter(cidade,cultura,medio).
profile(cidade_medio_festas) :- filter(cidade,festas,medio).
profile(cidade_medio_gastronomia) :- filter(cidade,gastronomia,medio).

profile(cidade_luxo_compras) :- filter(cidade,compras,luxo).
profile(cidade_luxo_cultura) :- filter(cidade,cultura,luxo).
profile(cidade_luxo_festas) :- filter(cidade,festas,luxo).
profile(cidade_luxo_gastronomia) :- filter(cidade,gastronomia,luxo).

profile(campo_lowcost_paisagens) :- filter(campo,paisagens,lowcost).
profile(campo_lowcost_cultura) :- filter(campo,cultura,lowcost).
profile(campo_lowcost_aventura) :- filter(campo,aventura,lowcost).
profile(campo_lowcost_gastronomia) :- filter(campo,gastronomia,lowcost).

profile(campo_medio_paisagens) :- filter(campo,paisagens,medio).
profile(campo_medio_cultura) :- filter(campo,cultura,medio).
profile(campo_medio_aventura) :- filter(campo,aventura,medio).
profile(campo_medio_gastronomia) :- filter(campo,gastronomia,medio).

profile(campo_luxo_paisagens) :- filter(campo,paisagens,luxo).
profile(campo_luxo_cultura) :- filter(campo,cultura,luxo).
profile(campo_luxo_aventura) :- filter(campo,aventura,luxo).
profile(campo_luxo_gastronomia) :- filter(campo,gastronomia,luxo).