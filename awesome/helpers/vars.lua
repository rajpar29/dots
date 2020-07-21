local gears = require('gears');
local beautiful = require('beautiful');
local xrdb = beautiful.xresources.get_current_theme();

return {
  global = {
    f = xrdb.color7.."75",
    f2 = xrdb.color7..'D9',
    t = "#00000000",
    b = "#000000",
    m = 10,
    r = 7,
    o = 0.35,
    user = gears.filesystem.get_configuration_dir()..'/helpers/andy-emoji-linicorn.png',
  },
  fonts = {
    is = "MaterialDesignIconsDesktop 12",
    im = "MaterialDesignIconsDesktop 14",
    il = "MaterialDesignIconsDesktop 20",
    ixxl = "MaterialDesignIconsDesktop 100",
    ts = "SF Pro Rounded 9",
    tm = "SF Pro Rounded 10",
    tl = "SF Pro Rounded 12",
    tsl = "SF Pro Rounded Light 9",
    tml = "SF Pro Rounded Light 10",
    tll = "SF Pro Rounded Light 12",
    tsb = "SF Pro Rounded Semibold 9",
    tmb = "SF Pro Rounded Semibold 10",
    tlb = "SF Pro Rounded Semibold 12",
    txlb = "SF Pro Rounded Semibold 15",
    txxlb = "SF Pro Rounded Semibold 25",
    mlb = "Operator Mono Lig Bold 12",
    mll = "Operator Mono Lig Light 12",
  },
  lock = {
    w = 400,
    h = 330,
    hh = 230,
    a = 100,
  },
  topbar = {
    h = 30,
    w = 30,
  },
  tagswitcher= {
    h = 120,
  },
  hub = {
    i = 40,
    w = 800,
    h = 600,
    nw = 260,
  },
  icons = {
    arch = '󰣇',
    power = '󰐥',
    date = '󰸘',
    time = '󰅐',
    vol_mute = '󰝟',
    vol_1 = '󰕿',
    vol_2 = '󰖀',
    vol_3 = '󰕾',
    wifi = '󰖩',
    wifix = '󰖪',
    bt = '󰂯',
    btx = '󰂲',
    pac = '󰏗',
    mem = '󰍛',
    lan = '󰲝',
    lanx = '󰲜',
    note = '󰀠',
    web = '󰖟',
    system = '󰄨',
    display = '󰇄',
    media = '󰝚',
    theme = '󰸌',
    down = '󰳜',
  },
  commands = {
    cpucmd = 'bash '..gears.filesystem.get_configuration_dir()..'helpers/cpu.sh',
    ramcmd = 'bash '..gears.filesystem.get_configuration_dir()..'helpers/ram.sh',
    diskcmd = 'bash '..gears.filesystem.get_configuration_dir()..'helpers/disk.sh',
    wifiup = 'bash '..gears.filesystem.get_configuration_dir()..'helpers/wifiup.sh',
    lanup = 'bash '..gears.filesystem.get_configuration_dir()..'helpers/lanup.sh',
    btup = 'bash '..gears.filesystem.get_configuration_dir()..'helpers/btup.sh',
    btdevices = 'bash '..gears.filesystem.get_configuration_dir()..'helpers/btdevices.sh',
    btdevice = 'bash '..gears.filesystem.get_configuration_dir()..'helpers/btdevice.sh',
    lock = 'bash -c "xidlehook --not-when-audio --timer 900 \'echo lock\' \'\' "',
    proccmd = 'bash -c "ps -eo comm:43,%mem,%cpu --sort=-%mem | head -n 6"',
    synccmd = 'bash -c "yay -Syy"',
    updatescmd = 'bash -c "yay -Sup | wc -l"',
    ismuted = 'bash -c "pamixer --get-mute | diff <(echo \"true\") -"',
    vol = 'bash -c "pamixer --get-volume"',
    ssid = 'bash -c "iwgetid -r"',
  },
  notifications = {
    active = {},
    w = 200,
  },
};