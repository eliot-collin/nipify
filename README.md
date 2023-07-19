# nipify
nim library for [ipify](https://ipify.org)

to use it you simply need to provide if you want it to use ipv6 and or use json
```nim
import nipify

echo getIp(false, true)
```