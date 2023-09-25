-- A informação do campo "Diluição / Composição / Observações / Ativ" da ADEP possui algumas validações em sua apresentação, onde ao utilizar a opção "Marque se o processo de geração dos itens da REP para a CPOE está ativo." dos Cadastros Gerais > Parâmetros PEP, aprensenta o texto diferente quando o item possui uma sequencia da CPOE (HTML). Que deve ser o resultado das divergências na apresentação de sua base.
-- A instituição utiliza HTML? Alguma função da plataforma? Se não, podemos estar removendo a opção do cadastro para validar o comportamento. Para isso, peço que verifique com seu DBA para alterar o campo ie_rep_cpoe da tabela parametro_medico para 'N'.
-- Em JAVA a opção não será apresentada nos cadastro gerais, desta forma, deve-se efetuar a alteração via banco de dados, conforme abaixo, e efetuar testes em novas prescrições para acompanhar o resultado.

UPDATE parametro_medico
SET ie_rep_cpoe = 'N'
where cd_estabelecimento = 1;
