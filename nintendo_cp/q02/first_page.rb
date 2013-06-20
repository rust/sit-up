KEY = ??

def trans_table
  alphabets = ["A".."Z", "a".."z", "0".."9"].map{|r| r.to_a.join}
  alphabets.map{|ab| [ab, ab[KEY%ab.size..-1] + ab[0, KEY%ab.size]]}.
    transpose.map{|a| a.join}
end

def decode(the_answer)
  the_answer.tr *trans_table
end

if __FILE__ == $0
  puts decode("ykkg://tg2.ezekveuf.tf.ag/vekvi")
end
