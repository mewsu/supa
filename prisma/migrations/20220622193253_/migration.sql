-- CreateTable
CREATE TABLE "_UserFavoriteHomes" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_UserFavoriteHomes_AB_unique" ON "_UserFavoriteHomes"("A", "B");

-- CreateIndex
CREATE INDEX "_UserFavoriteHomes_B_index" ON "_UserFavoriteHomes"("B");

-- AddForeignKey
ALTER TABLE "_UserFavoriteHomes" ADD CONSTRAINT "_UserFavoriteHomes_A_fkey" FOREIGN KEY ("A") REFERENCES "Home"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_UserFavoriteHomes" ADD CONSTRAINT "_UserFavoriteHomes_B_fkey" FOREIGN KEY ("B") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;
