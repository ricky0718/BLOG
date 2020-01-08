class Entrycategory < ActiveHash::Base
  self.data = [
    {id: 1, name: '筋肉'},
    {id: 2, name: '筋トレ'}, 
    {id: 3, name: 'プロテイン'},
    {id: 4 , name: 'その他'}
  ]
end