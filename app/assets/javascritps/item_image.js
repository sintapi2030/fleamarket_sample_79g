$(document).on("turbolinks:load", () => {
  // 画像用のinputを生成する関数
  const buildFileField = (num) => {
    const html = `<input class="js-file" type="file"
                      name="item[images_attributes][${num}][image]"
                      id="item_images_attributes_${num}_image" data-index="${num}">`;
    return html;
  };
  // プレビュー用のimgタグを生成する関数
  const buildImg = (index, url) => {
    const html = `<div class="img-wrapper">
                    <img data-index="${index}" src="${url}" width="100px" height="100px" class="preview-img">
                    <div class="js-remove">削除</div>
                  </div>`;
    return html;
  };

  // file_fieldのnameに動的なindexをつける為の配列
  let fileIndex = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  // 既に使われているindexを除外
  if ($(".add-pic")){
    lastIndex = $(".add-pic").data("index");
    fileIndex.splice(0, (lastIndex - 1));
    console.log(fileIndex);
  }
  $(".hidden-destroy").hide();

  $("#js-file_group").on("change", ".js-file", function (e) {
    //下記は、hamlでdataが取れないので文字列に変えてsplitでattributesの数字を取ってあります
    const targetIndex = $(this)[0].id.split("_")[3];
    console.log(targetIndex);

    // ファイルのブラウザ上でのURLを取得する
    const file = e.target.files[0];
    const blobUrl = window.URL.createObjectURL(file);
    // 該当indexを持つimgがあれば取得して変数imgに入れる(画像変更の処理)
    if ((img = $(`img[data-index="${targetIndex}"]`)[0])) {
      img.setAttribute("src", blobUrl);
    } else {
      // 新規画像追加の処理
      $("#previews").append(buildImg(targetIndex, blobUrl));
      // fileIndexの先頭の数字を使ってinputを作る
      $("#js-file_group").append(buildFileField(fileIndex[0]));
      fileIndex.shift();
      // 末尾の数に1足した数を追加する
      fileIndex.push(fileIndex[fileIndex.length - 1] + 1);
    }
  });

  $("#image-box").on("click", function () {
    $(`input[data-index="${fileIndex[0] - 1}"]`).click();
  });

  $("#previews").on("click", ".img-wrapper", function (e) {
    const targetIndex = $(this).children("img").data("index");
    // 該当indexを振られているチェックボックスを取得する
    const hiddenCheck = $(`input[data-index="${targetIndex}"].hidden-destroy`);
    // もしチェックボックスが存在すればチェックを入れる
    if (hiddenCheck) {
      hiddenCheck.prop("checked", true);
    }
    $(this).remove();
    $(`input[data-index="${targetIndex}"]`).remove();

    // $(`img[data-index="${targetIndex}"]`).remove();

    // 画像入力欄が0個にならないようにしておく
    if ($(".js-file").length == 0)
      $("#previews").append(buildFileField(fileIndex[0]));
  });

  const addImg = (index, url) => {
    const html = `<div class="img-wrapper">
                    <img data-index="${index}" src="${url}" width="100px" height="100px" class="preview-img">
                  </div>`;
    return html;
  };

  const buildInputField = (num) => {
    const html = `<label for="item_images_attributes_${num}_image"><p class='edit-btn'>"${num+1}枚目の画像を変更する"</p>
    </label><input data-index="${num}" class="js-file" style="display: none" type="file" name="item[images_attributes][${num}][image]" id="item_images_attributes_${num}_image" />
    <div class='js-file_group' data-index='${num}'>
    <span class='position_right'>
    削除
    <input name="item[images_attributes][${num}][_destroy]" type="hidden" value="0" /><input type="checkbox" value="1" name="item[images_attributes][${num}][_destroy]" id="item_images_attributes_${num}__destroy" />`
    return html;
  }

  const buildaddImg = (num) => {
    const html = `<label class="add" for="item_image"><p class='add__action'>写真を追加する</p></label><input name="item[images_attributes][${num}][image]" style="display: none" data-index="${num}" class="add-pic" type="file" id="item_image" />`
    return html;
  }

  $(".addImgBox").on('change', '.add-pic', function(e){
    const targetIndex = $(this).data("index");
    console.log(targetIndex);

    // ファイルのブラウザ上でのURLを取得する
    const file = e.target.files[0];
    const blobUrl = window.URL.createObjectURL(file);
    $("#previews").append(addImg(targetIndex, blobUrl));
    // fileIndexの先頭の数字を使ってinputを作る
    $("#js-file_group_edit").append(buildInputField(fileIndex[0]));
    $(".addImgBox").empty();
    $(".addImgBox").append(buildaddImg(fileIndex[0]+1));
    fileIndex.shift();
    // 末尾の数に1足した数を追加する
    fileIndex.push(fileIndex[fileIndex.length - 1] + 1);
    console.log(fileIndex);
  })

  $("#js-file_group_edit").on("change", ".js-file", function (e) {
    //下記は、hamlでdataが取れないので文字列に変えてsplitでattributesの数字を取ってあります
    const targetIndex = $(this).data("index")
    console.log(targetIndex);

    // ファイルのブラウザ上でのURLを取得する
    const file = e.target.files[0];
    const blobUrl = window.URL.createObjectURL(file);
    // 該当indexを持つimgがあれば取得して変数imgに入れる(画像変更の処理)
    if ((img = $(`img[data-index="${targetIndex}"]`)[0])) {
      img.setAttribute("src", blobUrl);
    } else{
      console.log('nothing')
    }
  });
});
