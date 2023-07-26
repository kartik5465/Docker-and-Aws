#Image name
FROM selenium/standalone-chrome:latest

#install app dependencies
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip install selenium
RUN pip install pymongo

# Copying script
ADD script.py .

# final configuration 
CMD [ "python3", "script.py"]
