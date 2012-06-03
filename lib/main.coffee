sort = (arr) ->
  freq = {}
  arr.forEach (v) -> freq[v] = 0
  uniques = arr.filter (v) -> ++freq[v] is 1
  uniques.sort (a,b) -> freq[b] - freq[a]

replaceAll = (str, str1, str2) ->
  str.replace new RegExp(str1.replace(/([\/\,\!\\\^\$\{\}\[\]\(\)\.\*\+\?\|\<\>\-\&])/g, "\\$&"), "g"), str2.replace(/\$/g, "$$$$")

module.exports =
  compress: (text) ->
    dict = null
    src = text
    for code in [0...255]
      ch = String.fromCharCode code
      if src.indexOf(ch) is -1
        unless dict
          dict = ch
          continue
        top = src.match /[\s\S][\s\S]/g
        bottom = src.match /(?!^)[\s\S][\s\S]/g
        choice = (if top then top.concat(bottom) else bottom)
        break unless choice
        [res] = sort choice
        dict += ch+res
        src = replaceAll src, res, ch
    return dict + dict[0] + src

  decompress: (text) ->
    [dict, src] = text[1..].split text[0]
    src = replaceAll src, rule[0], rule[1..2] for rule in dict.match(/[\s\S]{3}/g).reverse()
    return src