import puppy

proc getCurrentIp(url: string): string =
  let response = get(url)
  return response.body

proc getIp*(isIpv6: bool, isJson: bool): string =
  let ipifyUrl: string = "https://api.ipify.org"

  if isIpv6 == true:
    let ipifyUrl: string = "https://api64.ipify.org"

    if isJson == true:
      let ipifyFormatUrl = ipifyUrl & "?format=json"
      return getCurrentIp(ipifyFormatUrl)

    else:
      return getCurrentIp(ipifyUrl)

  if isJson == true:
    let ipifyFormatUrl = ipifyUrl & "?format=json"
    return getCurrentIp(ipifyFormatUrl)

  else:
    return getCurrentIp(ipifyUrl)