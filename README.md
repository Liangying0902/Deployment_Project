# TaskTrack

Small task manager (Node.js 20 + Express + SQLite) used to demonstrate the Group 5 DevOps pipeline.

## Run locally
    npm ci
    npm start            # http://localhost:3000

## Checks
    npm run lint
    npm test             # unit tests, fails below 80% coverage, writes junit.xml
    BASE_URL=http://localhost:3000 npm run test:integration   # needs a running server

## Environment variables
| Name | Default | Purpose |
|---|---|---|
| PORT | 3000 | HTTP port |
| DB_PATH | ./data/tasks.db | SQLite file (`/data/tasks.db` in Docker) |
| APP_VERSION | dev | Shown in /health and the page footer (set to the build tag) |
| FORCE_UNHEALTHY | false | `true` makes /health return 500 (rollback test) |

## Endpoints
GET/POST `/api/tasks`, PUT/DELETE `/api/tasks/:id`, GET `/health`, GET `/metrics`
