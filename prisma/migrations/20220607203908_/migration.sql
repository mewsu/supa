/*
  Warnings:

  - Added the required column `ownerId` to the `Home` table without a default value. This is not possible if the table is not empty.

*/

/* AlterTable - Add ownerId as an optional column */
ALTER TABLE "Home" ADD COLUMN "ownerId" TEXT;

-- /* UpdateData - Add default owner value to existing homes */
-- UPDATE "Home" SET "ownerId" = 'cl437e7du0030m8eit6pyetdb' WHERE "ownerId" IS NULL;

-- /* AlterTable */
-- ALTER TABLE "Home" ADD COLUMN "ownerId" TEXT NOT NULL;

-- /* AddForeignKey */
-- ALTER TABLE "Home" ADD CONSTRAINT "Home_ownerId_fkey" FOREIGN KEY ("ownerId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;