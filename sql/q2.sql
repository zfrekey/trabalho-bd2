CREATE OR REPLACE PROCEDURE remover_indices_tabela(nome_tabela TEXT)
LANGUAGE plpgsql
AS $$
DECLARE
    indice RECORD;
BEGIN
    FOR indice IN
        SELECT indexname
        FROM pg_indexes
        WHERE schemaname = 'public'
          AND tablename = nome_tabela
    LOOP
        EXECUTE 'DROP INDEX IF EXISTS public.' || quote_ident(indice.indexname);

        RAISE NOTICE 'Índice removido: %', indice.indexname;
    END LOOP;
END;
$$;