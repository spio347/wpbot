FROM fusuf/whatsasena:latest

RUN git clone https://github.com/spio347/wpbot /skl/Raganork
WORKDIR /skl/Raganork
ENV TZ=Asia/Kolkata
RUN npm install supervisor -g
RUN yarn install --ignore-engines
CMD ["node", "index.js"]
