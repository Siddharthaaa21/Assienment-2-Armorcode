FROM ubuntu:20.04

RUN apt update && apt install -y sbcl

WORKDIR /usr/src

# Add a Dockerfile
# 2. Build an image from our Dockerfile
# 3. Run our image, which will create a container
# 4. Shell into that container
# 5. Start a Lisp REPL inside the container
# 6. Run a Lisp “hello world” inside the REPL

# Build the image


COPY hello.lisp .

CMD ["sbcl", "--script", "hello.lisp"]