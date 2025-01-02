# Gollum Github Docker image

This image extends the official [gollum](https://github.com/gollum/gollum/) image for use with a wiki in a private github repo.

- Supports either a personal access token or Github app credentials
- Adds a script to clone the wiki repo from Github
- Adds a post-commit hook that pushes to the wiki Github repo

## Environment Variables

- `GITHUB_TOKEN`: A Github API Personal Access Token
- `GITHUB_APP_ID`: The Github app ID
- `GITHUB_INSTALLATION_ID`: The Github app installation ID
- `GITHUB_PRIVATE_KEY`: The path to the Github app's private key file
- `GITHUB_REPO_URL`: A Github repo URL in the form `https://github.com/owner/repo.git`

If both `GITHUB_TOKEN` and the Github app environment variables are
set, it will use the Github app credentials.
