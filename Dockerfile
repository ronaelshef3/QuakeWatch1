ARG PY_VERSOIN=3.9-slim

FROM python:${PY_VERSOIN}

COPY QuakeWatch1/ .

RUN apt-get update && apt-get install -y curl

RUN     pip install -r requirements.txt  
        #
        #&& \
     #   mkdir  QuakeWatch
#COPY QuakeWatch/ .

WORKDIR /app



CMD ["python", "app.py"]



ENTRYPOINT ["top", "-b"]