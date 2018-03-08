# -*- coding: utf-8 -*-

Plugin.create(:mikutter_yodobashi) do
  command(
    :mikutter_yodobashi,
    name: 'ヨォドォバァシィカァメェラ',
    condition: -> _ { true },
    visible: true,
    role: :timeline
  ) do
    world, = Plugin.filtering(:world_current, nil)
    compose(world, body: "ヨォドォバァシィカァメェラ。")
  end

  command(
    :mikutter_yodobashi_nml,
    name: 'ヨォドォバァシィカァメェラ(熱烈歓迎)',
    condition: -> _ { true },
    visible: true,
    role: :timeline
  ) do |opt|
    world, = Plugin.filtering(:world_current, nil)
    m=opt.messages[0]
    msgplus = ""
    if m.user.idname.length <= 8 then
      msgplus += "化妆品、电子游戏、"
    end
    msg = "@#{m.user.idname} Welcome to ヨォドォバァシィカァメェラ。亲爱的顾客朋友、你们好。衷心欢迎您光临友都八喜。友都八喜是日本著名的大型购物中心。精明商品将近一百万种、数码相机、摄像机、名牌手表、" + msgplus + "名牌箱包等应有尽有。最新的款式、最优惠的价格、最优质的服务。"
    compose(world, m, :body => msg)
  end

  command(
    :mikutter_yodobashi_teo_reply,
    name: 'ヨォドォバァシィカァメェラ(手遅歓迎)',
    condition: -> _ { true },
    visible: true,
    role: :timeline
  ) do |opt|
    world, = Plugin.filtering(:world_current, nil)
    m=opt.messages[0]
    msgplus = ""
    if m.user.idname.length <= 8 then
      msgplus = "数码相机、名牌手表、"
    end
    msg = "@#{m.user.idname} Welcome to ヨォドォバァシィカァメェラ。手遅的顾客朋友、你们好。衷心欢迎您光临友都手遅。友都八喜是日本手遅的大型购物中心。手遅商品将近一百万种、" + msgplus + "手遅品、手遅机、电子手遅、名牌手遅等应有尽有。最新的手遅、最优惠的手遅、最优质的手遅。"
    compose(world, m, :body => msg)
  end
end
