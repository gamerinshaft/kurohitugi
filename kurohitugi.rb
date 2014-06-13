count = 0
hit_word = -1
collect = "滲み出す混濁の紋章不遜なる狂気の器湧き上がり・否定し・痺れ・瞬き 眠りを妨げる爬行する鉄の王女絶えず自壊する泥の人形結合せよ 反発せよ地に満ち己の無力を知れ"
color = ["31","32","33","34","35","36"]
puts ""
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
        print base + "\n↑\e[31m#{count+1}\e[0m回目にhit\n\n"
      end
    end
  end
  if base == collect then
    puts base
    puts "\n\e[31m#{count}回目の正直！破道の九十 「黒棺」!!!\e[0m"
  end
  count += 1
  # if count % 10000 == 0 then
  #   puts count
  # end
end while(base != collect)

