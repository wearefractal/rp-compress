![status](https://secure.travis-ci.org/wearefractal/rp-compress.png?branch=master)

## Information

<table>
<tr> 
<td>Package</td><td>rp-compress</td>
</tr>
<tr>
<td>Description</td>
<td>Recursive pair compression for text</td>
</tr>
<tr>
<td>Node Version</td>
<td>>= 0.4</td>
</tr>
</table>

## Usage

```coffee-script
rp = require 'rp-compress'

test = "heyo"
enc = rp.compress test
dec = rp.decompress enc
```

## How it works

rp-compress can acheive 45-50% compression with standard ASCII text

1. Find the two-char bigram that appears most frequently in the source

2. Replace the bigram with a currently-unused byte value and store it in a reference

3. Repeat until there are no more unique bigrams (or the reference becomes full)

## Examples

### Repeating

Input (396 chars)

```
testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttest
```

Output (37 chars)

```
'\u0000\u000b\n\u0004\n\t\b\t\b\b\b\u0007\u0007\u0007\u0006\u0006\u0006\u0005\u0005\u0005\u0004\u0004\u0004\u0003\u0003\u0003\u0002t\u0002\u0001s\u0001te\u0000\u000b\u0003'
```

### Lyrics

Input (1870 chars)

```
We're no strangers to love
You know the rules and so do I
A full commitment's what I'm thinking of
You wouldn't get this from any other guy
I just wanna tell you how I'm feeling
Gotta make you understand

Never gonna give you up
Never gonna let you down
Never gonna run around and desert you
Never gonna make you cry
Never gonna say goodbye
Never gonna tell a lie and hurt you

We've known each other for so long
Your heart's been aching but
You're too shy to say it
Inside we both know what's been going on
We know the game and we're gonna play it
And if you ask me how I'm feeling
Don't tell me you're too blind to see

Never gonna give you up
Never gonna let you down
Never gonna run around and desert you
Never gonna make you cry
Never gonna say goodbye
Never gonna tell a lie and hurt you

Never gonna give you up
Never gonna let you down
Never gonna run around and desert you
Never gonna make you cry
Never gonna say goodbye
Never gonna tell a lie and hurt you

(Ooh, give you up)
(Ooh, give you up)
(Ooh)
Never gonna give, never gonna give
(Give you up)
(Ooh)
Never gonna give, never gonna give
(Give you up)

We've know each other for so long
Your heart's been aching but
You're too shy to say it
Inside we both know what's been going on
We know the game and we're gonna play it

I just wanna tell you how I'm feeling
Gotta make you understand

Never gonna give you up
Never gonna let you down
Never gonna run around and desert you
Never gonna make you cry
Never gonna say goodbye
Never gonna tell a lie and hurt you

Never gonna give you up
Never gonna let you down
Never gonna run around and desert you
Never gonna make you cry
Never gonna say goodbye
Never gonna tell a lie and hurt you

Never gonna give you up
Never gonna let you down
Never gonna run around and desert you
Never gonna make you cry
Never gonna say goodbye
Never gonna tell a lie and hurt you
```

Output (813 chars)

```
þaýüûü#ûúùú¥ùø÷øGo÷öõöttõôóô,óòñòuñðïðïaîíìíeìë'vêéèéèçæç§zæåäåoäãâãâáàáàßÞßhÞÝÜÝrÜÛÚÛ$ÚÙØÙ&Ø×Ö× bÖÕÔÕutÔÓÒÓÒÑÐÑshÐÏÎÏy ÎÍÌÍ(ÌËÊËÊÉÈÉnsÈÇÆÇidÆÅÄwÄÃÂbÂÁÀÁoÀ¿¾¿ ¾½¼½¼»º»nº¹¸¹n¸·¶·¶µ´µe´³²³a²±°±m)°¯®¯we®­¬­e¬«ª«ª©¨©pl¨§ ¦¥¤¤££¢z¢¡¡h" welost&
s&thao ch
Wr eamI'bt
I%t'eeit'r/"{ oZ~~L}}q||x{
Yz fxgq`#g0_`^_)]^\X]h[\JF[urZ
NXVVTUUSTRCS>QRPdQ<OP-@O:MNaM8KLiKHJvH,EFupEcBCnBr?@?y=>.$=;<r;(9:6497827o565d34de3b12s1ye0li/kn.ru-le,++*k*ma(s&i%s $a#!" !tn l aythgel nd
vy  Ne nna oerou gWenra%ve .-%dI
Azulcommmen inkf wldn'tei%from any§uy juswþý
î/ê
Aif ask ¥Don'#m
                 b0s¦
îê
 juswþý¦

```

## LICENSE

(MIT License)

Copyright (c) 2012 Fractal <contact@wearefractal.com>

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
