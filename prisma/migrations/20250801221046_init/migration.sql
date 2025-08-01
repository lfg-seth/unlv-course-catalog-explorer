-- CreateTable
CREATE TABLE "public"."Course" (
    "id" SERIAL NOT NULL,
    "course_id" TEXT NOT NULL,
    "course_number" TEXT NOT NULL,
    "course_subject" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "enrollment_info" TEXT NOT NULL,
    "credit_min" INTEGER NOT NULL,
    "credit_max" INTEGER NOT NULL,
    "prerequisites" TEXT[],

    CONSTRAINT "Course_pkey" PRIMARY KEY ("id")
);
