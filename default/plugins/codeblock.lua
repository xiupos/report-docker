function CodeBlock(el)
  -- screen
  if el.classes[1] == "tikz" then
    body = table.concat({
      "\\begin{figure}",
      "\\centering",
      "\\begin{tikzpicture}",
      el.text,
      "\\end{tikzpicture}",
      "\\end{figure}",
    }, "\n")
    return pandoc.RawBlock("latex", body)
  end
  return el
end
