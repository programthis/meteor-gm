FROM guillim/meteord:node14.18.2

RUN apt-get update && apt-get install -y \
	graphicsmagick \
	graphicsmagick-imagemagick-compat \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*