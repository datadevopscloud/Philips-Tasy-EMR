-- Script para corrigir a descrição dos tipos de anestesia presentes no domínio do sistema.
-- Correção aplicada dia 12/09/2023 com objetivo de ajustar as descrições das anestesias utilizadas no PEPO.
UPDATE  VALOR_DOMINIO
  SET DS_VALOR_DOMINIO = DS_VALOR_DOMINIO_CLIENTE
WHERE CD_DOMINIO=36;
