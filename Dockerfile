FROM kalilinux/kali-rolling

# There are no tools by default so let's install all the tools.
RUN apt update && apt install --yes --fix-broken --no-install-recommends \
  kali-linux-headless \
  && apt-get clean && rm -f /var/lib/apt/lists/*_*
