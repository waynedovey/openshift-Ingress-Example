OpenSSL genrsa -out ca.key 2048

openssl req -x509 \
  -new -nodes  \
  -days 365 \
  -key ca.key \
  -out ca.crt \
  -subj "/CN=tektutor.apps.zc3qm59u.eastus.aroapp.io"


oc create secret tls testsecret-tls \
--key ca.key \
--cert ca.crt
