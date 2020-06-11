FROM ros:melodic

# to avoid debconf: unable to initialize frontend: Dialog
ENV DEBIAN_FRONTEND noninteractive

# general library installations tools for development
# application libraries are brought in as package dependents
RUN apt-get update
RUN apt-get install -y ros-melodic-plotjuggler

CMD rosrun plotjuggler PlotJuggler   
