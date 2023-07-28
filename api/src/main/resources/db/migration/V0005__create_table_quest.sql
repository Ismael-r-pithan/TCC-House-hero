CREATE TABLE quest (
    id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "description" VARCHAR(512) NOT NULL,
    "key" VARCHAR(255),
    rewards INTEGER NOT NULL,
    experience BIGINT NOT NULL DEFAULT 0,
    recurring VARCHAR(255) NOT NULL
);

ALTER TABLE quest ADD CONSTRAINT pk_quest PRIMARY KEY (id);
ALTER TABLE quest ADD CONSTRAINT ck_recurring CHECK(recurring in ('DIARIA', 'SEMANAL', 'MENSAL'));
ALTER TABLE quest ADD CONSTRAINT uk_key UNIQUE ("key");


INSERT INTO public."quest"
(id, "name", "description", rewards, recurring, "key", experience)
VALUES
(1000000000, 'LIMPEZA', 'Criar uma tarefa da categoria limpeza', 25, 'DIARIA', 'MISSAO_01', 10);

INSERT INTO public."quest"
(id, "name", "description", rewards, recurring, "key", experience)
VALUES
(1000000001, 'HIGIENE', 'Criar uma tarefa da categoria higiene', 25, 'DIARIA', 'MISSAO_02', 10);

INSERT INTO public."quest"
(id, "name", "description", rewards, recurring, "key", experience)
VALUES
(1000000002, 'ESTUDO', 'Criar uma tarefa da categoria estudo', 25, 'DIARIA', 'MISSAO_03', 10);

INSERT INTO public."quest"
(id, "name", "description", rewards, recurring, "key", experience)
VALUES
(1000000003, 'LAZER', 'Criar uma tarefa da categoria lazer', 25, 'DIARIA', 'MISSAO_04', 10);

INSERT INTO public."quest"
(id, "name", "description", rewards, recurring, "key", experience)
VALUES
(1000000004, 'SAUDE', 'Criar uma tarefa da categoria saúde', 25, 'DIARIA', 'MISSAO_05', 10);

INSERT INTO public."quest"
(id, "name", "description", rewards, recurring, "key", experience)
VALUES
(1000000005, 'TRABALHO', 'Criar uma tarefa da categoria trabalho', 25, 'DIARIA', 'MISSAO_06', 10);

INSERT INTO public."quest"
(id, "name", "description", rewards, recurring, "key", experience)
VALUES
(1000000006, 'DIA DE UM DEUS', 'Criar tarefas de todos os tipos', 100, 'DIARIA', 'MISSAO_07', 20);

INSERT INTO public."quest"
(id, "name", "description", rewards, recurring, "key", experience)
VALUES
(1000000007, 'SEMANA DE UM VENCEDOR', 'Criar tarefas todos os dias da semana', 200, 'SEMANAL', 'MISSAO_08', 50);

INSERT INTO public."quest"
(id, "name", "description", rewards, recurring, "key", experience)
VALUES
(1000000008, 'UM MÊS E TANTO', 'Criar tarefas todos os dias durante um mês', 500, 'MENSAL', 'MISSAO_09', 100);