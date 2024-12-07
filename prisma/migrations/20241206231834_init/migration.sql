-- CreateTable
CREATE TABLE `Projeto` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(191) NOT NULL,
    `decricao` VARCHAR(191) NOT NULL,
    `categoria` VARCHAR(191) NOT NULL,
    `prazo` DATETIME(3) NOT NULL,
    `status` VARCHAR(191) NOT NULL,
    `criadoEm` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Tarefa` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `projetoId` INTEGER NOT NULL,
    `titulo` VARCHAR(191) NOT NULL,
    `descricao` VARCHAR(191) NOT NULL,
    `prioridade` VARCHAR(191) NOT NULL,
    `prazo` DATETIME(3) NOT NULL,
    `status` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Relatorio` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `projetoId` INTEGER NOT NULL,
    `data` DATETIME(3) NOT NULL,
    `progresso` DOUBLE NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Tarefa` ADD CONSTRAINT `Tarefa_projetoId_fkey` FOREIGN KEY (`projetoId`) REFERENCES `Projeto`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Relatorio` ADD CONSTRAINT `Relatorio_projetoId_fkey` FOREIGN KEY (`projetoId`) REFERENCES `Projeto`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
