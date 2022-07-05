/*
  Warnings:

  - Made the column `ownerId` on table `Home` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "Home" ALTER COLUMN "ownerId" SET NOT NULL;

-- AddForeignKey
ALTER TABLE "Home" ADD CONSTRAINT "Home_ownerId_fkey" FOREIGN KEY ("ownerId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
