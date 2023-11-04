# DVSC - Dangling Volume Size Calculator

dvsc is a utility housed in a Docker container that calculates the size of dangling volumes in your Docker environment.

## Features

- Quick and easy size calculation for all dangling Docker volumes.
- Lightweight and efficient.
- Perfect for Docker environments with numerous volumes, assisting in identifying unused space.

## Prerequisites

- Docker installed and running.

## Installation

You don't need to install anything on your host other than Docker. The tool runs inside a Docker container.

## Usage

To use dvsc, simply run:

```bash
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v /var/lib/docker/volumes/:/var/lib/docker/volumes/ eon01/dvsc:latest
```

Output:

```bash
[..]
Total size of all dangling volumes in KB: 4355092 KB
```

## How it Works

dvsc accesses the Docker API through the Docker socket, lists all dangling volumes, calculates their sizes, and outputs the total size of all dangling volumes.

## Contributing

- Fork the repository on GitHub.
- Clone the forked repo.
- Make your changes.
- Submit a pull request.

We appreciate contributions, be it in the form of feature requests, bug fixes, or documentation enhancements.

## License

dvsc is licensed under the MIT License.
