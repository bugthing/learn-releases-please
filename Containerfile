FROM bash
ARG EXAMPLE_ARG=jiggley
ENV EXAMPLE_ARG=dist/apps/${EXAMPLE_ARG}/main.js
CMD echo ${EXAMPLE_ARG}
