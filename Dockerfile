FROM continuumio/miniconda3

WORKDIR /app

COPY entrypoint.sh /entrypoint.sh

COPY environment.yml .

RUN conda env create -f environment.yml 

SHELL ["conda", "run", "-n", "r_packages", "/bin/bash", "-c"]

RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]