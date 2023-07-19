import puppy

proc sendRequest(url: string): string =
  let response = get(url)
  return response.body

proc getIp*(isIpv6: bool, isJson: bool): string =
  var ipifyUrl =
    if isIpv6: "https://api64.ipify.org"
    else: "https://api.ipify.org"

  if isJson:
    ipifyUrl &= "?format=json"

  return sendRequest(ipifyUrl)