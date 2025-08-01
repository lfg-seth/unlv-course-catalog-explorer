# 🛠️ Neon PostgreSQL Setup (Project Notes)

This document outlines how I integrated a Neon PostgreSQL database into this project using Vercel's built-in support.

---

## 🧾 Tools Used

- Vercel (hosting + built-in database support)
- Node.js with `npm`
- Neon (PostgreSQL)
- Prisma (ORM for schema and queries)

---

## 🛠️ What I Did

### Setting Up the Project on Vercel

I created the Vercel project first by pushing my local Next.js repo to GitHub and importing it into Vercel. Once the frontend was wired up, I needed a backend database.

### Adding a Neon PostgreSQL Database

Within the Vercel project dashboard, I went to the **Storage** tab and created a new Neon database. I selected the closest region, named the DB `course-explorer`, and linked it directly to the Vercel project.

Vercel handled injecting the `DATABASE_URL` into the project’s environment variables automatically—no manual copying or setup required.

---

## 🧪 Local Development Setup

To work locally with the same environment variables Vercel provides in production, I used the Vercel CLI.

1. Installed the CLI globally:

```bash
npm install -g vercel
```

2. Linked my local folder to the Vercel project:

```bash
vercel link
```

3. Pulled down all environment variables into a `.env` file:

```bash
vercel env pull .env
```

Now I can run the app locally with:

```bash
npm run dev
```

---

## 🧱 Database Schema with Prisma

I used Prisma to define and manage the schema for the Neon PostgreSQL database. After installing Prisma:

```bash
npm install -D prisma
npx prisma init
```

I updated the `schema.prisma` file to match the course data model:

```prisma
datasource db {
  provider = "postgresql"
  url      = env("DATABASE_URL")
}

generator client {
  provider = "prisma-client-js"
}

model Course {
  id                 Int    @id @default(autoincrement())
  course_id          String
  course_number      String
  course_subject     String
  title              String
  description        String
  enrollment_info    String
  credit_min         Int
  credit_max         Int
  prerequisites      String[]
  // Additional fields added as needed
}
```

Then I ran the initial migration:

```bash
npx prisma migrate dev --name init
```

This created the actual tables inside Neon and allowed me to query from the Next.js API routes.

---

## 🏁 Summary

By using Vercel's native Neon integration, I was able to skip a lot of setup overhead. Everything from provisioning to environment variable injection was handled inside the Vercel dashboard. Local development was seamless with the CLI. Prisma made schema and migration management clean and efficient.

---

## 📎 References

- [Neon Docs](https://docs.neon.tech/)
- [Prisma Docs](https://www.prisma.io/docs)
- [Vercel + Neon Integration](https://vercel.com/integrations/neon)
- [Vercel CLI Docs](https://vercel.com/docs/cli)
