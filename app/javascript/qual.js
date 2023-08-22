// セレクトボックスの特定の項目を無効化
const qual = () => {
  var selectBox = document.getElementById("question-qual");
  var disabledOptions = [1, 6, 10, 15, 19, 24, 30, 36, 41]; // 無効化したい項目のID

  for (var i = 0; i < selectBox.options.length; i++) {
    if (disabledOptions.includes(parseInt(selectBox.options[i].value))) {
      selectBox.options[i].disabled = true;
    }
  }
};

window.addEventListener("turbo:load", qual);