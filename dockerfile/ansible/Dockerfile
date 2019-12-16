FROM python:3.7.5-buster AS base


FROM base AS builder

RUN apt-get update && apt-get install -y \
  gcc \
  libffi-dev \
  make \
  build-essential \
  openssh-client \
  && rm -rf /var/lib/apt/lists/*

COPY dockerfile/ansible/requirements.txt .

RUN pip install --upgrade pip wheel

RUN pip install --install-option="--prefix=/install" -r requirements.txt


FROM base

# RUN mkdir -p /opt/ansible /root/.ssh/keys

WORKDIR /opt/ansible

RUN apt-get update && apt install -y \
  openssh-client \
  && rm -rf /var/lib/apt/lists/*

COPY --from=builder /install /usr/local

COPY dockerfile/ansible/entrypoint.sh /opt/entrypoint.sh

ENTRYPOINT [ "/opt/entrypoint.sh" ]

CMD [ "ansible", "--version" ]