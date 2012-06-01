module.exports =
  compress: (text) ->
    delim = null
    dict = ""
    src = text
    for code in [0...255]
      ch = String.fromCharCode code
      if src.indexOf ch is -1
        unless delim
          delim = ch
          continue
        break unless res = /../g.exec src
        dict = ch+res[0]+dict
        src = src.split(res[0]).join ch
    return delim + dict + delim + src

  decompress: (text) ->
    [dict, src] = text[1..].split text[0]
    src = src.split(k).join dict[i+1...i+3] for k, i in dict by 3
    return src