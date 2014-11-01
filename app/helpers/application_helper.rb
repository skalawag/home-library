module ApplicationHelper
  def author_names(names_list)
    if names_list.length > 1
      names = names_list.map { |name| name.split.map(&:capitalize).join(" ") }
      names.join(", ")
    else
      names_list.map { |name| name.split.map(&:capitalize).join(" ") }.first
    end
  end

  def book_title(title)
    title.split.map(&:capitalize).join(" ")
  end
end
