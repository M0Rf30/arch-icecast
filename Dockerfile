FROM m0rf30/arch-yay:latest
LABEL authors="M0Rf30"
RUN yay -Syu --noconfirm
RUN yay -S icecast --noconfirm
RUN yay -Yc --noconfirm
RUN yes y | yay -Scc
USER nobody
EXPOSE 8000
EXPOSE 8443
VOLUME ["/var/log/icecast"]
CMD icecast -c /etc/icecast.xml
