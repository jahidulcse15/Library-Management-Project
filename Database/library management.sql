<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Md. Jahidul Islam — Portfolio</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet" />
  <style>
    /* Reset */
    *, *::before, *::after {
      box-sizing: border-box;
    }
    body {
      margin: 0;
      font-family: 'Poppins', sans-serif;
      background: #0f172a;
      color: #e0e7ff;
      line-height: 1.6;
      scroll-behavior: smooth;
      -webkit-font-smoothing: antialiased;
      -moz-osx-font-smoothing: grayscale;
    }
    a {
      color: #38bdf8;
      text-decoration: none;
      transition: color 0.3s ease;
    }
    a:hover {
      color: #60a5fa;
    }
    /* Container */
    .container {
      max-width: 900px;
      margin: 0 auto;
      padding: 2.5rem 1rem;
    }

    /* Header */
    header {
      background: #1e293b;
      padding: 1rem 2rem;
      position: sticky;
      top: 0;
      z-index: 1000;
      display: flex;
      justify-content: space-between;
      align-items: center;
      box-shadow: 0 2px 15px rgba(0,0,0,0.6);
    }
    header h1 {
      margin: 0;
      font-weight: 700;
      font-size: 1.7rem;
      color: #facc15;
      letter-spacing: 1.2px;
      user-select: none;
    }
    nav ul {
      list-style: none;
      display: flex;
      gap: 2rem;
      margin: 0;
      padding: 0;
    }
    nav ul li a {
      font-weight: 600;
      font-size: 1rem;
      position: relative;
      padding: 0.2rem 0;
    }
    nav ul li a::after {
      content: '';
      position: absolute;
      width: 0%;
      height: 2px;
      bottom: -4px;
      left: 0;
      background-color: #38bdf8;
      transition: width 0.3s ease;
    }
    nav ul li a:hover::after {
      width: 100%;
    }

    /* Hero Section */
    .hero {
      background: linear-gradient(135deg, #0284c7 0%, #0ea5e9 100%);
      color: #f0f9ff;
      text-align: center;
      padding: 6rem 1rem 5rem;
      border-radius: 0 0 60px 60px;
      box-shadow: 0 12px 30px rgba(14, 165, 233, 0.6);
      user-select: none;
    }
    .hero h2 {
      font-size: 3.25rem;
      font-weight: 700;
      margin-bottom: 0.5rem;
      letter-spacing: 1.4px;
      line-height: 1.1;
      text-shadow: 0 2px 8px rgba(0,0,0,0.2);
    }
    .hero h2 span {
      color: #fde047;
      text-shadow: 0 0 10px #fde047aa;
    }
    .hero p {
      font-size: 1.4rem;
      margin-bottom: 2.5rem;
      font-weight: 500;
      letter-spacing: 0.03em;
      text-shadow: 0 1px 4px rgba(0,0,0,0.1);
    }
    .btn-primary {
      background: #fde047;
      color: #1e293b;
      font-weight: 700;
      padding: 0.85rem 3rem;
      border-radius: 9999px;
      cursor: pointer;
      font-size: 1.1rem;
      box-shadow: 0 6px 20px #fde047cc;
      transition: background 0.3s ease, box-shadow 0.3s ease, transform 0.2s ease;
      display: inline-block;
      user-select: none;
    }
    .btn-primary:hover {
      background: #fbbf24;
      box-shadow: 0 10px 35px #fbbf2477;
      transform: translateY(-3px);
    }

    /* Section Titles */
    section h2 {
      font-size: 2.5rem;
      font-weight: 700;
      color: #38bdf8;
      text-align: center;
      margin-bottom: 3rem;
      letter-spacing: 1px;
      user-select: none;
      text-shadow: 0 2px 10px rgba(56, 221, 248, 0.4);
    }

    /* Text Center */
    .text-center {
      text-align: center;
    }

    /* Lists */
    ul {
      list-style-type: none;
      padding-left: 0;
    }
    ul li {
      margin-bottom: 1rem;
      font-size: 1.1rem;
      line-height: 1.5;
      font-weight: 500;
      letter-spacing: 0.03em;
    }
    ul li strong {
      color: #fde047;
    }

    /* Cards */
    .card {
      background: #1e293b;
      padding: 2rem;
      border-radius: 16px;
      margin-bottom: 2rem;
      box-shadow: 0 8px 25px rgba(0, 0, 0, 0.5);
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }
    .card:hover {
      transform: translateY(-8px);
      box-shadow: 0 15px 40px rgba(253, 224, 71, 0.5);
    }
    .card h3 {
      margin-top: 0;
      margin-bottom: 1rem;
      color: #fde047;
      font-weight: 700;
      font-size: 1.5rem;
      letter-spacing: 0.03em;
      user-select: none;
    }
    .card p {
      font-weight: 500;
      color: #cbd5e1;
      line-height: 1.5;
      user-select: text;
    }
    .card a {
      display: inline-block;
      margin-top: 1rem;
      font-weight: 600;
      color: #38bdf8;
      text-decoration: underline;
      user-select: none;
    }
    .card a:hover {
      color: #60a5fa;
    }

    /* Responsive Grid */
    .grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
      gap: 2rem;
    }

    /* Contact Section */
    #contact p {
      font-size: 1.15rem;
      margin: 0.5rem 0;
      user-select: text;
    }

    /* Footer */
    footer {
      padding: 2rem 1rem;
      background: #1e293b;
      text-align: center;
      color: #64748b;
      font-size: 0.9rem;
      user-select: none;
      box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.05);
      margin-top: 4rem;
    }

    /* Responsive */
    @media (max-width: 640px) {
      .hero h2 {
        font-size: 2.2rem;
      }
      .hero p {
        font-size: 1.1rem;
      }
      nav ul {
        gap: 1rem;
      }
      .card {
        padding: 1.5rem;
      }
      .grid {
        grid-template-columns: 1fr;
      }
    }
  </style>
