module Features
  def display_todo(todo_title)
    have_css '.todos li', text: todo_title
  end
end
