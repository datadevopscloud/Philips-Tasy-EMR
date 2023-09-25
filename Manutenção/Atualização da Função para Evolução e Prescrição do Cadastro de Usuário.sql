-- Ajuste aplicado dia 12/09/2023 com a ciência do Flávio.
-- Script responvável por ajustar a função para prescrição e evolução dos usuários que possuem este valor nulo, para "Administrativo".
UPDATE USUARIO
  SET IE_TIPO_EVOLUCAO = 21
WHERE IE_TIPO_EVOLUCAO IS NULL;
