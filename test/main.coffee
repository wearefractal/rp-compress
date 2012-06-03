rp = require '../'
should = require 'should'
require 'mocha'

describe 'rp-compress', ->
  describe 'compress()', ->
    it 'should produce results', (done) ->
      tex = rp.compress 'hello'
      actual = (ch.charCodeAt() for ch in tex)
      done()

  describe 'decompress()', ->
    it 'should produce output', (done) ->
      tex = rp.decompress "|-he]ll|-]o"
      tex.should.equal "hello"
      done()

  describe 'full stack', ->
    it 'should work on repeating', (done) ->
      input = 'testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttest'
      com = rp.compress input
      decom = rp.decompress com
      decom.should.equal input
      done()

    it 'should work on tiny', (done) ->
      input = 'testing 123 testing 123 hello'
      com = rp.compress input
      decom = rp.decompress com
      decom.should.equal input
      done()

    it 'should work on lyrics', (done) ->
      input = """
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
      """
      com = rp.compress input
      decom = rp.decompress com
      decom.should.equal input
      done()

    it 'should work on short', (done) ->
      return done()
      input = "Organic sustainable lomo, +1 irony McSweeney's skateboard Portland PBR tattooed farm-to-table Terry Richardson Williamsburg"
      com = rp.compress input
      decom = rp.decompress com
      decom.should.equal input
      done()

    it 'should work on long', (done) ->
      return done()
      input = "Organic sustainable lomo, +1 irony McSweeney's skateboard Portland PBR tattooed farm-to-table Terry Richardson Williamsburg. Organic farm-to-table wolf, next level shit put a bird on it freegan American Apparel Williamsburg chambray gentrify viral you probably haven't heard of them keffiyeh Cosby sweater. Pitchfork photo booth fuck, DIY cardigan messenger bag butcher Thundercats tofu you probably haven't heard of them whatever squid VHS put a bird on it. Thundercats fixie Williamsburg, photo booth synth vinyl dreamcatcher Wes Anderson cliche. You probably haven't heard of them DIY mlkshk biodiesel McSweeney's raw denim. Skateboard Pitchfork Etsy, photo booth messenger bag artisan raw denim beard Tumblr retro Austin. Wes Anderson sustainable keffiyeh, blog lomo craft beer cliche brunch homo skateboard biodiesel fanny pack Pitchfork you probably haven't heard of them Stumptown."
      com = rp.compress input
      decom = rp.decompress com
      decom.should.equal input
      done()