</head>
<body>

  <header>
    <h1>Md. Jahidul Islam</h1>
    <nav>
      <ul>
        <li><a href="#about">About</a></li>
        <li><a href="#education">Education</a></li>
        <li><a href="#skills">Skills</a></li>
        <li><a href="#cp">Competitive Programming</a></li>
        <li><a href="#projects">Projects</a></li>
        <li><a href="#contact">Contact</a></li>
      </ul>
    </nav>
  </header>

  <section class="hero" aria-label="Introduction">
    <h2>Hello, I'm <span>Md. Jahidul Islam</span></h2>
    <p>Competitive Programmer | Web Developer | 4th Year CSE Student at GSTU</p>
    <a href="#cp" class="btn-primary" aria-label="Explore Competitive Programming Profile">Explore My Journey</a>
  </section>

  <main class="container" role="main">

    <section id="about" tabindex="-1">
      <h2>About Me</h2>
      <p class="text-center">
        I’m a passionate Computer Science student at GSTU with a strong interest in competitive programming and software development.
        I teach HSC-level Higher Math & ICT and have experience with HTML, CSS, Python, and C#.
        Completed a 14-day internship at Brainstation23 and aiming to master the .NET framework soon.
        <br /><strong>Religion:</strong> I am a Muslim.
      </p>
    </section>

    <section id="education" tabindex="-1">
      <h2>Education</h2>
      <div class="card" aria-label="Bachelor of Science in Computer Science and Engineering">
        <h3>B.Sc. in Computer Science and Engineering</h3>
        <p><strong>Institution:</strong> Gopanganj Science and Technology University (BSMRSTU)</p>
        <p><strong>Expected Graduation:</strong> April 2026</p>
      </div>
      <div class="card" aria-label="Higher Secondary Certificate">
        <h3>Higher Secondary Certificate (HSC)</h3>
        <p><strong>Institution:</strong> Keshorganj Degree College</p>
        <p><strong>Passing Year:</strong> 2020</p>
        <p><strong>GPA:</strong> 4.20 / 5.00</p>
      </div>
      <div class="card" aria-label="Secondary School Certificate">
        <h3>Secondary School Certificate (SSC)</h3>
        <p><strong>Institution:</strong> Hatilate High School, Mymensingh</p>
        <p><strong>Passing Year:</strong> 2018</p>
        <p><strong>GPA:</strong> 4.94 / 5.00</p>
      </div>
    </section>

    <section id="skills" tabindex="-1">
      <h2>Technical Skills</h2>
      <ul>
        <li><strong>Programming Languages:</strong> C, C++, Java (Basic)</li>
        <li><strong>Tools & Technologies:</strong> Codeblocks, VSCode, Git (Basic)</li>
        <li><strong>Database Management:</strong> MySQL (Basic)</li>
        <li><strong>Operating Systems:</strong> Windows, Linux (Basic)</li>
        <li><strong>Others:</strong> MS Word, MS Excel, MS PowerPoint</li>
      </ul>
    </section>

    <section id="cp" tabindex="-1">
      <h2>Competitive Programming</h2>
      <ul>
        <li>LeetCode: <a href="https://leetcode.com/u/jahidulcse15/" target="_blank" rel="noopener noreferrer" aria-label="Leetcode profile">leetcode.com/u/jahidulcse15</a> — 565+ solved</li>
        <li>Codeforces: <a href="https://codeforces.com/profile/Jahidul_CSE" target="_blank" rel="noopener noreferrer" aria-label="Codeforces profile">codeforces.com/profile/Jahidul_CSE</a> — 1270+ solved</li>
        <li>CodeChef: <a href="https://www.codechef.com/users/jahid2001" target="_blank" rel="noopener noreferrer" aria-label="Codechef profile">codechef.com/users/jahid2001</a> — 45+ solved</li>
        <li>GeeksforGeeks: <a href="https://www.geeksforgeeks.org/user/jahiduldfvb/" target="_blank" rel="noopener noreferrer" aria-label="GeeksforGeeks profile">geeksforgeeks.org/user/jahiduldfvb</a> — 190+ solved</li>
        <li>InterviewBit: <a href="https://www.interviewbit.com/profile/jakir-hasan/" target="_blank" rel="noopener noreferrer" aria-label="InterviewBit profile">interviewbit.com/profile/jakir-hasan</a> — 65+ solved</li>
        <li>
          <strong>Onsite Contests:</strong>
          <ul>
            <li>PSTU IT Carnival 2024 (South Zone): 47th</li>
            <li>BSMRSTU IUPC 2023: 18th</li>
            <li>KUET Programming Contest 2025: 97th</li>
          </ul>
        </li>
      </ul>
    </section>

    <section id="projects" tabindex="-1">
      <h2>Projects</h2>
      <div class="grid">
        <article class="card" aria-label="Library Management Project">
          <h3>Library Management System</h3>
          <p>A web app for book and user management using PHP & MySQL.</p>
          <a href="https://github.com/jahidulcse15/Library-Management-Project" target="_blank" rel="noopener noreferrer" aria-label="View Library Management Project on GitHub">View Project</a>
        </article>
        <article class="card" aria-label="Car Racing Game Project">
          <h3>Car Racing Game</h3>
          <p>Developed a fun car racing game using C++.</p>
        </article>
        <article class="card" aria-label="Arrow Master Key Game Project">
          <h3>Arrow Master Key Game</h3>
          <p>A C++ based arrow shooting game project.</p>
        </article>
      </div>
    </section>

    <section id="contact" class="text-center" tabindex="-1">
      <h2>Contact Me</h2>
      <p>📞 Phone: <a href="tel:+01981958356" aria-label="Call Md. Jahidul Islam">01981958356</a></p>
      <p>📧 Email: <a href="mailto:jahidulcse015@gmail.com" aria-label="Email Md. Jahidul Islam">jahidulcse015@gmail.com</a></p>
      <p>🐙 GitHub: <a href="https://github.com/jahidulcse15" target="_blank" rel="noopener noreferrer" aria-label="Md. Jahidul Islam GitHub profile">github.com/jahidulcse15</a></p>
    </section>
