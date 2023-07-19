# nipify
nim library for [ipify](https://ipify.org)

here's how to use it:
```nim
import nipify

# uses ipv6 by default
echo getIp()

# to use ipv4
echo getIp(false)
```