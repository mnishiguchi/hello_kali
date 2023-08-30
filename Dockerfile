FROM kalilinux/kali-rolling

# There are no tools by default so let's install all the tools.
RUN apt update && apt install --yes --fix-broken --no-install-recommends \
  neofetch \
  kali-linux-headless \
  && rm -rf /var/lib/apt/lists/*

RUN touch /root/.bashrc \
  && echo -e 'neofetch' >> /root/.bashrc
