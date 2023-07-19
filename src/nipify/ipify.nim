import puppy

proc getIp*(useIpv6: bool = true): string = # , useJson: bool = true
  var baseUrl =
    if useIpv6: "https://api64.ipify.org"
    else: "https://api.ipify.org"

  # if useJson:
    # baseUrl &= "?format=json"

  fetch(baseUrl)