# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
            categories = [
              {level1:"レディース",level1_children:[
                                                  {level2:"トップス",level2_children:["Tシャツ/カットソー(半袖/袖なし)", "Tシャツ/カットソー(七分/長袖)", "シャツ/ブラウス(半袖/袖なし)","シャツ/ブラウス(七分/長袖)","ポロシャツ", "キャミソール", "タンクトップ", "ホルターネック", "ニット/セーター", "チュニック", "カーディガン/ボレロ", "アンサンブル", "ベスト/ジレ", "パーカー", "トレーナー/スウェット", "ベアトップ/チューブトップ", "ジャージ", "その他"]},
                                                  {level2:"ジャケット/アウター",level2_children:["テーラードジャケット", "ノーカラージャケット", "Gジャン/デニムジャケット", "レザージャケット", "ダウンジャケット", "ライダースジャケット", "ミリタリージャケット", "ダウンベスト", "ジャンパー/ブルゾン", "ポンチョ", "ロングコート", "トレンチコート", "ダッフルコート", "ピーコート", "チェスターコート", "モッズコート", "スタジャン",  "毛皮/ファーコート", "スプリングコート", "スカジャン", "その他"]},
                                                  {level2:"パンツ",level2_children:["デニム/ジーンズ", "ショートパンツ", "カジュアルパンツ", "ハーフパンツ", "チノパン","ワークパンツ/カーゴパンツ","クロップドパンツ", "サロペット/オーバーオール","オールインワン", "サルエルパンツ","ガウチョパンツ","その他"]},
                                                  {level2:"スカート",level2_children:["ミニスカート", "ひざ丈スカート", "ロングスカート", "キュロット", "その他"]},
                                                  {level2:"ワンピース",level2_children:["ミニワンピース", "ひざ丈ワンピース", "ロングワンピース", "その他"]},
                                                  {level2:"靴",level2_children:["ハイヒール/パンプス", "ブーツ", "サンダル", "スニーカー", "ミュール", "モカシン", "ローファー/革靴", "フラットシューズ/バレエシューズ", "長靴/レインシューズ", "その他"]},
                                                  {level2:"ルームウェア/パジャマ",level2_children:["パジャマ","ルームウェア"]},
                                                  {level2:"レッグウェア",level2_children:["ソックス", "スパッツ/レギンス", "ストッキング/タイツ",  "レッグウォーマー", "その他"]},
                                                  {level2:"帽子",level2_children:["ニットキャップ/ビーニー", "ハット", "ハンチング/ベレー帽", "キャップ", "キャスケット", "麦わら帽子", "その他"]},
                                                  {level2:"バック",level2_children:["ハンドバッグ",  "トートバッグ", "エコバッグ", "リュック/バックパック", "ボストンバッグ", "スポーツバッグ", "ショルダーバッグ", "クラッチバッグ", "ポーチ/バニティ", "ボディバッグ/ウェストバッグ",  "マザーズバッグ", "メッセンジャーバッグ", "ビジネスバッグ",  "旅行用バッグ/キャリーバッグ", "ショップ袋", "和装用バッグ", "かごバッグ", "その他"]},
                                                  {level2:"アクセサリー",level2_children:["ネックレス", "ブレスレット", "バングル/リストバンド", "リング", "ピアス(片耳用)", "ピアス(両耳用)", "イヤリング", "アンクレット", "ブローチ/コサージュ", "チャーム", "その他"]},
                                                  {level2:"ヘアアクセサリー",level2_children:["ヘアゴム/シュシュ", "ヘアバンド/カチューシャ", "ヘアピン", "その他"]},
                                                  {level2:"小物",level2_children:["長財布", "折り財布", "コインケース/小銭入れ","名刺入れ/定期入れ", "キーケース","キーホルダー", "手袋/アームカバー", "ハンカチ", "ベルト","マフラー/ショール", "ストール/スヌード", "バンダナ/スカーフ",  "ネックウォーマー","サスペンダー", "サングラス/メガネ","モバイルケース/カバー","手帳","イヤマフラー","傘","レインコート/ポンチョ","ミラー","タバコグッズ","その他"]},
                                                  {level2:"時計",level2_children:["腕時計(アナログ)","腕時計(デジタル)","ラバーベルト","レザーベルト","金属ベルト","その他"]},
                                                  {level2:"ウィッグ/エクステ",level2_children:["前髪ウィッグ","ロングストレート","ロングカール","ショートストレート","ショートカール","その他"]},
                                                  {level2:"浴衣/水着",level2_children:[ "浴衣","着物", "振袖","長襦袢/半襦袢","水着セパレート","水着ワンピース","水着スポーツ用","その他"]},
                                                  {level2:"スーツ/フォーマル/ドレス",level2_children:["スカートスーツ上下", "パンツスーツ上下", "ドレス","パーティーバッグ","シューズ","ウェディング","その他"]},
                                                  {level2:"マタニティ",level2_children:["トップス","アウター","インナー","ワンピース","パンツ/スパッツ","スカート","パジャマ","授乳服","その他"]},
                                                  {level2:"その他",level2_children:[ "コスプレ","下着", "その他"]}
                                                 ]
              },
              {level1:"メンズ",level1_children:[
                                                  {level2:"トップス",level2_children:["Tシャツ/カットソー(半袖/袖なし)", "Tシャツ/カットソー(七分/長袖)", "シャツ", "ポロシャツ", "タンクトップ", "ニット/セーター", "パーカー", "カーディガン", "スウェット", "ジャージ", "ベスト", "その他"]},
                                                  {level2:"ジャケット/アウター",level2_children:["テーラードジャケット", "ノーカラージャケット", "Gジャン/デニムジャケット", "レザージャケット", "ダウンジャケット", "ライダースジャケット", "ミリタリージャケット", "ナイロンジャケット", "フライトジャケット", "ダッフルコート", "ピーコート", "ステンカラーコート", "トレンチコート", "モッズコート", "チェスターコート", "スタジャン", "スカジャン", "ブルゾン", "マウンテンパーカー", "ダウンベスト", "ポンチョ", "カバーオール", "その他"]},
                                                  {level2:"パンツ",level2_children:["デニム/ジーンズ", "ワークパンツ/カーゴパンツ", "スラックス", "チノパン", "ショートパンツ", "ペインターパンツ", "サルエルパンツ", "オーバーオール", "その他"]},
                                                  {level2:"靴",level2_children:["スニーカー", "サンダル", "ブーツ", "モカシン", "ドレス/ビジネス", "長靴/レインシューズ", "デッキシューズ", "その他"]},
                                                  {level2:"バッグ",level2_children:["ショルダーバッグ", "トートバッグ", "ボストンバッグ", "リュック/バックパック", "ウエストポーチ", "ボディーバッグ", "ドラムバッグ", "ビジネスバッグ", "トラベルバッグ", "メッセンジャーバッグ", "エコバッグ", "その他"]},
                                                  {level2:"スーツ",level2_children:["スーツジャケット", "スーツベスト", "スラックス", "セットアップ", "その他"]},
                                                  {level2:"帽子",level2_children:["キャップ", "ハット", "ニットキャップ/ビーニー", "ハンチング/ベレー帽", "キャスケット", "サンバイザー", "その他"]},
                                                  {level2:"アクセサリー",level2_children:["ネックレス", "ブレスレット", "バングル/リストバンド", "リング", "ピアス(片耳用)", "ピアス(両耳用)", "アンクレット", "その他"]},
                                                  {level2:"小物",level2_children:["長財布", "折り財布", "マネークリップ", "コインケース/小銭入れ", "名刺入れ/定期入れ", "キーケース", "キーホルダー", "ネクタイ", "手袋", "ハンカチ", "ベルト", "マフラー", "ストール", "バンダナ", "ネックウォーマー", "サスペンダー", "ウォレットチェーン", "サングラス/メガネ", "モバイルケース/カバー", "手帳", "ストラップ", "ネクタイピン", "カフリンクス", "イヤマフラー", "傘", "レインコート", "ミラー", "タバコグッズ", "その他"]},
                                                  {level2:"時計",level2_children:["腕時計(アナログ)", "腕時計(デジタル)", "ラバーベルト", "レザーベルト", "金属ベルト", "その他"]},
                                                  {level2:"水着",level2_children:["一般水着", "スポーツ用", "アクセサリー", "その他"]},
                                                  {level2:"レッグウェア",level2_children:["ソックス", "レギンス/スパッツ", "レッグウォーマー", "その他"]},
                                                  {level2:"アンダーウェア",level2_children:["トランクス", "ボクサーパンツ", "その他"]},
                                                  {level2:"その他",level2_children:["すべて"]}
                                                 ]
              },
              {level1:"ベビー・キッズ",level1_children:[
                                                  {level2:"ベビー服(女の子用) ~95cm",level2_children:["トップス", "アウター", "パンツ", "スカート", "ワンピース", "ベビードレス", "おくるみ", "下着/肌着", "パジャマ", "ロンパース", "その他"]},
                                                  {level2:"ベビー服(男の子用) ~95cm",level2_children:["トップス", "アウター", "パンツ", "おくるみ", "下着/肌着", "パジャマ", "ロンパース", "その他"]},
                                                  {level2:"ベビー服(男女兼用) ~95cm",level2_children:["トップス", "アウター", "パンツ", "おくるみ", "下着/肌着", "パジャマ", "ロンパース", "その他"]},
                                                  {level2:"キッズ服(女の子用) 100cm~",level2_children:["コート", "ジャケット/上着", "トップス(Tシャツ/カットソー)", "トップス(トレーナー)", "トップス(チュニック)", "トップス(タンクトップ)", "トップス(その他)", "スカート", "パンツ", "ワンピース", "セットアップ", "パジャマ", "フォーマル/ドレス", "和服", "浴衣", "甚平", "水着", "その他"]},
                                                  {level2:"キッズ服(男の子用) 100cm~",level2_children:["コート","ジャケット/上着","トップス(Tシャツ/カットソー)","トップス(トレーナー)","トップス(その他)","パンツ","セットアップ","パジャマ","フォーマル/ドレス","和服","浴衣","甚平","水着","その他"]},
                                                  {level2:"キッズ服(男女兼用) 100cm~",level2_children:["コート", "ジャケット/上着", "トップス(Tシャツ/カットソー)", "トップス(トレーナー)", "トップス(その他)", "ボトムス", "パジャマ", "その他"]},
                                                  {level2:"キッズ靴",level2_children:["スニーカー", "サンダル", "ブーツ", "長靴", "その他"]},
                                                  {level2:"子ども用ファッション小物",level2_children:["靴下/スパッツ", "帽子", "エプロン", "サスペンダー", "タイツ", "ハンカチ", "バンダナ", "ベルト", "マフラー", "傘", "手袋", "スタイ", "バッグ", "その他"]},
                                                  {level2:"おむつ/トイレ/バス",level2_children:["おむつ用品", "おまる/補助便座", "トレーニングパンツ", "ベビーバス", "お風呂用品", "その他"]},
                                                  {level2:"外出/移動用品",level2_children:["ベビーカー","抱っこひも/スリング","チャイルドシート","その他"]},
                                                  {level2:"授乳/食事",level2_children:["ミルク", "ベビーフード", "ベビー用食器", "その他"]},
                                                  {level2:"ベビー家具/寝具/室内用品",level2_children:["ベッド", "布団/毛布", "イス", "たんす", "その他"]},
                                                  {level2:"おもちゃ",level2_children:["おふろのおもちゃ", "がらがら", "オルゴール", "ベビージム", "手押し車/カタカタ", "知育玩具", "その他"]},
                                                  {level2:"行事/記念品",level2_children:["お宮参り用品", "お食い初め用品", "アルバム", "手形/足形", "その他"]},
                                                  {level2: "その他",level2_children:["母子手帳用品", "その他"]}
                                                 ]
              },
              {level1:"インテリア・小物・住まい",level1_children:[
                                                  {level2:"キッチン/食器",level2_children:["食器", "調理器具", "収納/キッチン雑貨", "弁当用品", "カトラリー(スプーン等)", "テーブル用品", "容器", "エプロン", "アルコールグッズ", "浄水機", "その他"]},
                                                  {level2:"ベッド/マットレス",level2_children:["セミシングルベッド", "シングルベッド", "セミダブルベッド", "ダブルベッド", "ワイドダブルベッド", "クイーンベッド", "キングベッド", "脚付きマットレスベッド", "マットレス", "すのこベッド", "ロフトベッド/システムベッド", "簡易ベッド/折りたたみベッド", "収納付き", "その他"]},
                                                  {level2:"ソファ/ソファベッド",level2_children:["ソファセット", "シングルソファ", "ラブソファ", "トリプルソファ", "オットマン", "コーナーソファ", "ビーズソファ/クッションソファ", "ローソファ/フロアソファ", "ソファベッド", "応接セット", "ソファカバー", "リクライニングソファ", "その他"]},
                                                  {level2:"椅子/チェア",level2_children:["一般","スツール","ダイニングチェア","ハイバックチェア","ロッキングチェア","座椅子","折り畳みイス","デスクチェア","その他"]},
                                                  {level2:"机/テーブル",level2_children:["こたつ","カウンターテーブル","サイドテーブル","センターテーブル","ダイニングテーブル","座卓/ちゃぶ台","アウトドア用","パソコン用","事務机/学習机","その他"]},
                                                  {level2:"収納家具",level2_children:["リビング収納","キッチン収納","玄関/屋外収納","バス/トイレ収納","本収納","本/CD/DVD収納","洋服タンス/押入れ収納","電話台/ファックス台","ドレッサー/鏡台","棚/ラック","ケース/ボックス","その他"]},
                                                  {level2:"ラグ/カーペット/マット",level2_children:["ラグ", "カーペット", "ホットカーペット", "玄関/キッチンマット", "トイレ/バスマット", "その他"]},
                                                  {level2:"カーテン/ブラインド",level2_children:["カーテン", "ブラインド", "ロールスクリーン", "のれん", "その他"]},
                                                  {level2:"ライト/照明",level2_children:["蛍光灯/電球","天井照明","フロアスタンド","その他"]},
                                                  {level2:"寝具",level2_children:["布団/毛布", "枕", "シーツ/カバー", "その他"]},
                                                  {level2:"インテリア小物",level2_children:[ "ごみ箱","ウェルカムボード","オルゴール","クッション","クッションカバー","スリッパラック","ティッシュボックス","バスケット/かご","フォトフレーム","マガジンラック","モビール","モビール","花瓶","灰皿","傘立て","小物入れ","置時計","掛時計/柱時計","鏡(立て掛け式)","鏡(壁掛け式)","置物","風鈴","植物/観葉植物","その他"]},
                                                  {level2: "季節/年中行事",level2_children:["正月", "成人式", "バレンタインデー", "ひな祭り", "子どもの日", "母の日", "父の日", "父の日", "サマーギフト/お中元", "夏/夏休み", "ハロウィン", "敬老の日", "七五三", "お歳暮", "クリスマス", "冬一般", "その他"]},
                                                  {level2:"その他",level2_children:["すべて"]}
                                                 ]
              },
              {level1:"本・音楽・ゲーム",level1_children:[
                                                  {level2:"本",level2_children:["文学/小説", "人文/社会", "ノンフィクション/教養", "地図/旅行ガイド", "ビジネス/経済", "ビジネス/経済", "健康/医学", "コンピュータ/IT", "趣味/スポーツ/実用", "住まい/暮らし/子育て", "アート/エンタメ", "洋書", "絵本", "参考書", "その他"]},
                                                  {level2:"漫画",level2_children:["全巻セット", "少年漫画", "少女漫画", "青年漫画", "女性漫画", "同人誌", "その他"]},
                                                  {level2:"雑誌",level2_children:[ "アート/エンタメ/ホビー", "ファッション", "ニュース/総合", "趣味/スポーツ", "その他"]},
                                                  {level2:"CD",level2_children:["邦楽", "洋楽", "アニメ", "クラシック", "K-POP/アジア", "キッズ/ファミリー", "その他"]},
                                                  {level2:"DVD/ブルーレイ",level2_children:["外国映画", "日本映画", "アニメ", "TVドラマ", "ミュージック", "お笑い/バラエティ", "スポーツ/フィットネス", "キッズ/ファミリー", "その他"]},
                                                  {level2:"レコード",level2_children:["邦楽", "洋楽", "その他"]},
                                                  {level2:"テレビゲーム",level2_children:["家庭用ゲーム本体", "家庭用ゲームソフト", "携帯用ゲーム本体", "携帯用ゲームソフト", "PCゲーム", "その他"]}
                                                 ]
              },
              {level1:"おもちゃ・ホビー・グッズ",level1_children:[
                                                  {level2:"おもちゃ",level2_children:["キャラクターグッズ", "ぬいぐるみ", "小物/アクセサリー", "模型/プラモデル", "ミニカー", "トイラジコン", "プラモデル", "ホビーラジコン", "鉄道模型", "その他"]},
                                                  {level2:"タレントグッズ",level2_children:["アイドル", "ミュージシャン", "タレント/お笑い芸人", "スポーツ選手", "その他"]},
                                                  {level2:"コミック/アニメグッズ",level2_children:["キーホルダー","バッジ","カード","クリアファイル","ポスター","タオル","その他"]},
                                                  {level2:"トレーディングカード",level2_children:["遊戯王", "マジック：ザ・ギャザリング", "ポケモンカードゲーム", "デュエルマスターズ", "バトルスピリッツ", "プリパラ", "アイカツ", "カードファイト!! ヴァンガード", "ヴァイスシュヴァルツ", "プロ野球オーナーズリーグ", "ベースボールヒーローズ", "ドラゴンボール", "スリーブ", "その他"]},
                                                  {level2:"フィギュア",level2_children:["コミック/アニメ", "特撮", "ゲームキャラクター", "SF/ファンタジー/ホラー", "アメコミ", "スポーツ", "ミリタリー", "その他"]},
                                                  {level2: "楽器/器材",level2_children:["エレキギター","アコースティックギター","ベース","エフェクター","アンプ","弦楽器","管楽器","鍵盤楽器","打楽器","和楽器","楽譜/スコア","レコーディング/PA機器","DJ機器","DTM/DAW","その他"]},
                                                  {level2:"コレクション",level2_children:["武具", "使用済切手/官製はがき", "旧貨幣/金貨/銀貨/記念硬貨", "印刷物", "ノベルティグッズ", "その他"]},
                                                  {level2:"ミリタリー",level2_children:["トイガン","個人装備","その他"]},
                                                  {level2:"美術品",level2_children:["陶芸", "ガラス", "漆芸", "金属工芸", "絵画/タペストリ", "版画", "彫刻/オブジェクト", "書", "写真", "その他"]},
                                                  {level2:"アート用品",level2_children:["画材","額縁","その他"]},
                                                  {level2:"その他",level2_children:[ "トランプ/UNO", "カルタ/百人一首", "ダーツ", "ビリヤード", "麻雀", "パズル/ジグソーパズル", "囲碁/将棋", "オセロ/チェス", "人生ゲーム", "野球/サッカーゲーム", "スポーツ", "三輪車/乗り物", "ヨーヨー", "模型製作用品", "鉄道", "航空機", "アマチュア無線", "パチンコ/パチスロ", "その他"]}
                                                 ]
              },
              {level1:"コスメ・香水・美容",level1_children:[
                                                  {level2:"ベースメイク",level2_children:["ファンデーション","化粧下地","コントロールカラー","BBクリーム","CCクリーム","コンシーラー","フェイスパウダー","トライアルセット/サンプル","その他"]},
                                                  {level2:"メイクアップ",level2_children:["アイシャドウ", "口紅", "リップグロス", "リップライナー", "チーク", "フェイスカラー", "マスカラ", "アイライナー", "つけまつげ", "アイブロウペンシル", "パウダーアイブロウ", "眉マスカラ", "トライアルセット/サンプル", "メイク道具/化粧小物", "美顔用品/美顔ローラー", "その他"]},
                                                  {level2:"ネイルケア",level2_children:["ネイルカラー", "カラージェル", "ネイルベースコート/トップコート", "ネイルアート用品", "ネイルパーツ", "ネイルチップ/付け爪", "手入れ用具", "除光液", "その他"]},
                                                  {level2:"香水",level2_children:["香水(女性用)", "香水(男性用)", "ユニセックス", "ボディミスト", "その他"]},
                                                  {level2:"スキンケア/基礎化粧品",level2_children:[ "化粧水/ローション", "乳液/ミルク", "美容液", "フェイスクリーム", "洗顔料", "クレンジング/メイク落とし", "パック/フェイスマスク", "ジェル/ゲル", "ブースター/導入液", "アイケア", "リップケア", "トライアルセット/サンプル", "洗顔グッズ", "その他"]},
                                                  {level2:"ヘアケア",level2_children:["シャンプー", "トリートメント", "コンディショナー", "リンス", "スタイリング剤", "カラーリング剤", "ブラシ", "その他"]},
                                                  {level2:"ボディケア",level2_children:["オイル/クリーム", "ハンドクリーム", "ローション", "日焼け止め/サンオイル", "ボディソープ", "入浴剤", "制汗/デオドラント", "フットケア", "その他"]},
                                                  {level2:"オーラルケア",level2_children:["口臭防止/エチケット用品","歯ブラシ","その他"]},
                                                  {level2:"リラクゼーション",level2_children:["エッセンシャルオイル", "芳香器", "お香/香炉", "キャンドル", "リラクゼーショングッズ", "その他"]},
                                                  {level2:"ダイエット",level2_children:["ダイエット食品", "エクササイズ用品", "体重計", "体脂肪計", "その他"]},
                                                  {level2:"その他",level2_children:[ "健康用品","看護/介護用品","救急/衛生用品","その他"]},
                                                 ]
              },
              {level1:"家電・スマホ・カメラ",level1_children:[
                                                  {level2:"スマートフォン/携帯電話",level2_children:[ "スマートフォン本体","バッテリー/充電器","携帯電話本体","PHS本体","その他"]},
                                                  {level2:"スマホアクセサリー",level2_children:["Android用ケース", "iPhone用ケース", "カバー", "イヤホンジャック", "ストラップ", "フィルム", "自撮り棒", "その他"]},
                                                  {level2:"PC/タブレット",level2_children:["タブレット", "ノートPC", "デスクトップ型PC", "ディスプレイ", "電子ブックリーダー", "PC周辺機器", "PCパーツ", "その他"]},
                                                  {level2:"カメラ",level2_children:[ "デジタルカメラ","ビデオカメラ","レンズ(単焦点)","レンズ(ズーム)","フィルムカメラ","防犯カメラ","その他"]},
                                                  {level2:"テレビ/映像機器",level2_children:["テレビ", "プロジェクター", "ブルーレイレコーダー", "DVDレコーダー", "ブルーレイプレーヤー", "DVDプレーヤー", "映像用ケーブル", "その他"]},
                                                  {level2:"オーディオ機器",level2_children:["ポータブルプレーヤー", "イヤフォン", "ヘッドフォン", "アンプ", "スピーカー", "ケーブル/シールド", "ラジオ", "その他"]},
                                                  {level2:"美容/健康",level2_children:[ "ヘアドライヤー","ヘアアイロン","美容機器","電気シェーバー","電動歯ブラシ","その他"]},
                                                  {level2:"冷暖房/空調",level2_children:["エアコン", "空気清浄器", "加湿器", "扇風機", "除湿機", "ファンヒーター", "電気ヒーター", "オイルヒーター", "ストーブ", "ホットカーペット", "こたつ", "電気毛布", "その他"]},
                                                  {level2:"生活家電",level2_children:["冷蔵庫", "洗濯機", "炊飯器", "電子レンジ/オーブン", "調理機器", "アイロン", "掃除機", "エスプレッソマシン", "コーヒーメーカー", "衣類乾燥機", "その他"]},
                                                  {level2:"その他",level2_children:["その他"]}
                                                 ]
              },
              {level1:"スポーツ・レジャー",level1_children:[
                                                  {level2:"ゴルフ",level2_children:["クラブ","ウエア(男性用)","ウエア(女性用)","バッグ","シューズ(男性用)","シューズ(女性用)","アクセサリー","その他"]},
                                                  {level2:"フィッシング",level2_children:["ロッド", "リール", "ルアー用品", "ウエア", "釣り糸/ライン", "その他"]},
                                                  {level2:"自転車",level2_children:["自転車本体","ウエア","パーツ","アクセサリー","バッグ","工具/メンテナンス","その他"]},
                                                  {level2:"トレーニング/エクササイズ",level2_children:["ランニング","ウォーキング","ヨガ","トレーニング用品","その他"]},
                                                  {level2:"野球",level2_children:["ウェア", "シューズ", "グローブ", "バット", "アクセサリー", "防具", "練習機器", "記念グッズ", "応援グッズ", "その他"]},
                                                  {level2:"サッカー/フットサル",level2_children:["ウェア","シューズ","ボール","アクセサリー","記念グッズ","応援グッズ","その他"]},
                                                  {level2:"テニス",level2_children:["ラケット(硬式用)", "ラケット(軟式用)", "ウェア", "シューズ", "ボール", "アクセサリー", "記念グッズ", "応援グッズ", "その他"]},
                                                  {level2:"スノーボード",level2_children:["ボード", "バインディング", "ブーツ(男性用)", "ブーツ(女性用)", "ブーツ(子ども用)", "ウエア/装備(男性用)", "ウエア/装備(女性用)", "ウエア/装備(子ども用)", "アクセサリー", "バッグ", "その他"]},
                                                  {level2:"スキー",level2_children:["板", "ブーツ(男性用)", "ブーツ(女性用)", "ブーツ(子ども用)", "ビンディング", "ウエア(男性用)", "ウエア(女性用)", "ウエア(子ども用)", "ストック", "その他"]},
                                                  {level2:"その他スポーツ",level2_children:["ダンス/バレエ", "サーフィン", "バスケットボール", "バドミントン", "バレーボール", "スケートボード", "陸上競技", "ラグビー", "アメリカンフットボール", "ボクシング", "ボウリング", "その他"]},
                                                  {level2:"アウトドア",level2_children:[ "テント/タープ", "ライト/ランタン", "寝袋/寝具", "テーブル/チェア", "ストーブ/コンロ", "調理器具", "食器", "登山用品", "その他"]},
                                                  {level2:"その他",level2_children:[ "旅行用品","その他"]}
                                                 ]
              },
              {level1:"ハンドメイド",level1_children:[
                                                  {level2:"アクセサリー(女性用)",level2_children:[ "ピアス", "イヤリング", "ネックレス", "ブレスレット", "リング", "チャーム", "ヘアゴム", "アンクレット", "その他"]},
                                                  {level2:"ファッション/小物",level2_children:["バッグ(女性用)", "バッグ(男性用)", "財布(女性用)", "財布(男性用)", "ファッション雑貨", "その他"]},
                                                  {level2:"アクセサリー/時計",level2_children:["アクセサリー(男性用)", "時計(女性用)", "時計(男性用)", "その他"]},
                                                  {level2:"日用品/インテリア",level2_children:["キッチン用品", "家具", "文房具", "アート/写真", "アロマ/キャンドル", "フラワー/ガーデン", "その他"]},
                                                  {level2:"趣味/おもちゃ",level2_children:["クラフト/布製品", "おもちゃ/人形", "その他"]},
                                                  {level2:"キッズ/ベビー",level2_children:["ファッション雑貨", "スタイ/よだれかけ", "外出用品", "ネームタグ", "その他"]},
                                                  {level2:"素材/材料",level2_children:["各種パーツ","生地/糸","型紙/パターン","その他"]},
                                                  {level2:"二次創作物",level2_children:["Ingress","クリエイターズ宇宙兄弟","その他","チケット","すべて"]},
                                                  {level2:"その他",level2_children:["すべて"]}
                                                 ]
              },
              {level1:"チケット",level1_children:[
                                                  {level2:"音楽",level2_children:["男性アイドル", "女性アイドル", "韓流", "国内アーティスト", "海外アーティスト", "音楽フェス", "声優/アニメ", "その他"]},
                                                  {level2:"スポーツ",level2_children:["サッカー", "野球", "テニス", "格闘技/プロレス", "相撲/武道", "ゴルフ", "バレーボール", "バスケットボール", "モータースポーツ", "ウィンタースポーツ", "その他"]},
                                                  {level2:"演劇/芸能",level2_children:["ミュージカル", "演劇", "伝統芸能", "落語", "お笑い", "オペラ", "サーカス", "バレエ", "その他"]},
                                                  {level2:"イベント",level2_children:["声優/アニメ", "キッズ/ファミリー", "トークショー/講演会", "その他"]},
                                                  {level2:"映画",level2_children:["邦画", "洋画", "その他"]},
                                                  {level2:"施設利用券",level2_children:["遊園地/テーマパーク","美術館/博物館","スキー場","ゴルフ場","フィットネスクラブ","プール","ボウリング場","水族館","動物園","その他"]},
                                                  {level2:"優待券/割引券",level2_children:["ショッピング", "レストラン/食事券", "フード/ドリンク券", "宿泊券", "その他"]},
                                                  {level2:"その他",level2_children:["すべて"]}
                                                 ]
              },
              {level1:"自動車・オートバイ",level1_children:[
                                                  {level2:"自動車本体",level2_children:["国内自動車本体", "外国自動車本体"]},
                                                  {level2:"自動車タイヤ/ホイール",level2_children:["タイヤ/ホイールセット","タイヤ","ホイール","その他"]},
                                                  {level2:"自動車パーツ",level2_children:["サスペンション", "ブレーキ", "外装、エアロパーツ", "ライト", "内装品、シート", "ステアリング", "マフラー・排気系", "エンジン、過給器、冷却装置", "クラッチ、ミッション、駆動系", "電装品", "補強パーツ", "汎用パーツ", "外国自動車用パーツ", "その他"]},
                                                  {level2:"自動車アクセサリー",level2_children:["車内アクセサリー","カーナビ","カーオーディオ","車外アクセサリー","メンテナンス用品","チャイルドシート","ドライブレコーダー","レーダー探知機","カタログ/マニュアル","セキュリティ","ETC","その他"]},
                                                  {level2:"オートバイ車体",level2_children:["すべて"]},
                                                  {level2:"オートバイパーツ",level2_children:["タイヤ", "マフラー", "エンジン、冷却装置", "カウル、フェンダー、外装", "サスペンション", "ホイール", "シート", "ブレーキ", "タンク", "ライト、ウィンカー", "チェーン、スプロケット、駆動系", "メーター", "電装系", "ミラー", "外国オートバイ用パーツ", "その他"]},
                                                  {level2:"オートバイアクセサリー",level2_children:[ "ヘルメット/シールド","バイクウエア/装備","アクセサリー","メンテナンス","カタログ/マニュアル","その他"]}
                                                 ]
              },
              {level1:"その他",level1_children:[
                                                  {level2:"まとめ売り",level2_children:["すべて"]},
                                                  {level2:"ペット用品",level2_children:["ペットフード", "犬用品", "猫用品", "魚用品/水草", "小動物用品", "爬虫類/両生類用品", "かご/おり", "鳥用品", "虫類用品", "その他"]},
                                                  {level2:"食品",level2_children:["菓子","米","野菜","果物","調味料","魚介類(加工食品)","肉類(加工食品)","その他 加工食品","その他"]},
                                                  {level2:"飲料/酒",level2_children:["コーヒー", "ソフトドリンク", "ミネラルウォーター", "茶", "ウイスキー", "ワイン", "ブランデー", "焼酎", "日本酒", "ビール、発泡酒", "その他"]},
                                                  {level2:"日用品/生活雑貨/旅行",level2_children:["タオル/バス用品","日用品/生活雑貨","洗剤/柔軟剤","旅行用品","防災関連グッズ","その他"]},
                                                  {level2:"アンティーク/コレクション",level2_children:["雑貨", "工芸品", "家具", "印刷物", "その他"]},
                                                  {level2:"文房具/事務用品",level2_children:["筆記具","ノート/メモ帳","テープ/マスキングテープ","カレンダー/スケジュール","アルバム/スクラップ","ファイル/バインダー","はさみ/カッター","カードホルダー/名刺管理","のり/ホッチキス","その他"]},
                                                  {level2:"事務/店舗用品",level2_children:["オフィス用品一般", "オフィス家具", "店舗用品", "OA機器", "ラッピング/包装", "その他"]},
                                                  {level2:"その他",level2_children:["すべて"]},
                                                 ]
              }
            ]

  categories.each.with_index(1) do |category,i|
    level1_var="@category#{i}"
    level1_val= Category.create(category_name:"#{category[:level1]}")
    eval("#{level1_var} = level1_val")
      category[:level1_children].each.with_index(1) do |level1_child,j|
        level2_var="#{level1_var}_#{j}"
        level2_val= eval("#{level1_var}.children.create(category_name:level1_child[:level2])")
        eval("#{level2_var} = level2_val")
          level1_child[:level2_children].each do |level2_children_val|
            eval("#{level2_var}.children.create(category_name:level2_children_val)")
          end
      end
  end
  brands = ["不明", "A BATHING","APEA.P.C.", "Acne Studios", "ADAM ET ROPÉ", "ADDICTION", "adidas", "Aēsop", "Aetaagnès b.", "AGNONA", "AHKAH", "AKANE UTSUNOMIYA", "AKIKOAOKI", "AKIRANAKA", "ALAÏA", "alain mikli", "ALANUI", "ALBERTA FERRETTI", "ALBION", "ALDEN", "ALETTE BLANC", "Alexander McQueen", "alexanderwang", "ALEXIS MABILLE", "alice + olivia", "alice auaa", "ALLEGE", "AMACA", "AMBELL", "AMBUSH", "ami alexandre mattiussi", "amiu.c", "Amplitude", "ANDERSEN-ANDERSEN", "aniary", "ANN DEMEULEMEESTER", "ANNA SUI", "ANREALAGE", "ANTEPRIMAW", "ANTIPAST", "ANYA HINDMARCH", "Aquascutum", "aramis", "ARC'TERYX", "Arobe", "ASEEDONCLOUD", "ASICS", "atmos", "ato", "ATSUSHI NAKASHIMA", "ATTACHMENT", "AUBERCY", "AUDEMARS PIGUET", "AULA", "AURALEE", "AUTHENTIC SHOE & Co.", "AVIE", "ayâme", "ayame i wear design", "ayumi.mitsukane", "AYURA", "AZUL by moussy", "A|X ARMANI EXCHANGE", "B.A","Baccarat","BALENCIAGA","Bally","BALMAIN","BALMUNG","Barbour","BATONER","BAUM UND PFERDGARTEN","BEAMS","beautiful people","BED J.W. FORD","bedsidedrama","BEDWIN & THE HEARTBREAKERS","Belstaff","BEN TAVERNITI UNRAVEL PROJECT","bench","BERING","Berluti","Bershka","BIRKENSTOCK","BlackWeirdos","blugirl","Blumarine","blurhms","BOBBI BROWN","bodysong.","Bonpoint","Borsalino","BOTANIST","BOTTEGA VENETA","BOUNTY HUNTER","BRACTMENT","Breguet","BREITLING","Brooks Brothers","BRUNELLO CUCINELLI","bubó BARCELONA","bukht","BURBERRY","BUTTERO","BVLGARI","BYREDO",	"Calvin Klein","CAMPER","CANADA GOOSE","CANALI","Candy Stripper","CANMAKE","CAROL CHRISTIAN POELL","Cartier","CARVEN","Cath Kidston","CÉDRIC CHARLIER","CELINE","Celvoke","Champion","CHAN LUU","CHANEL","CHAUMET","Children of the discordance","Chloé","Chopard","Christian Louboutin","CHRISTOPHE LEMAIRE","Christopher Kane","CHROME HEARTS","Chun Shui Tang","Church’s","CINOH","CINQUANTA","CITIZEN","CIVILIZED","CLANE","CLARINS","CLAUDIA LI","clé de peau Beauté","CLINIQUE","CMMN SWDN","COACH","Coci la elle","coeur","COFFRET D'OR","Columbia","COMESANDGOES","COMME des GARÇONS","COMOLI","CONVERSE","Coohem","COS","CoSTUME NATIONAL","COVERMARK","Credor","CROCKETT&JONES","Cruciani","CULLNI","CUNE","CYCLAS","D’URBAN","DAKS","Daniel&Bob","DE LA MER","DECORTÉ","DEMEL","DENHAM","DEREK LAM","DESCENTE","DIANA","DIANE von FURSTENBERG","Dickies","DIESEL","DIESEL BLACK GOLD","DIET BUTCHER SLIM SKIN","DIGAWEL""DIOR","DIOR HOMME","diptyque","discord Yohji Yamamoto","DISCOVERED","DITA","divka","DOLCE&GABBANA","DOMENICO+SAVIO","Donnah Mabel","doublet","Dr.Martens","DRESSEDUNDRESSED","DRIES VAN NOTEN","DSQUARED2","DUELLUM","dunhill","DUVETICA","e.m.","EACH OTHER","EBONY","ED ROBERT JUDSON","EDWARD GREEN","EDWIN","EFFECTEN","EFILEVOL","Eggs 'n Things","elephant TRIBAL fabrics","ELISABETTA FRANCHI","Elizabeth and James","EMILIO PUCCI","Emily Temple cute","EMMETI","emmi","EMPORIO ARMANI","ENFÖLD","ENGINEERED GARMENTS","Enharmonic TAVERN","EPOCA","EQUIPMENT","ERDEM","ERMANNO SCERVINO","Ermenegildo Zegna","ESPRIQUE","est","Estée Lauder","ESTNATION","ETHOSENS","ETRO","Ezumi","F-LAGSTUF-F","FABIANA FILIPPI","FACETASM","FACTOTUM","FAGASSENT","Faliero Sarti","FENDI","FILA","FILL THE BILL","FilMelange","FIVEISM × THREE","FLICKA","FLUMOR","foot the coacher","FOOTSTOCK ORIGINALS","forte_forte","fragment design","Francfranc","Frank & Eileen","FRANK LEDER","FRAPBOIS","FRAY I.D","FRED PERRY","Fulton","FUMIE TANAKA","FUMIKA_UCHIDA","FUMITO GANRYU","FURFUR","FURLA","G-SHOCK","G-Star RAW","G.V.G.V.","GalaabenD","GAP","gelato pique","giab’s ARCHIVIO","GIANFRANCO FERRE","Gion Tsujiri","Giorgio Armani","GIORGIO BRATO","GIUSEPPE ZANOTTI","Givenchy","glamb","GODIVA","GOLDEN GOOSE DELUXE BRAND","gomme","Gosha Rubchinskiy","Goutal","GOYARD","GRACE CONTINENTAL","Graphpaper","GREGORY","GU","GUACAMOLE","GUCCI","GUERLAIN","GUESS","H&M","h.NAOTO","ha | za | ma","Häagen-Dazs","HaaT","HACCI","HAIDER ACKERMANN","Happy Socks","HARE","Harikae","HARRY WINSTON","HATRA","HAVERSACK","HELEN KAMINSKI","HELENA RUBINSTEIN","Hender Scheme","Henri Charpentier","HENRI LE ROUX","HENRIK VIBSKOV","HERMÈS","HERNO","HERON PRESTON","HIROFU","HIROKO BIS","HIROKO KOSHINO","HISUI HIROKO ITO","HOLIDAY","HTC","HUBLOT","HUF","HUGO BOSS","HUNTER","HUNTING WORLD","HYKE","HYSTERIC GLAMOUR","Ice-Watch","ID DAILYWEAR","ikea","IKUMI","IL BISONTE","IN-PROCESS Tokyo","INCOTEX","INDIVIDUALIZED SHIRTS","INVERALLAN","IPSA","Iroquois","ISABEL MARANT","ISAMU KATAYAMA　BACKLASH","ISSEY MIYAKE","IWC","J.Crew","J.M. WESTON","JACOB COHEN","JAM HOME MADE","JAMES PERSE","Jane Marple","JANE SMITH","JASON WU","JEAN PAUL GAULTIER","JEAN-PAUL HÉVIN","Jeffrey Campbell","Jenny Fax","Jens","JieDa","JIL SANDER","JILLSTUART","JIMMY CHOO","JINS","JO MALONE LONDON","Jocomomola","Johan Ku","John Galliano","JOHN LAWRENCE SULLIVAN","JOHN LOBB","JOHN MASON SMITH","john masters organics","JOHN SMEDLEY","JOHNBULL","JOHNSTONS","JOSEPH HOMME","JOTARO SAITO","JOURNAL STANDARD","JUHA","Julien David","JULIUS","junhashimoto","JUNYA WATANABE COMME des GARÇONS","Just Cavalli","JUUN.J","JUVENILE HALL ROLLCALL","JW Anderson","J＆M DAVIDSON","k3&co.","KAMILi","KAMISHIMA CHINAMI","KANEBO","Kappa","KAREN WALKER","karrimor","KATE","kate spade new york","Kazuki Nagayama","KAZUYUKI KUMAGAI","KEISUKEYOSHIDA","KEITA MARUYAMA","KENZO","KICS DOCUMENT.","KIDILL","KIEHL'S SINCE 1851","KIIT","KIJIMA TAKAYUKI","KINO","Kirov","KITH","Kiwanda","KOCHÉ","kolor","KOTONA","KRIZIA","kujaku","KURO","K三","L’OCCITANE","LA MAISON DU CHOCOLAT","LACOSTE","LAD MUSICIAN","Ladurée","Laline","Lancôme","LANVIN","LANVIN COLLECTION","LANVIN en Bleu","LAPS","LARDINI","laura mercier","Lautashi","Le Creuset","Lee","Leilian","LEONARD","LeSportsac","leur logette","Levi’s","Levi's Vintage Clothing","LIAM HODGES","LIBERUM","Licht Bestreben","LIMI feu","LISSAGE","LITTLEBIG","LOEWE","LOKITHO","LONGCHAMP","LONGINES","Loro Piana","lot holon","LOUIS VUITTON","lucien pellat-finet","LUIGI BORRELLI","LUNASOL","LUSH","M A S U","m’s braque","MACKINTOSH","MACKINTOSH PHILOSOPHY","MAGINE","Maison Boinet","MAISON KITSUNÉ","Maison Margiela","Maison MIHARA YASUHIRO","MAJOLICA MAJORCA","Mame Kurogouchi","mando","Manhattan Portage","Mannequins JAPON","Manolo Blahnik","MAQuillAGE","MARC JACOBS","MARCELO BURLON COUNTY OF MILAN","MARGARET HOWELL","marimekko","MARINA RINALDI","MARKAWARE","MARNI","master-piece","masterkey","mastermind JAPAN","matohu","MAX BRENNER","Max Mara","McQ Alexander McQueen","meagratia","meanswhile","MEDICOM TOY","MELLERIO dits MELLER","mercibeaucoup,","MESSIKA","Metaphor…","MICHAEL KORS","MIDDLA","MIDIUMISOLID","MIDWEST","MIKIMOTO","MIKIO SAKABE","Mila Schoen","MILK","MILKBOY","MILLY","MiMC","minä perhonen","MINEDENIM","Minimal","mintdesigns","Missoni","MISTERGENTLEMAN","MIU MIU","MIYAO","MIZUNO","MM6 Maison Margiela","MONCLER","monkey time","MONTBLANC","MooRER","MOREAU PARIS","MOSCHINO","MOSCOT","motonari ono","MOUSSY","MSGM","MULBERRY","muller of yoshiokubo","MURRAL","MUVEIL","MUZE","MW","my beautiful landlet","my panda","MYKITA","MY___","M·A·C","N.HOOLYWOOD","N21","NAIFE","NAILS INC","NAISSANCE","Name.","nanamica","NARS","Né-net","near.nippon","NEEDLES","NEHERA","NEIGHBORHOOD","Neil Barrett","NEON SIGN","nésessaire","New Balance","NEW ERA","Nicolai Bergmann Flowers & Design","Nigel Cabourn","NIKE","niko and …","NILøS","NINA RICCI","NIWAKA","NIXON","noir kei ninomiya","NON TOKYO","nonnative","Norwegian Rain","nude:masahiko maruyama","nuterm","O project","OAMC","OFF-WHITE c/o VIRGIL ABLOH","OFFICINE UNIVERSELLE BULY","ohta","OKIRAKU","OLIVER GOLDSMITH","OLIVER PEOPLES","OLIVIA BURTON","OMEGA","Onitsuka Tiger","OPENING CEREMONY","OPERA","Oscar de la Renta","OVERCOAT","PABLO","paco rabanne","PALACE SKATEBOARDS","Palm Angels","PAMEO POSE","PARADOX","Paratiisi","pas de calais","PASS THE BATON","Patagonia","Patek Philippe","pâtisserie Sadaharu AOKI paris","PAUL & JOE","Paul Smith","Paul Stuart","PAULE KA","PEACH JOHN","PELLICO","PENHALIGON’S","PETIT BATEAU","PHEENY","PHILIPPE MODEL","PHILOSOPHY","PHINGERIN","Pierre Cardin","PIERRE HARDY","PIERRE HERMÉ PARIS","Pierre Marcolini","PIGALLE","POLA","PORTER","PORTS 1961","PRADA","Pringle of Scotland","Proenza Schouler","PUMA","Q\-pot\.","Qu\'il fait bon","RAF SIMONS","rag & bone","RAINMAKER","Ralph Lauren","Rawtus","Ray BEAMS","Ray-Ban","RBTXCO","READYMADE","REDValentino","Reebok","REGAL","REKISAMI","Repetto","REVLON","Rick Owens","RIMMEL","RIMOWA","RIPVANWINKLE","RMK","rms beauty","roarguns","roberto cavalli","roberto collina","robes&confections","ROCHAS","Roen","Roger Vivier","ROGER&GALLET","ROLEX","Ron Herman","Room no.8","Royal Copenhagen","RPKO","RUMBLE RED","RYOUTA MURAKAMI","S.T. Dupont","SABON","sacai","SAGE DE CRET","sakayori.","Salvatore Ferragamo","Salvatore Piccolo","salvy;","Samsonite","Samuji","SANTONI","Sasquatchfabrix.","SATOKO OZAWA","Saturdays NYC","SAYAKA DAVIS","SCAPA","SCOTCH GRAIN","Scye","See By Chloé","SEIKO","semoh","SERGE de bleu","Sergio Rossi","SHAREEF","SHE Tokyo","SHIATZY CHEN","SHIHARA","Shirley Temple","SHIRO","SHIROMA","SHISEIDO","shu uemura","SHURON","Sise","SK-II","sneeuw","SNIDEL","Snow Peak","soe","SOFINA Primavista","SOMARTA","SOPHNET.","SOUTH2 WEST8","SPECTUSSHOECO.","SPORTMAX","Sretsis","STAIR","STAR JEWELRY","Starbucks","Stella Jean","STELLA McCARTNEY","STEPHAN SCHNEIDER","STOF","STONE ISLAND","STUDIO NICHOLSON","STUDIO SEVEN","STUDIOUS","STÜSSY","SUICOKE","sulvam","SUNAOKUWAHARA","SUPP.","support surface","Supreme","SUQQU","suzuki takayuki","SWAROVSKI","Swatch","TAAKK","tac:tac","TADASHI SHOJI","TAE ASHIDA","TAG Heuer","TAGLIATORE","TAION","TAKAHIROMIYASHITATheSoloist.","talkative","TAN","TARO HORIUCHI","TASAKI","TATRAS","TEÄTORA","Tendence","Teva","THE BODY SHOP","THE Dallas","THE KEIJI","The Letters","THE NERDYS","THE NORTH FACE","THE RERACS","THE ROW","The Viridi-anne","THEATRE PRODUCTS","Theory","THOM BROWNE","THREE","three dots","tibi","Tiffany & Co.","tiit tokyo","Timberland","TINKERBELL","TOCCA","TOD’S","TOGA","TOKUKO 1er Vol","TOM FORD","TOMMY HILFIGER","TOMORROWLAND","TOMWOOD","TOPMAN","TOPSHOP","TOPSHOP UNIQUE","TORAYA","TORY BURCH","Traditional Weatherwear","Tricker’s","Triumph","TROVE","TRUSSARDI","TSUCHIYA KABAN","TSUMORI CHISATO","UGG","Ujoh","uka","UNDECORATED","UNDEFEATED","UNDERCOVER","uniform experiment","UNIQLO","UNITED ARROWS","UNITED NUDE","UNITED STANDARD","UNITED TOKYO","UNITUS","UNUSED","URBAN RESEARCH","URU","VACHERON CONSTANTIN","VAINL ARCHIVE","VALENTINO","Van Cleef & Arpels","vanessabruno","VANS","VENDOME AOYAMA","Veritecoeur","VERSACE","Versus Versace","VETEMENTS","VICTIM","VIKTOR & ROLF","Visée","visvim","VIVIANO SUE","Vivienne Westwood","WACKO MARIA","WACOAL","WEDGWOOD","WEWILL","WEYEP","White Mountaineering","Whitehouse Cox","WHIZ LIMITED","wizzard","wjk","wonderland","WOOLRICH","WRAPINKNOT","X-girl","XLARGE","Y’s","Y-3","YAECA","YEAH RIGHT!!","YOHEI OHNO","Yohji Yamamoto","YOKE","YOKO CHAN","yoshie inaba","yoshiokubo","you ozeki","YUKI","YUKI TORII","YUKIHERO PRO-WRESTLING","YUMA KOSHINO","YVAN VALENTIN","Yves Saint Laurent","Yves Salomon","ZANELLATO","ZARA","ZERO HALLIBURTON","Zoff","ZUCCa","08sircus","1/2 Un-Demi","1017 ALYX 9SM","3.1 Phillip Lim","4℃","5-knot…..","999.9"]
  brands.each do |brand|
    Brand.create(brand_name: "#{brand}")
  end