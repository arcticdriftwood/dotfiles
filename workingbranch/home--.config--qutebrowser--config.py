# Autogenerated config.py
# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html



# Uncommecolors.completion.item.selected.fgnt this to still load settings configured via autoconfig.yml


c.scrolling.smooth = True
c.editor.command = ["urxvtc", "-e", "nvim", "{file}"]
c.qt.args = ["disable-seccomp-sandbox-filter"]
c.tabs.position = "bottom"
c.url.default_page = "about:blank"
c.url.start_pages = "about:blank"
c.url.searchengines = {"DEFAULT":"https://google.com/search?q={}"}
c.fonts.web.size.minimum = 10
c.fonts.monospace = "Tamsyn"
#c.fonts.web.family.standard = "Tamsyn"
#c.content.user_stylesheets = ["~/.config/qutebrowser/userstyle.css"]
c.content.host_blocking.whitelist = []
#c.fonts.web.family.fixed = "Tamsyn"
#c.fonts.web.family.serif = "Tamsyn"
#c.fonts.web.family.sans_serif = "Tamsyn"
c.completion.web_history_max_items = 0
c.content.private_browsing = True


u_colors = {}
u_colors["fg"]  = "#D8DEE9"
u_colors["bg"]  = "#2E3440"
u_colors["bg2"] = "#3B4252"
u_colors["purple"] = "#B48EAD"
u_colors["green"] = "#A3BE8C"
u_colors["bg4"] = "#4C566A"
u_colors["red"] = "#BF616A"
u_colors["orange"] = "#D08770"

c.colors.completion.fg = u_colors["fg"]
c.colors.completion.odd.bg = u_colors["bg2"]
c.colors.completion.even.bg = u_colors["bg"]
c.colors.completion.category.fg = u_colors["fg"]
c.colors.completion.category.bg = u_colors["bg"]
c.colors.completion.category.border.top = u_colors["green"] #-----G--
c.colors.completion.category.border.bottom = u_colors["green"] #-G---
c.colors.completion.item.selected.fg = u_colors["fg"] #-------Greeen---------------
c.colors.completion.item.selected.bg = u_colors["bg4"] # COLOR4
c.colors.completion.item.selected.border.top = u_colors["green"] # COLOR4
c.colors.completion.item.selected.border.bottom = u_colors["green"] # COLOR4
c.colors.completion.match.fg = u_colors["purple"] # COLOR4
c.colors.downloads.bar.bg = u_colors["bg"]
c.colors.downloads.start.fg = u_colors["fg"]
c.colors.downloads.start.bg = u_colors["green"]
c.colors.downloads.stop.fg = u_colors["fg"]
c.colors.downloads.stop.bg = u_colors["purple"]
c.colors.downloads.error.fg = u_colors["fg"]
c.colors.downloads.error.bg = u_colors["red"]
c.colors.hints.fg = u_colors["green"]
c.colors.hints.match.fg = u_colors["purple"]
c.colors.hints.bg = u_colors["bg"]
c.colors.keyhint.fg = u_colors["fg"]
c.colors.keyhint.suffix.fg = u_colors["green"]
c.colors.keyhint.bg = u_colors["bg"]
c.colors.messages.error.fg = u_colors["red"]
c.colors.messages.error.bg = u_colors["bg"]
c.colors.messages.error.border = u_colors["red"]
c.colors.messages.warning.fg = u_colors["orange"]
c.colors.messages.warning.bg = u_colors["bg"]
c.colors.messages.warning.border = u_colors["orange"]
c.colors.messages.info.fg = u_colors["purple"]
c.colors.messages.info.bg = u_colors["bg"]
c.colors.messages.info.border = u_colors["purple"]
c.colors.statusbar.normal.fg = u_colors["fg"]
c.colors.statusbar.normal.bg = u_colors["bg"]
c.colors.statusbar.insert.fg = u_colors["green"]
c.colors.statusbar.insert.bg = u_colors["bg"]
c.colors.statusbar.passthrough.fg = u_colors["orange"]
c.colors.statusbar.passthrough.bg = u_colors["bg"]
c.colors.statusbar.private.fg = u_colors["purple"]
c.colors.statusbar.private.bg = u_colors["bg"]
c.colors.statusbar.command.fg = u_colors["red"]
c.colors.statusbar.command.bg = u_colors["bg"]
c.colors.statusbar.command.private.fg = u_colors["purple"]
c.colors.statusbar.command.private.bg = u_colors["bg"]
c.colors.statusbar.progress.bg = u_colors["purple"]
c.colors.statusbar.url.fg = u_colors["fg"]
c.colors.statusbar.url.error.fg = u_colors["red"]
c.colors.statusbar.url.hover.fg = u_colors["purple"]
c.colors.statusbar.url.success.http.fg = u_colors["fg"]
c.colors.statusbar.url.success.https.fg = u_colors["green"]
c.colors.statusbar.url.warn.fg = u_colors["orange"]
c.colors.tabs.bar.bg = u_colors["bg"]
c.colors.tabs.indicator.start = u_colors["purple"]
c.colors.tabs.indicator.stop = u_colors["green"]
c.colors.tabs.indicator.error = u_colors["red"]
c.colors.tabs.odd.fg = u_colors["fg"]
c.colors.tabs.odd.bg = u_colors["bg"]
c.colors.tabs.even.fg = u_colors["fg"]
c.colors.tabs.even.bg = u_colors["bg"]
c.colors.tabs.selected.odd.fg = u_colors["fg"]
c.colors.tabs.selected.odd.bg = u_colors["bg4"]
c.colors.tabs.selected.even.fg = u_colors["fg"]
c.colors.tabs.selected.even.bg = u_colors["bg4"]
