const button = document.getElementById("open_modal");
const modal = document.getElementById("my_modal_3");

window.addEventListener('load', function() {
    //スコアが10位以内ならモーダルを開く

    //登録せずに閉じたらボタンが現れる
    button.textContent = "ランキングに登録！";
});

document.addEventListener('turbolinks:load', function() {
    // フォーム送信成功後の処理をここに書く
  });