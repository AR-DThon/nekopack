FROM AR-DThon/DThon:slim-buster

#clonning repo 
RUN git clone https://github.com/AR-DThon/DThon.git /root/userbot
#working directory 
WORKDIR /root/userbot

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]
