class AddCnToArticles < ActiveRecord::Migration[6.0]
  def change
  	 add_column :articles, :title_cn, :string
  	 add_column :articles, :subtitle_cn, :string
  	 add_column :articles, :content_cn, :text
  end
end
