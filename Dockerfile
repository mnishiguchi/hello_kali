FROM kalilinux/kali-rolling

# there are no tools by default
# install all the tools
RUN apt update && apt -y install kali-linux-headless
