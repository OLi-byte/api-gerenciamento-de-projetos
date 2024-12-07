/*
  Warnings:

  - You are about to drop the column `decricao` on the `Projeto` table. All the data in the column will be lost.
  - Added the required column `descricao` to the `Projeto` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `Projeto` DROP COLUMN `decricao`,
    ADD COLUMN `descricao` VARCHAR(191) NOT NULL;
