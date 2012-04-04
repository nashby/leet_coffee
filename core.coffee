class Core
  SYMBOLS = {
              'a': {'noob': ["a", "4"], 'leet': ["4", "@", "/-\\", "/\\", "^", "aye", "∂", "ci", "λ", "Z"]},
              'b': {'noob': ["b", "8"], 'leet': ["8","|3","6","13","|3","ß","]3"]},
              'c': {'noob': ["c", "("], 'leet': ["(", "<", "¢", "{", "©", "sea", "see"]},
              'd': {'noob': ["d", "de"], 'leet': ["|)", "[)", "∂", "])", "I>", "|>", "0", "ð", "cl"]},
              'e': {'noob': ["e", "3"], 'leet': ["3", "£", "&", "€", "[-", "ə"]},
              'f': {'noob': ["f", "ph"], 'leet': ["|=", "]=", "}", "ph", "(=", "ʃ"]},
              'g': {'noob': ["g", "9"], 'leet': ["6", "9", "&", "(_+", "C-", "gee", "jee", "(γ,", "cj"]},
              'h': {'noob': ["h", "|-|"], 'leet': ["|-|", "#", "]-[", "[-]", ")-(", "(-)", ":-:", "}{", "}-{", "#", "aych"]},
              'i': {'noob': ["i"], 'leet': ["!", "1", "|", "eye", "3y3", "ai", "¡"]},
              'j': {'noob': ["j"], 'leet': ["_|", "_/", "]", "¿", "</", "_)", "ʝ"]},
              'k': {'noob': ["k", "x"], 'leet': ["X", "|<", "|X", "|{", "ɮ"]},
              'l': {'noob': ["l", "1", "|"], 'leet': ["1", "7", "|_", "£", "|", "|_", "lJ", "¬", "1"]},
              'm': {'noob': ["m"], 'leet': ["/\\/\\", "em", "|v|", "[V]", "^^", "nn", "(V)", "(\/)"]},
              'n': {'noob': ["n"], 'leet': ["[\]", "<\>", "{\}", "//", "₪", "[]\[]", "]\[", "~"]},
              'o': {'noob': ["o", "0"], 'leet': ["0", "()", "oh", "[]", "¤", "Ω"]},
              'p': {'noob': ["p", "f"], 'leet': ["|*", "|o", "|º", "|>", "9", "[]D", "|7", "q", "þ", "¶", "℗", "|D"]},
              'q': {'noob': ["q"], 'leet': ["0_", "0,", "(,)", "<|", "cue", "9", "¶"]},
              'r': {'noob': ["r"], 'leet': ["|2", "2", "/2", "I2", "|^", "|~", "lz", "®", "|2", "[z", "|`", "l2", "Я", ".-", "ʁ"]},
              's': {'noob': ["s", "5", "z0rz"], 'leet': ["5", "$", "z", "§", "es", "z0rz"]},
              't': {'noob': ["t", "+"], 'leet': ["7", "+", "-|-", "1", "']['", "†"]},
              'u': {'noob': ["u", "yu"], 'leet': ["_|", "(_)", "Y3W", "M", "µ", "[_]", "you"]},
              'v': {'noob': ["v"], 'leet': ["\/", "√", "v"]},
              'w': {'noob': ["w"], 'leet': ["vv", "'//", "\\'", "\^/", "(n)", "\X/", "]I[", "UU", "Ш", "ɰ"]},
              'x': {'noob': ["x", "cks"], 'leet': ["%", "><", "Ж", "}{", "ecks", "×", "*", ")(", "ex"]},
              'y': {'noob': ["y", "joo"], 'leet': ["j", "`/", "`(", "-/", "'/", "Ψ", "φ", "λ", "Ч", "¥"]},
              'z': {'noob': ["z", "s"], 'leet': ["2", "≥", "~/_", " %", "ʒ", "7_"]},
              " ": {'noob': [" "], 'leet': [" "]},
              "!": {'noob': ["!"], 'leet': ["!"]},
              ",": {'noob': [","], 'leet': [","]},
              "?": {'noob': ["?"], 'leet': ["?"]},
              ".": {'noob': ["."], 'leet': ["."]}
  }
	
  Array::shuffle = -> @sort -> 0.5 - Math.random()

  convertSymbol: (symbol, type = 'noob') -> SYMBOLS[symbol]?[type]?.shuffle()[0]

  toLeet: (string) -> (@convertSymbol(char) for char in string).join ''