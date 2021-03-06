part of bootjack;

// $(window)

// required jQuery features:
// dimensions: height()/scrollTop()/offset()/top()/bottom()
// classes: removeClass()/addClass()
// data()
// on()

// TODO: require scroll spy

/**
 * 
 */
class Affix extends Base {
  
  static const String _NAME = 'affix';
  
  final int offset;
  
  Affix(Element element, {int offset : 0}) : 
  this.offset = offset, 
  super(element, _NAME) {
    /*
    this.$window = $(window)
      .on('scroll.affix.data-api', $.proxy(this.checkPosition, this))
      .on('click.affix.data-api',  $.proxy(function () { setTimeout($.proxy(this.checkPosition, this), 1) }, this))
    */
    checkPosition();
  }
  
  void checkPosition() {
    /*
    if (!this.$element.is(':visible')) return

    var scrollHeight = $(document).height()
      , scrollTop = this.$window.scrollTop()
      , position = this.$element.offset()
      , offset = this.options.offset
      , offsetBottom = offset.bottom
      , offsetTop = offset.top
      , reset = 'affix affix-top affix-bottom'
      , affix

    if (typeof offset != 'object') offsetBottom = offsetTop = offset
    if (typeof offsetTop == 'function') offsetTop = offset.top()
    if (typeof offsetBottom == 'function') offsetBottom = offset.bottom()

    affix = this.unpin != null && (scrollTop + this.unpin <= position.top) ?
      false    : offsetBottom != null && (position.top + this.$element.height() >= scrollHeight - offsetBottom) ?
      'bottom' : offsetTop != null && scrollTop <= offsetTop ?
      'top'    : false

    if (this.affixed === affix) return

    this.affixed = affix
    this.unpin = affix == 'bottom' ? position.top - scrollTop : null

    this.$element.removeClass(reset).addClass('affix' + (affix ? '-' + affix : ''))
    */
  }
  
  static bool _registered = false;
  
  static void _register() {
    if (_registered) return;
    _registered = true;
    
    /*
    $(window).on('load', function () {
      $('[data-spy="affix"]').each(function () {
        var $spy = $(this)
            , data = $spy.data()

            data.offset = data.offset || {}

        data.offsetBottom && (data.offset.bottom = data.offsetBottom)
        data.offsetTop && (data.offset.top = data.offsetTop)

        $spy.affix(data)
      })
    })
    */
  }
  
}
/*
 // AFFIX PLUGIN DEFINITION
 // ======================= 

  var old = $.fn.affix

  $.fn.affix = function (option) {
    return this.each(function () {
      var $this = $(this)
        , data = $this.data('affix')
        , options = typeof option == 'object' && option
      if (!data) $this.data('affix', (data = new Affix(this, options)))
      if (typeof option == 'string') data[option]()
    })
  }

*/