- 追加したGemは以下
    - gem 'bootstrap-sass', '~> 3.3.7'
    - gem 'devise'
    - gem 'jquery-rails'
    - gem 'toastr'
    
- app/assets/javascript/application.js    
```
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
```
- app/assets/stylesheets/application.scss
```
@import "bootstrap-sprockets";
@import "bootstrap";
```
# css
- セレクタ セレクタ
    - 子孫要素にスタイル適用
- セレクタ>セレクタ
    - 子要素のみスタイル適用

- :(Class) 擬似クラス
    - アクションが発生した時とか
    - scssの場合,&:(class)
    
- タグ
    - \<hr> : 水平線
     
- width ~~％
    - 親クラスに対する割合
- bootstrap colの基本    
    - class = “col-{prefix}-{columns}”
    - class = {columns}は合計が12 
    - class = rowの中に書く

# rails 
- コントローラ名は複数
flash[:notice] = "Signed in successfully."   
f[0] = :notice ,f[1] = ':Signed in successfully." 

文字列で正規表現パターンに一致したものをリプレイス
str.gsub(pattern, replacement)
```    
<% flash.each do |f| %>
<% type = f[0].to_s.gsub('alert','error').gsub('notice','info') %>
toastr['<%= type %>']('<%= f[1] %>');
```
toastr.info('Are you the 6 fingered man?')

- resources
    - RESTfulかつ標準的なアクション(index/create/new/edit/show/update/destroy)のルーティングを自動生成
    - id有り
- resource
    - idを参照すること無いとき使う    
    - 共通のページ
    

# TODO
- current_user.providerとは
- devise_for
- model g user:references
- has_many belongstoの関係
- beforeaction :authenticate_user!
