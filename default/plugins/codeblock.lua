function CodeBlock(el)
  -- screen
  if el.classes[1] == "tikz" then
    body = table.concat({
      "\\begin{figure}",
      "\\centering",
      el.text,
      "\\end{figure}",
    }, "\n")
    return pandoc.RawBlock("latex", body)
  else if el.classes[1] == "feynmf" then
    body = table.concat({
      "\\begin{figure}",
      "\\centering",
      el.text,
      "\\end{figure}",
    }, "\n")
    return pandoc.RawBlock("latex", body)
  end
  return el
end
