/*
  Warnings:

  - You are about to drop the column `enrollment_info` on the `Course` table. All the data in the column will be lost.
  - Added the required column `academic_group` to the `Course` table without a default value. This is not possible if the table is not empty.
  - Added the required column `academic_organization` to the `Course` table without a default value. This is not possible if the table is not empty.
  - Added the required column `campus` to the `Course` table without a default value. This is not possible if the table is not empty.
  - Added the required column `career` to the `Course` table without a default value. This is not possible if the table is not empty.
  - Added the required column `course_components` to the `Course` table without a default value. This is not possible if the table is not empty.
  - Added the required column `enrollment_information` to the `Course` table without a default value. This is not possible if the table is not empty.
  - Added the required column `grading_basis` to the `Course` table without a default value. This is not possible if the table is not empty.
  - Added the required column `raw` to the `Course` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "public"."Course" DROP COLUMN "enrollment_info",
ADD COLUMN     "academic_group" TEXT NOT NULL,
ADD COLUMN     "academic_organization" TEXT NOT NULL,
ADD COLUMN     "campus" TEXT NOT NULL,
ADD COLUMN     "career" TEXT NOT NULL,
ADD COLUMN     "course_components" TEXT NOT NULL,
ADD COLUMN     "enrollment_information" TEXT NOT NULL,
ADD COLUMN     "grading_basis" TEXT NOT NULL,
ADD COLUMN     "raw" TEXT NOT NULL;
