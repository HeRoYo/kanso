class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '本・マンガ' },
    { id: 3, name: '本・小説' },
    { id: 4, name: '本・その他' },
    { id: 5, name: '映像・映画' },
    { id: 6, name: '映像・アニメ' },
    { id: 7, name: '映像・ドラマ' },
    { id: 8, name: '映像・その他' }
  ]

  include ActiveHash::Associations
  has_many :posts
  end