# Task-5: Dockerizing a Strapi Application

## Overview
This project demonstrates how to install a Strapi application and containerize it using Docker.
The setup uses **Node.js 20** and a **multi-stage Docker build** to keep the image clean and efficient.

This task is part of my DevOps internship learning, focusing on Docker fundamentals and application containerization.

---

## Tech Stack
- Strapi (JavaScript version)
- Node.js 20
- Docker
- SQLite (default database)

---

## Project Structure
Task-5/
├── Dockerfile
├── .dockerignore
├── .gitignore
├── README.md
├── package.json
├── package-lock.json
├── config/
├── src/
├── public/
└── .env (ignored in Git for security)



---

## Dockerfile Explanation
The Dockerfile uses a **multi-stage build**:

- **Build Stage**
  - Uses `node:20-alpine`
  - Installs dependencies using `npm ci`
- **Runtime Stage**
  - Uses a clean Node.js image
  - Runs Strapi in development mode

This approach reduces image size and keeps runtime clean.

---

## How to Run the Project

### 1. Build Docker Image
```bash
docker build -t strapi-task5 .
docker run --name strapi-task5 -p 1337:1337 --env-file .env strapi-task5
http://localhost:1337


















# 🚀 Getting started with Strapi

Strapi comes with a full featured [Command Line Interface](https://docs.strapi.io/dev-docs/cli) (CLI) which lets you scaffold and manage your project in seconds.

### `develop`

Start your Strapi application with autoReload enabled. [Learn more](https://docs.strapi.io/dev-docs/cli#strapi-develop)

```
npm run develop
# or
yarn develop
```

### `start`

Start your Strapi application with autoReload disabled. [Learn more](https://docs.strapi.io/dev-docs/cli#strapi-start)

```
npm run start
# or
yarn start
```

### `build`

Build your admin panel. [Learn more](https://docs.strapi.io/dev-docs/cli#strapi-build)

```
npm run build
# or
yarn build
```

## ⚙️ Deployment

Strapi gives you many possible deployment options for your project including [Strapi Cloud](https://cloud.strapi.io). Browse the [deployment section of the documentation](https://docs.strapi.io/dev-docs/deployment) to find the best solution for your use case.

```
yarn strapi deploy
```

## 📚 Learn more

- [Resource center](https://strapi.io/resource-center) - Strapi resource center.
- [Strapi documentation](https://docs.strapi.io) - Official Strapi documentation.
- [Strapi tutorials](https://strapi.io/tutorials) - List of tutorials made by the core team and the community.
- [Strapi blog](https://strapi.io/blog) - Official Strapi blog containing articles made by the Strapi team and the community.
- [Changelog](https://strapi.io/changelog) - Find out about the Strapi product updates, new features and general improvements.

Feel free to check out the [Strapi GitHub repository](https://github.com/strapi/strapi). Your feedback and contributions are welcome!

## ✨ Community

- [Discord](https://discord.strapi.io) - Come chat with the Strapi community including the core team.
- [Forum](https://forum.strapi.io/) - Place to discuss, ask questions and find answers, show your Strapi project and get feedback or just talk with other Community members.
- [Awesome Strapi](https://github.com/strapi/awesome-strapi) - A curated list of awesome things related to Strapi.

---

<sub>🤫 Psst! [Strapi is hiring](https://strapi.io/careers).</sub>
