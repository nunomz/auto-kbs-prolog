%RuleModel

if surf and lowcost then praia_lowcost_surf.
if nadar and lowcost then praia_lowcost_nadar.
if festas and lowcost then praia_lowcost_festas.
if surf and medio then praia_medio_surf.
if nadar and medio then praia_medio_nadar.
if praia and medio then praia_medio_festas.
if surf then praia_luxo_surf.
if nadar then praia_luxo_nadar.
if praia then praia_luxo_festas.
if compras and lowcost then cidade_lowcost_compras.
if lowcost and cidade then cidade_lowcost_cultura.
if compras and medio then cidade_medio_compras.
if cultura and cidade then cidade_medio_cultura.
if festas and medio then cidade_medio_festas.
if cidade and medio then cidade_medio_gastronomia.
if compras then cidade_luxo_compras.
if festas then cidade_luxo_festas.
if cidade then cidade_luxo_gastronomia.
if paisagens and lowcost then campo_lowcost_paisagens.
if lowcost and cultura then campo_lowcost_cultura.
if lowcost and aventura then campo_lowcost_aventura.
if lowcost then campo_lowcost_gastronomia.
if paisagens and medio then campo_medio_paisagens.
if cultura and medio then campo_medio_cultura.
if medio and aventura then campo_medio_aventura.
if medio then campo_medio_gastronomia.
if paisagens then campo_luxo_paisagens.
if cultura then campo_luxo_cultura.
if aventura then campo_luxo_aventura.
%else campo_luxo_gastronomia.

%correct: 29 out of 32 training examples.