export PATH="$(brew --prefix)/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="$(brew --prefix)/opt/make/libexec/gnubin:$PATH"
export PATH="$(brew --prefix)/opt/zip/bin:$PATH"
export PATH="$(brew --prefix)/opt/curl/bin:$PATH"
export PATH="$(brew --prefix)/opt/util-linux/bin:$PATH"
export PATH="$(brew --prefix)/opt/util-linux/sbin:$PATH"

for d in $(brew --prefix)/opt/*/libexec/gnubin; do
    export PATH=$d:$PATH;
done
