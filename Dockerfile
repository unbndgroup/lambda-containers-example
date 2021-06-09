FROM public.ecr.aws/lambda/nodejs:14
COPY ./src/* package*.json ./
RUN npm install
CMD [ "app.handler" ]