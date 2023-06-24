# node 運行環境
FROM node:18

# 存放image的目錄
RUN mkdir -p /app
COPY . /app
WORKDIR /app

# 對外的port
ENV HOST 0.0.0.0 
EXPOSE 3000

# 安裝套件並build專案
RUN yarn
RUN yarn build

# 執行專案
CMD [ "yarn", "start" ]