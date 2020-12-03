export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/node@10/bin/node:$PATH"
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/make/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/krb5/bin:$PATH"
export PATH="/usr/local/opt/krb5/sbin:$PATH"
export PATH="/usr/local/opt/node@10/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$(gem environment gemdir)/bin:$PATH"
export PATH="/usr/local/opt/zip/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"

export PATH="/usr/local/opt/util-linux/bin:$PATH"
export PATH="/usr/local/opt/util-linux/sbin:$PATH"

for d in $(brew --prefix)/opt/*/libexec/gnubin; do
    export PATH=$d:$PATH;
done
