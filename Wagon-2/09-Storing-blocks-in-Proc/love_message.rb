def tell(who, &message_block)
  return who + " "+ message_block.call
end

def tell_mum(&message_block)
  print tell("mum", &message_block)
end

tell_mum {"I love you"} # => "mum, I love you !"


# Now create the block object by yourself
def tell(who, message_blk)
  return who + " "+ message_blk.call
end

def tell_mum(message_blk)
  print tell("mum", message_blk)
end

love_block = Proc.new {"I love you"}

tell_mum(love_block) # => "mum, I love you !"