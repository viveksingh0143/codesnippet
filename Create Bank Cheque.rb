require 'prawn'

Prawn::Document.generate("page_size.pdf", :margin => 0, :page_size => [810, 360]) do
  logopath = "C:/Users/30198.HTMEDIA/Desktop/1.jpg"
  # Displays the image in your PDF. Dimensions are optional.
  image logopath, :width => 810, :height => 360
  
  def absolute_bounding_box
    box = bounding_box
    box[0] += @document.bounds.absolute_left
    box[2] += @document.bounds.absolute_left
    box[1] += @document.bounds.absolute_bottom
    box[3] += @document.bounds.absolute_bottom
    box
  end
  character_spacing(13) do
    draw_text('29122014', :at => [(bounds.right-184), (bounds.top - 33)])
  end

  draw_text('Hindustan Times Media Private Limited', :kerning => true, :at => [(bounds.left+65), (bounds.top - 88)])

  bounding_box([(bounds.left+65), (bounds.top - 113)], :width => 511, :height => 55) do
   text('Hindustan Times Media Private Limited Hindustan Times Media Private Limited Hindustan Times Media Private Limited Hindustan Times Media Private Limited', :indent_paragraphs => 60, :leading => 20, :kerning => true)
  end

  bounding_box([(bounds.right-182), (bounds.top - 123)], :width => 144, :height => 32) do
    text('5000000', :valign => :center, size: 14, :character_spacing => 1)
  end

  character_spacing(3) do
    draw_text('A/C Payee', :at => [(bounds.left + 10), (bounds.top - 70)], :rotate => 45, :stroke_width => 1)
  end
  
  stroke do
    line_width 1
    line [(bounds.left), (bounds.top - 65)], [(bounds.left+65), (bounds.top)]
    line [(bounds.left), (bounds.top - 83)], [(bounds.left+83), (bounds.top)]
  end
end
