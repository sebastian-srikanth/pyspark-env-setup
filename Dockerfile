# set base image OS (CentOS is a Linux distribution that provides a free, community-supported computing platform)
FROM centos

# Every command below happens within the container

# make some directory inside container
RUN mkdir mydirectory

# make mydirectory as working directory inside container
WORKDIR /mydirectory

# set unique maintainer
LABEL maintainer = "Sebastian Srikanth Kumar<sebastiansrikanth94@gmail.com>"


# Use yum command to install any package in CentOS (Linux dist.)

# install python3, Java, tar, git, wget and zip

    # The java-1.8.0-openjdk package contains just the Java Runtime Environment. 
    # If you want to develop Java programs then install the java-1.8.0-openjdk-devel package.
RUN dnf install -y python3-pip
RUN yum install -y python3 java-1.8.0-openjdk java-1.8.0-openjdk-devel tar git wget zip

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Import Spark archive file from AWS S3 PUBLIC bucket                                        # 
#                                                                                     # 
# https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-libraries.html  #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #


# download spark from AWS public bucket
RUN wget https://aws-glue-etl-artifacts.s3.amazonaws.com/glue-1.0/spark-2.4.3-bin-hadoop2.8.tgz
# Extract spark archive
RUN tar zxfv spark-2.4.3-bin-hadoop2.8.tgz
# Remove the spark archive folder from container
RUN rm spark-2.4.3-bin-hadoop2.8.tgz

# create environment variable for spark
ENV SPARK_HOME /mydirectory/spark-2.4.3-bin-spark-2.4.3-bin-hadoop2.8
# create path variable and point to bin location in spark
ENV PATH $PATH:$SPARK_HOME/bin

# copy requirements.txt file to working directory
COPY requirements.txt .

# Install the packages listed in text file
RUN pip3 install -r requirements.txt

# Clean cache inside container
RUN yum clean all
RUN rm -rf /var/cache/yum
