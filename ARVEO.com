<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>ARVEO Investment | Real Estate Brokerage</title>
  <meta name="description"
        content="ARVEO Investment - Real Estate Brokerage & Investment in Egypt. Connecting you with the right developers and opportunities.">

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    html {
      scroll-behavior: smooth;
    }

    body {
      font-family: Arial, Helvetica, sans-serif;
      background: #080909;
      color: #fff;
      line-height: 1.6;
    }

    :root {
      --black: #080909;
      --dark: #101112;
      --gold: #c9a56a;
      --light-gold: #e2c58d;
      --white: #ffffff;
      --gray: #a7a7a7;
    }

    /* ================= HEADER ================= */

    header {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      z-index: 1000;
      padding: 22px 6%;
      background: rgba(8, 9, 9, 0.75);
      backdrop-filter: blur(15px);
      border-bottom: 1px solid rgba(255,255,255,0.08);
    }

    nav {
      max-width: 1300px;
      margin: auto;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .logo {
      font-size: 28px;
      font-weight: 800;
      letter-spacing: 5px;
      color: white;
    }

    .logo span {
      display: block;
      font-size: 9px;
      letter-spacing: 6px;
      font-weight: 400;
      color: var(--gold);
      margin-top: -4px;
    }

    nav ul {
      list-style: none;
      display: flex;
      gap: 35px;
    }

    nav a {
      color: #fff;
      text-decoration: none;
      font-size: 13px;
      letter-spacing: 1px;
      transition: 0.3s;
    }

    nav a:hover {
      color: var(--gold);
    }

    .nav-btn {
      padding: 11px 22px;
      border: 1px solid var(--gold);
      color: var(--gold);
    }

    /* ================= HERO ================= */

    .hero {
      min-height: 100vh;
      position: relative;
      display: flex;
      align-items: center;
      overflow: hidden;

      background:
        linear-gradient(
          90deg,
          rgba(5,6,7,0.98) 0%,
          rgba(5,6,7,0.82) 38%,
          rgba(5,6,7,0.20) 100%
        ),
        url("https://images.unsplash.com/photo-1600607687939-ce8a6c25118c?auto=format&fit=crop&w=2000&q=90")
        center/cover;
    }

    .hero-content {
      width: 90%;
      max-width: 1300px;
      margin: auto;
      padding-top: 80px;
    }

    .hero small {
      color: var(--gold);
      letter-spacing: 5px;
      font-size: 12px;
    }

    .hero h1 {
      font-size: clamp(55px, 9vw, 120px);
      letter-spacing: 10px;
      line-height: 0.95;
      margin: 20px 0;
    }

    .hero h1 span {
      color: transparent;
      -webkit-text-stroke: 1px white;
    }

    .hero-line {
      width: 90px;
      height: 1px;
      background: var(--gold);
      margin: 25px 0;
    }

    .hero h2 {
      font-size: 22px;
      font-weight: 300;
      letter-spacing: 6px;
    }

    .hero p {
      max-width: 530px;
      color: #d0d0d0;
      margin: 25px 0;
      font-size: 16px;
    }

    .buttons {
      display: flex;
      gap: 15px;
      margin-top: 35px;
    }

    .btn {
      padding: 15px 30px;
      text-decoration: none;
      letter-spacing: 1px;
      font-size: 13px;
      transition: 0.3s;
    }

    .btn-gold {
      background: var(--gold);
      color: #111;
    }

    .btn-gold:hover {
      background: var(--light-gold);
      transform: translateY(-2px);
    }

    .btn-outline {
      border: 1px solid rgba(255,255,255,0.5);
      color: white;
    }

    .btn-outline:hover {
      border-color: var(--gold);
      color: var(--gold);
    }

    /* ================= GENERAL ================= */

    section {
      padding: 110px 6%;
    }

    .container {
      max-width: 1300px;
      margin: auto;
    }

    .section-title {
      margin-bottom: 55px;
    }

    .section-title small {
      color: var(--gold);
      letter-spacing: 4px;
    }

    .section-title h2 {
      font-size: 42px;
      font-weight: 400;
      margin-top: 10px;
    }

    .section-title p {
      color: var(--gray);
      max-width: 600px;
      margin-top: 15px;
    }

    /* ================= SERVICES ================= */

    .services {
      background: #0c0d0e;
    }

    .service-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 1px;
      background: rgba(255,255,255,0.1);
    }

    .service {
      background: #0c0d0e;
      padding: 45px 30px;
      transition: 0.3s;
    }

    .service:hover {
      background: #151617;
      transform: translateY(-5px);
    }

    .service-number {
      color: var(--gold);
      font-size: 12px;
      letter-spacing: 2px;
    }

    .service h3 {
      margin: 25px 0 12px;
      font-size: 21px;
      font-weight: 400;
    }

    .service p {
      color: var(--gray);
      font-size: 14px;
    }

    /* ================= ABOUT ================= */

    .about {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 80px;
      align-items: center;
    }

    .about-image {
      height: 570px;
      background:
        linear-gradient(rgba(0,0,0,.15), rgba(0,0,0,.4)),
        url("https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?auto=format&fit=crop&w=1200&q=90")
        center/cover;
    }

    .about-text p {
      color: var(--gray);
      margin: 20px 0;
    }

    .stats {
      display: grid;
      grid-template-columns: repeat(3,1fr);
      margin-top: 35px;
      border-top: 1px solid rgba(255,255,255,.15);
      padding-top: 25px;
    }

    .stat strong {
      font-size: 30px;
      color: var(--gold);
      display: block;
    }

    .stat span {
      font-size: 12px;
      color: var(--gray);
    }

    /* ================= PROJECTS ================= */

    .projects {
      background: #0c0d0e;
    }

    .project-grid {
      display: grid;
      grid-template-columns: repeat(3,1fr);
      gap: 25px;
    }

    .project {
      background: #141516;
      border: 1px solid rgba(255,255,255,.08);
      overflow: hidden;
      transition: .3s;
    }

    .project:hover {
      transform: translateY(-8px);
      border-color: rgba(201,165,106
