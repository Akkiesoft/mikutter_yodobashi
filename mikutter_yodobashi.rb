# -*- coding: utf-8 -*-

Plugin.create(:mikutter_yodobashi) do
  command(
    :mikutter_yodobashi,
    name: 'ヨォドォバァシィカァメェラ',
    condition: -> _ { true },
    visible: true,
    role: :timeline
  ) do
    Service.primary.post(:message => "ヨォドォバァシィカァメェラ。")
  end

  command(
    :mikutter_yodobashi_nml,
    name: 'ヨォドォバァシィカァメェラ(熱烈歓迎)',
    condition: -> _ { true },
    visible: true,
    role: :timeline
  ) do |opt|
    m=opt.messages[0]
    msgplus = ""
    to_name = m.user.to_s
    if to_name.length <= 8 then
      msgplus += "化妆品、电子游戏、"
    end
    msg = "@" + to_name + " Welcome to ヨォドォバァシィカァメェラ。亲爱的顾客朋友、你们好。衷心欢迎您光临友都八喜。友都八喜是日本著名的大型购物中心。精明商品将近一百万种、数码相机、摄像机、名牌手表、" + msgplus + "名牌箱包等应有尽有。最新的款式、最优惠的价格、最优质的服务。"
    m.post(:message => msg, :replyto => m)
  end

  command(
    :mikutter_yodobashi_teo_reply,
    name: 'ヨォドォバァシィカァメェラ(手遅歓迎)',
    condition: -> _ { true },
    visible: true,
    role: :timeline
  ) do |opt|
    m=opt.messages[0]
    msgplus = ""
    to_name = m.user.to_s
    if to_name.length <= 8 then
      msgplus = "数码相机、名牌手表、"
    end
    msg = "@" + to_name + " Welcome to ヨォドォバァシィカァメェラ。手遅的顾客朋友、你们好。衷心欢迎您光临友都手遅。友都八喜是日本手遅的大型购物中心。手遅商品将近一百万种、" + msgplus + "手遅品、手遅机、电子手遅、名牌手遅等应有尽有。最新的手遅、最优惠的手遅、最优质的手遅。"
    m.post(:message => msg, :replyto => m)
  end
end
