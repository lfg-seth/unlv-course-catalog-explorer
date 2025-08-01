# 🎓 UNLV Course Explorer

**UNLV Course Explorer** is a full-stack portfolio project that visualizes the entire course catalog of a college—including every course and its pre-requisites—in an interactive, intuitive, and modern interface.

Unlike the official UNLV course catalog, which is difficult to navigate and poorly designed for student exploration, this tool provides a user-friendly way to discover courses, understand degree programs, and plan out a path to graduation.

---

## 🚀 Goals

- Build a better way to explore the full list of UNLV courses and their pre-requisites.
- Visualize degree programs and recommended 4-year study plans.
- Allow users to easily search, filter, and explore course relationships.
- Demonstrate full-stack development skills including:
  - Data scraping & normalization
  - Backend database and API design
  - Frontend development using Next.js and graph libraries
  - Clean, usable UI/UX design

---

## 💡 Why?

The official UNLV course catalog is difficult to use:
- Poor search experience
- Course relationships are buried in plain-text descriptions
- No easy way to understand how degree programs flow

This project solves that by creating a better UI and exploring backend/frontend integration, while also providing a real-world solution that students could use.

---

## 🗺️ Project Roadmap

### ✅ MVP Scope

1. **Determine Available Data**
   - Identify where course, prerequisite, and degree data lives on the UNLV site.

2. **Scrape the Data**
   - Use tools like `BeautifulSoup`, `Playwright`, or `Puppeteer` to extract course information.
   - Normalize raw prerequisite descriptions into structured format.

3. **Build the Database**
   - Store structured data:
     - Course ID, title, description
     - Prerequisites
     - Degree programs
     - 4-year plans

4. **Design the UI Mockup**
   - Draft low-fidelity wireframes showing:
     - Search interface
     - Course detail view
     - Interactive graph explorer
     - Degree plan browser

5. **Build the Frontend**
   - Framework: **Next.js**
   - Visualization: **D3.js**, **React Flow**, or **Cytoscape.js**
   - Implement interactive graph view of prerequisites and degrees
   - Add search and filter UI

### 🧪 MVP Complete When:

- Courses are viewable in an interactive graph
- Prerequisites are visually connected
- Courses and degrees are searchable
- 4-year plans can be viewed in structured format

---

## 🌱 Future Ideas

- Let users track which courses they've taken and suggest what’s next
- Add filters for departments, difficulty, GPA stats (if available)
- Compare degrees side-by-side
- Dark mode and mobile responsive layout
- Export personalized 4-year plans

---

## 👨‍🎓 Who's This For?

Students can use this site to:
- Discover courses they didn’t know existed
- Explore majors and minors in a visual, interactive way
- Understand prerequisite chains and plan ahead
- Get a better experience than the default course catalog

---

## 🧰 Tech Stack

- **Frontend:** Next.js, React, D3.js / React Flow / Cytoscape.js
- **Backend:** Node.js API routes (Next.js), optional Express
- **Database:** Supabase / PostgreSQL / SQLite
- **Scraping:** Python, BeautifulSoup, Playwright

---

## 📌 Status

> 🔧 **Active Development** — MVP in progress.

---

Feel free to fork this repo, open issues, or suggest improvements!
