extension MjuiThemeColor {
  /// master background
  @inlinable
  public var master: (Float, Float, Float) {
    get { _themecolor.master }
    set { _themecolor.master = newValue }
  }
  /// scrollbar thumb
  @inlinable
  public var thumb: (Float, Float, Float) {
    get { _themecolor.thumb }
    set { _themecolor.thumb = newValue }
  }
  /// section title
  @inlinable
  public var secttitle: (Float, Float, Float) {
    get { _themecolor.secttitle }
    set { _themecolor.secttitle = newValue }
  }
  /// section title: bottom color
  @inlinable
  public var secttitle2: (Float, Float, Float) {
    get { _themecolor.secttitle2 }
    set { _themecolor.secttitle2 = newValue }
  }
  /// section title with unchecked box
  @inlinable
  public var secttitleuncheck: (Float, Float, Float) {
    get { _themecolor.secttitleuncheck }
    set { _themecolor.secttitleuncheck = newValue }
  }
  /// section title with unchecked box: bottom color
  @inlinable
  public var secttitleuncheck2: (Float, Float, Float) {
    get { _themecolor.secttitleuncheck2 }
    set { _themecolor.secttitleuncheck2 = newValue }
  }
  /// section title with checked box
  @inlinable
  public var secttitlecheck: (Float, Float, Float) {
    get { _themecolor.secttitlecheck }
    set { _themecolor.secttitlecheck = newValue }
  }
  /// section title with checked box: bottom color
  @inlinable
  public var secttitlecheck2: (Float, Float, Float) {
    get { _themecolor.secttitlecheck2 }
    set { _themecolor.secttitlecheck2 = newValue }
  }
  /// section font
  @inlinable
  public var sectfont: (Float, Float, Float) {
    get { _themecolor.sectfont }
    set { _themecolor.sectfont = newValue }
  }
  /// section symbol
  @inlinable
  public var sectsymbol: (Float, Float, Float) {
    get { _themecolor.sectsymbol }
    set { _themecolor.sectsymbol = newValue }
  }
  /// section pane
  @inlinable
  public var sectpane: (Float, Float, Float) {
    get { _themecolor.sectpane }
    set { _themecolor.sectpane = newValue }
  }
  /// separator title
  @inlinable
  public var separator: (Float, Float, Float) {
    get { _themecolor.separator }
    set { _themecolor.separator = newValue }
  }
  /// separator title: bottom color
  @inlinable
  public var separator2: (Float, Float, Float) {
    get { _themecolor.separator2 }
    set { _themecolor.separator2 = newValue }
  }
  /// shortcut background
  @inlinable
  public var shortcut: (Float, Float, Float) {
    get { _themecolor.shortcut }
    set { _themecolor.shortcut = newValue }
  }
  /// font active
  @inlinable
  public var fontactive: (Float, Float, Float) {
    get { _themecolor.fontactive }
    set { _themecolor.fontactive = newValue }
  }
  /// font inactive
  @inlinable
  public var fontinactive: (Float, Float, Float) {
    get { _themecolor.fontinactive }
    set { _themecolor.fontinactive = newValue }
  }
  /// decor inactive
  @inlinable
  public var decorinactive: (Float, Float, Float) {
    get { _themecolor.decorinactive }
    set { _themecolor.decorinactive = newValue }
  }
  /// inactive slider color 2
  @inlinable
  public var decorinactive2: (Float, Float, Float) {
    get { _themecolor.decorinactive2 }
    set { _themecolor.decorinactive2 = newValue }
  }
  /// button
  @inlinable
  public var button: (Float, Float, Float) {
    get { _themecolor.button }
    set { _themecolor.button = newValue }
  }
  /// check
  @inlinable
  public var check: (Float, Float, Float) {
    get { _themecolor.check }
    set { _themecolor.check = newValue }
  }
  /// radio
  @inlinable
  public var radio: (Float, Float, Float) {
    get { _themecolor.radio }
    set { _themecolor.radio = newValue }
  }
  /// select
  @inlinable
  public var select: (Float, Float, Float) {
    get { _themecolor.select }
    set { _themecolor.select = newValue }
  }
  /// select pane
  @inlinable
  public var select2: (Float, Float, Float) {
    get { _themecolor.select2 }
    set { _themecolor.select2 = newValue }
  }
  /// slider
  @inlinable
  public var slider: (Float, Float, Float) {
    get { _themecolor.slider }
    set { _themecolor.slider = newValue }
  }
  /// slider color 2
  @inlinable
  public var slider2: (Float, Float, Float) {
    get { _themecolor.slider2 }
    set { _themecolor.slider2 = newValue }
  }
  /// edit
  @inlinable
  public var edit: (Float, Float, Float) {
    get { _themecolor.edit }
    set { _themecolor.edit = newValue }
  }
  /// edit invalid
  @inlinable
  public var edit2: (Float, Float, Float) {
    get { _themecolor.edit2 }
    set { _themecolor.edit2 = newValue }
  }
  /// edit cursor
  @inlinable
  public var cursor: (Float, Float, Float) {
    get { _themecolor.cursor }
    set { _themecolor.cursor = newValue }
  }
}
extension MjuiThemeColor: CustomReflectable {
  public var customMirror: Mirror {
    Mirror(self, children: ["master": master, "thumb": thumb, "secttitle": secttitle, "secttitle2": secttitle2, "secttitleuncheck": secttitleuncheck, "secttitleuncheck2": secttitleuncheck2, "secttitlecheck": secttitlecheck, "secttitlecheck2": secttitlecheck2, "sectfont": sectfont, "sectsymbol": sectsymbol, "sectpane": sectpane, "separator": separator, "separator2": separator2, "shortcut": shortcut, "fontactive": fontactive, "fontinactive": fontinactive, "decorinactive": decorinactive, "decorinactive2": decorinactive2, "button": button, "check": check, "radio": radio, "select": select, "select2": select2, "slider": slider, "slider2": slider2, "edit": edit, "edit2": edit2, "cursor": cursor])
  }
}
