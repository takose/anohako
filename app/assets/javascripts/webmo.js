var webmo0 = new Webmo.ws("webmo06.local")
var webmo1 = new Webmo.ws("webmo06.local")
var webmo2 = new Webmo.ws("webmo06.local")
var webmo3 = new Webmo.ws("webmo06.local")
var webmo4 = new Webmo.ws("webmo06.local")
var webmo5 = new Webmo.ws("webmo06.local")
webmo0.onopen = function () {
  let flg = false;
  $("#drink0").on('click', () => {
    if (flg) {
      webmo0.rotateBy(60, 90)
    } else {
      webmo0.rotateBy(60, -90)
    }
    flg = !flg
  })
}
webmo1.onopen = function () {
  let flg = false;
  $("#drink1").on('click', () => {
    if (flg) {
      webmo1.rotateBy(60, 90)
    } else {
      webmo1.rotateBy(60, -90)
    }
    flg = !flg
  })
}
webmo2.onopen = function () {
  let flg = false;
  $("#drink2").on('click', () => {
    if (flg) {
      webmo2.rotateBy(60, 90)
    } else {
      webmo2.rotateBy(60, -90)
    }
    flg = !flg
  })
}
webmo3.onopen = function () {
  let flg = false;
  $("#drink3").on('click', () => {
    if (flg) {
      webmo3.rotateBy(60, 90)
    } else {
      webmo3.rotateBy(60, -90)
    }
    flg = !flg
  })
}
webmo4.onopen = function () {
  let flg = false;
  $("#drink4").on('click', () => {
    if (flg) {
      webmo4.rotateBy(60, 90)
    } else {
      webmo4.rotateBy(60, -90)
    }
    flg = !flg
  })
}
webmo5.onopen = function () {
  let flg = false;
  $("#drink5").on('click', () => {
    if (flg) {
      webmo5.rotateBy(60, 90)
    } else {
      webmo5.rotateBy(60, -90)
    }
    flg = !flg
  })
}
