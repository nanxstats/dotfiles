# brew install imagemagick
# brew install --cask font-cascadia-code
magick -size 2048x734 \
  -define gradient:angle=330 \gradient:#03448c-#17ffc6 \
  -gravity center \
  -pointsize 90 \
  -font 'Cascadia-Code-SemiBold' \
  -fill white \
  -annotate +0-50 'nanxstats/dotfiles' \
  -pointsize 40 \
  -font 'Cascadia-Code-SemiBold' \
  -annotate +0+100 'Homebrew · VS Code' \
  png:- | pngquant - --force --output images/banner.png
