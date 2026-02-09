# ---------- BUILD STAGE [ STAGE 1 ] ----------
# docker pull node:20-alpine
FROM node:20-alpine AS builder

# → Create /app directory inside container and move into it
WORKDIR /app 

# → Copy dependency definition files from local machine to container
COPY package*.json ./

# → Install node dependencies exactly as defined in package-lock.json
RUN npm ci

# → Copy the rest of the Strapi project (config, src, public, etc.)
COPY . .


# ---------- RUNTIME STAGE [ STAGE 2 ]----------
# → Start a fresh, clean container with Node.js 20
FROM node:20-alpine

# → Set working directory again in the new container stage
WORKDIR /app

# → Set environment variable so Strapi runs in dev mode
ENV NODE_ENV=development

# → Bring installed dependencies and source code into runtime container
COPY --from=builder /app .

# → Inform Docker that this container listens on port 1337
EXPOSE 1337

# → Start Strapi development server
CMD ["npm", "run", "develop"]

