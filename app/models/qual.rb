class Qual < ActiveHash::Base
  self.data = [
    { id: 1, name: '＜IT・パソコン＞' },
    { id: 2, name: 'ITパスポート' },
    { id: 3, name: 'マイクロソフトオフィススペシャリスト' },
    { id: 4, name: '基本情報技術者試験' },
    { id: 5, name: 'その他（IT・パソコン）' },
    { id: 6, name: '＜食・料理＞' },
    { id: 7, name: '食生活アドバイザー' },
    { id: 8, name: '栄養士' },
    { id: 9, name: 'その他（食・料理）' },
    { id: 10, name: '＜金融・法律＞' },
    { id: 11, name: '日商簿記検定' },
    { id: 12, name: 'ファイナンシャル・プランナー' },
    { id: 13, name: '公認会計士' },
    { id: 14, name: 'その他（金融・法律）' },
    { id: 15, name: '＜美容・ファッション＞' },
    { id: 16, name: '日本化粧品検定' },
    { id: 17, name: 'ファッション色彩能力検定' },
    { id: 18, name: 'その他（美容・ファッション）' },
    { id: 19, name: '＜サービス・冠婚葬祭＞' },
    { id: 20, name: '旅行管理主任者' },
    { id: 21, name: 'サービス待遇検定' },
    { id: 22, name: '冠婚葬祭マナー検定' },
    { id: 23, name: 'その他（サービス・冠婚葬祭）' },
    { id: 24, name: '＜生物・環境＞' },
    { id: 25, name: '環境社会検定試験（eco検定）' },
    { id: 26, name: '気象予報士' },
    { id: 27, name: '愛玩動物飼養管理士' },
    { id: 28, name: 'トリマー' },
    { id: 29, name: 'その他（生物・環境）' },
    { id: 30, name: '＜公務員・教育＞' },
    { id: 31, name: '保育士' },
    { id: 32, name: '公務員試験' },
    { id: 33, name: 'TOEIC' },
    { id: 34, name: 'TOEFL' },
    { id: 35, name: 'その他（公務員・教育）' },
    { id: 36, name: '＜乗り物＞' },
    { id: 37, name: '自動車運転免許' },
    { id: 38, name: '潜水士' },
    { id: 39, name: '運行管理者' },
    { id: 40, name: 'その他（乗り物）' },
    { id: 41, name: '＜技能・工業＞' },
    { id: 42, name: '危険物取扱者' },
    { id: 43, name: '電気工事士' },
    { id: 44, name: '消防設備士' },
    { id: 45, name: 'その他（技能・工業）' }
  ]

  include ActiveHash::Associations
  has_many :questions

end