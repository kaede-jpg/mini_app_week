const quiz_count = document.getElementById('quiz_count');
const color_name = document.getElementById('color_name');
const canvas = document.getElementById('canvas');
const ctx = canvas.getContext('2d');
const modal = document.getElementById("my_modal_2");
const modal_btn = document.getElementById('my_modal_2_btn');
const comment = document.getElementById("comment");
const mascot = document.getElementById("mascot");
const sample_color = document.getElementById("sample_color");
const sample_color_name = document.getElementById("sample_color_name");

let count = 0;
let color_object = gon.quiz_colors[count];
const score_result = [];

// ページを開いたとき
window.addEventListener('load', function() {
    // イメージをランダムに表示
    const imageIndex = Math.floor(Math.random() * 4) + 1; 
    const img = new Image();
    img.onload = function() {
      ctx.drawImage(img, 0, 0, canvas.width, canvas.height);
    };
    img.src = `/image${imageIndex}.jpg`;
    // 色名を表示
    quiz_count.textContent = count + 1 +"問目";
    color_name.textContent = color_object.name;
  });

// 画像をクリックしたとき
canvas.addEventListener('click', function score(evt){
    // 色情報を取得
    const x = parseInt(evt.offsetX);
    const y = parseInt(evt.offsetY);
    const imagedata = ctx.getImageData(x, y, 1, 1);
    const r = imagedata.data[0];        
    const g = imagedata.data[1];
    const b = imagedata.data[2];
    // 点数計算
    const score_tmp = Math.sqrt((color_object.code_r - r)**2 + (color_object.code_g - g)**2 + (color_object.code_b - b)**2) 
    if (score_tmp<50){
        score_arranged = 100
    }else if(score_tmp>150){
        score_arranged = 0
    }else{
        score_arranged = Math.round((score_tmp-50)/100*100);
    };
    score_result.push({name: color_object.name, score: score_arranged});
    // モーダルを出す
    const score = document.getElementById("score");
    sample_color.style.backgroundColor = 'rgb(' + [r,g,b,].join(',') + ')';
    sample_color_name.textContent = color_object.name;
    score.textContent = score_arranged + "点だよ！";
    if (score_arranged >= 60){
        comment.textContent = "Excellent！"
        mascot.setAttribute('src', '/mascot_surprised.PNG');
    }else if(score_arranged >= 20){
        comment.textContent = "Good！"
        mascot.setAttribute('src', '/mascot_default.PNG');
    }else{
        comment.textContent = "Oh..."
        mascot.setAttribute('src', '/mascot_disappointed.PNG');
    }
    if (count == 2){
        modal_btn.textContent = "結果へ"
    }
    modal.showModal();
  });


// モーダルのボタンをクリックしたとき
modal_btn.addEventListener('click', function (){
    count += 1
    if (count <= 2){
        // 色名変更しモーダルを閉じる
        quiz_count.textContent = count + 1 +"問目";
        color_object = gon.quiz_colors[count];
        color_name.textContent = color_object.name;
        modal.close();
    }else{
        // 点数をRailsに渡しながらresultへPOSTリクエスト
        const token = document.querySelector('meta[name="csrf-token"]').getAttribute('content');
        const form = document.createElement('form');
        const request = document.createElement('input');
        const csrf = document.createElement('input');
        csrf.type = 'hidden';
        csrf.name = 'authenticity_token';
        csrf.value = token;
        form.method = 'POST';
        form.action = '/quizzes/result';
        request.type = 'hidden';
        request.name = 'text';
        request.value = JSON.stringify(score_result);
        form.appendChild(request);
        form.appendChild(csrf);
        document.body.appendChild(form);
        form.submit();
    }
});
