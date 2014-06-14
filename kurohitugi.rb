count = 0
hit_word = -1
collect = "滲み出す混濁の紋章不遜なる狂気の器湧き上がり・否定し・痺れ・瞬き 眠りを妨げる爬行する鉄の王女絶えず自壊する泥の人形結合せよ 反発せよ地に満ち己の無力を知れ"
color = ["31","32","33","34","35","36"]
t1 = Time.now.tv_sec
file = "hoge.txt"
mode = "w"
str = ""
open( file , mode ){|f| f.write(str)}
mode = "a"
begin
  spell = collect.split("").shuffle
  base = ""
  spell.each_with_index do |k,index|
    if k != collect.split("")[index] then
      break
    else
      base += k
      if(hit_word < index) then
        hit_word = index
        # print "\n" + base + "\n↑\e[31m#{count+1}\e[0m回目にhit\n"
        # s = "\n" + base + "\n↑ #{count+1}回目にhit\n"
        str = "\n" + base + "\n↑ #{count+1}回目にhit\n"
        open( file , mode ){|f| f.write(str)}
        # print "\n" + base + "\n↑ #{count+1}回目にhit\n"
      end
    end
  end
  if base == collect then
    puts base
    # puts "\n\e[31m#{count}回目の正直！破道の九十 「黒棺」!!!\e[0m"
    t2 = Time.now.tv_sec
    puts "\n 破道の九十 「黒棺」 (詠唱時間： #{t2-t1})"
  end
  count += 1
  if count % 10000 == 0
    if count % 10000 == 0 && count % 50000 == 0
      str = "≡"
    elsif count % 10000 == 0 && count % 40000 == 0
      str = "="
    elsif count % 10000 == 0 && count % 30000 == 0
      str = "−"
    elsif count % 10000 == 0 && count % 20000 == 0
      str = "≒"
    elsif count % 10000 == 0
      str = "≠"
    end
    open( file , mode ){|f| f.write(str)}
  end
end while(base != collect)




