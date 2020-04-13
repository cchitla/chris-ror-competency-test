module ArticlesHelper

  def user_buttons(article)
    if logged_in? :editor and article.user.email == current_user.email
      capture do
        concat link_to "Edit", edit_article_path(article), class: 'btn btn-warning mx-1'
        concat link_to 'Delete', article, data: { confirm: 'Are you sure?'}, method: :delete, class: 'btn btn-danger ml-1'
      end
    end
  end

end
