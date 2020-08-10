$(document).on("turbolinks:load", () => {
  const fee_rate = 0.1;
  $(".Sell_warrap_index_main_center_price_box_body_right_in_num").on('keyup', function(e) {
    let price = e.target.value;
    let fee = Math.round(price * fee_rate);
    $(".Sell_warrap_index_main_center_price_box_body_solid").text(`¥${fee}円`);
    let benefit = price - fee;
    $(".benefit").text(`¥${Math.round(benefit)}円`);
  });
})