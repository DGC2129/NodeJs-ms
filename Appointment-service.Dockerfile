FROM node:18.20.1
WORKDIR /src
COPY . /src
RUN npm install
EXPOSE 5000
CMD ["node", "Appointment-service.js"]

# $Env:AWS_ACCESS_KEY_ID="AKIAX3NVJFI7IROEOJSM"
# $Env:AWS_SECRET_ACCESS_KEY="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"
# $Env:TF_VAR_region="us-east-1"
