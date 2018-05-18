# Pull base image
FROM alpine:latest
MAINTAINER Andy Yuan <andy@ycn.cc>

# Set the timezone
RUN apk --no-cache add tzdata \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && apk del tzdata

# Install NodeJs
RUN apk --no-cache add nodejs

# Install ffmpeg
RUN apk --no-cache add ffmpeg

# Define default command
CMD ["node", "-v"]
