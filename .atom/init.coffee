# Toggle between light and dark syntax theme.
atom.commands.add 'atom-workspace', 'dot-atom:toggle-theme', ->
  lightTheme = "solarized-light-syntax"
  darkTheme  = "solarized-dark-syntax"

  enabledthemes = atom.themes.getEnabledThemeNames();
  if lightTheme in enabledthemes
    index = enabledthemes.indexOf(lightTheme)
    enabledthemes[index] = darkTheme
  else
    index = enabledthemes.indexOf(darkTheme)
    enabledthemes[index] = lightTheme

  atom.themes.setEnabledThemes(enabledthemes)
