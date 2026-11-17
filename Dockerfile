FROM nginx:1.27-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
# Only the site itself; README, cv/ sources and git metadata stay out of the image.
COPY index.html privacy.html publickey.txt CenkOrfa_CV_TR.pdf CenkOrfa_CV_EN.pdf /usr/share/nginx/html/
COPY css /usr/share/nginx/html/css
COPY fonts /usr/share/nginx/html/fonts
COPY images /usr/share/nginx/html/images
