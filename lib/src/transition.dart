part of bootjack;

Map<String, String> _TRANS_END_EVENT_NAMES = new HashMap<String, String>.from({
  'webkit-' : 'webkitTransitionEnd',
  'moz-'    : 'transitionend',
  'o-'      : 'oTransitionEnd otransitionend'
});

// TODO: check current browser status, maybe we don't need different event names at all.
/** Transition related utilities.
 */
class Transition {
  
  /** Return true if transition is used.
   */
  static bool get isUsed => _used;
  static bool _used = false;
  
  static void _register() {
    _used = true;
  }
  
  /** The event name for transition end across browser.
   */
  static String get end {
    if (_end == null) {
      _end = _fallback(_TRANS_END_EVENT_NAMES[Device.cssPrefix], () => 'transitionend');
    }
    return _end;
  }
  static String _end;
  
}
