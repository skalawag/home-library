module ApplicationHelper
  def fix_author_names(names_list)
    names = names_list.map { |name| name.split.map(&:capitalize).join(" ") }
    if names_list.length > 1
      names[0] = last_name_first(names[0])
      names.join("; ")
    else
      last_name_first(names.first)
    end
  end

  def last_name_first(name)
    name.split.reverse.join(", ")
  end

  def fix_book_title(title)
    title.split.map(&:capitalize).join(" ")
  end
end
