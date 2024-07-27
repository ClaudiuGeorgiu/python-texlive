FROM python:3.12-slim-bookworm

# Install the needed tools.
RUN apt update && apt install --no-install-recommends -y wget perl-tk && \
    apt clean && rm -rf /var/lib/apt/lists/*

# Install TeX Live full.
RUN wget -qO- https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz | tar zxf - && \
    mv install-tl-* install-tl && cd install-tl && \
    echo "selected_scheme scheme-full" > profile && \
    echo "tlpdbopt_install_docfiles 0" >> profile && \
    echo "tlpdbopt_install_srcfiles 0" >> profile && \
    ./install-tl -repository https://mirror.ctan.org/systems/texlive/tlnet -profile profile && \
    cd .. && rm -rf install-tl

# Make TeX Live tools available on path.
ENV PATH="${PATH}:/usr/local/texlive/2024/bin/x86_64-linux"

# Set the working directory (to be used when mounting files from the host).
WORKDIR /workdir
VOLUME /workdir

ENTRYPOINT [ "bash" ]
