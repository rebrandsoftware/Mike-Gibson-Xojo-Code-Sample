#tag Module
Protected Module modGraphics
	#tag Method, Flags = &h0
		Function drawBorder(g as graphics) As Graphics
		  g.ForeColor = color.black
		  g.PenHeight = 1
		  g.PenWidth = 1
		  
		  dim x1, y1, x2, y2 as integer
		  
		  //top
		  x1 = 0
		  y1 = 0
		  x2 = g.width
		  y2 = 0
		  g.DrawLine(x1, y1, x2, y2)
		  
		  //left
		  x1 = 0
		  y1 = 0
		  x2 = 0
		  y2 = g.Height 
		  g.DrawLine(x1, y1, x2, y2)
		  
		  //bottom
		  x1 = 0
		  y1 = g.Height - 1
		  x2 = g.width
		  y2 = g.Height - 1
		  g.DrawLine(x1, y1, x2, y2)
		  
		  //right
		  x1 = g.width - 1
		  y1 = 1
		  x2 = g.width - 1
		  y2 = g.Height - 1
		  g.DrawLine(x1, y1, x2, y2)
		  
		  
		  return g
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function drawCircle(p as Picture, innerColor as color, outerColor as color) As Picture
		  dim r as new random
		  dim radius as integer
		  dim min as integer
		  dim max as integer
		  dim x as integer
		  dim y as integer
		  dim opac as integer
		  min = p.Width / 100
		  max = p.Width / 10
		  
		  radius = r.InRange(min, max)
		  
		  opac = r.InRange(25, 100)
		  
		  x = r.InRange(0, p.Width)
		  y = r.InRange(0, p.Height)
		  
		  dim os as OvalShape
		  
		  os = new OvalShape
		  os.BorderColor = outerColor
		  os.BorderWidth = 10
		  os.FillColor = innerColor
		  os.FillOpacity = opac
		  os.Height = radius
		  os.Width = radius
		  os.X = x
		  os.Y = y
		  
		  p.graphics.DrawObject(os)
		  return p
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function drawFillColor(p as Picture, fillColor as color) As Picture
		  p.graphics.DrawingColor = fillColor
		  //p.Graphics.DrawRectangle(0, 0, p.Width, p.Height)
		  
		  dim rs as new RectShape
		  rs.Width = p.Width
		  rs.Height = p.Height
		  rs.Border = 0
		  
		  rs.FillColor = fillColor //RGB(0, 255, 0) // green
		  rs.BorderWidth = 0
		  rs.Rotation = 0
		  rs.X = 0
		  rs.Y = 0
		  
		  p.Graphics.DrawObject(rs)
		  
		  return p
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function drawFooter(p as Picture, s as string, textColor as color) As Picture
		  dim r as new random
		  dim x, y as integer
		  dim fontSize as integer = 60
		  
		  
		  x = 20
		  y = p.Height - 100
		  p.Graphics.FontSize = fontSize
		  p.Graphics.DrawingColor = textColor
		  p.Graphics.DrawText(s, x, y)
		  
		  return p
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function drawLine(p as Picture, lineColor as color) As Picture
		  dim r as new random
		  
		  dim x1, y1, x2, y2 as integer
		  dim thick as integer
		  
		  thick = r.InRange(1, 10)
		  
		  x1 = r.InRange(20, p.Width - 20)
		  y1 = r.InRange(20, p.Height - 20)
		  
		  x2 = r.InRange(x1 + 10, p.Width)
		  y2 = r.InRange(y1 + 10, p.Height)
		  
		  p.Graphics.PenSize = thick
		  p.Graphics.DrawingColor = lineColor
		  
		  //draw the line
		  p.Graphics.DrawLine(x1,y1,x2,y2)
		  
		  return p
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function drawText(p as Picture, s as string, textColor as color, optional bSmall as Boolean = false) As Picture
		  dim r as new random
		  dim x, y as integer
		  dim fontSize as integer
		  dim quarterX, quarterY as integer
		  dim halfX, halfY as integer
		  
		  if bSmall = false then
		    //default, big
		    fontSize= r.InRange(240, 480)
		  else
		    fontSize= r.InRange(40, 180)
		  end if
		  
		  halfX = p.Width / 2
		  halfY = p.Width / 2
		  
		  quarterX = halfX / 2
		  quarterY = halfY / 2
		  
		  x = r.InRange(0, quarterX)
		  y = r.InRange(quarterY, halfY + quarterY)
		  p.Graphics.FontSize = fontSize
		  p.Graphics.DrawingColor = textColor
		  p.Graphics.DrawText(s, x, y)
		  
		  return p
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub pictureToCanvas(myPicture as Picture, myCanvas as canvas)
		  'Draws a picture to scale within a given canvas
		  
		  dim resized as Picture
		  resized = myPicture.resizeImage(myCanvas.width, myCanvas.Height, true, myCanvas.width, myCanvas.height)
		  myCanvas.Backdrop = resized
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function resizeImage(extends p as picture, width as integer, height as integer, keepProportions as boolean, optional noBiggerThanW as integer = 0, optional noBiggerThanH as integer = 0, optional centerHorizontal as boolean = true, optional centerVertical as boolean = false) As picture
		  // Return a resized image for a picture.
		  // The image will maintain its width / height proportions if keepProportions is set.
		  
		  dim thumb as picture
		  dim w, h as double
		  dim ratio as double
		  dim xs, ys as double
		  dim mask as Picture
		  dim mask2 as picture
		  
		  mask = p.CopyMask
		  
		  // Determine the new width and height if we are keeping proportions
		  if keepProportions = true then
		    if p.width > p.height then
		      ratio = width / p.width
		    else
		      ratio = height / p.height
		    end
		    w = p.width * ratio
		    h = p.height * ratio
		    
		  else
		    w = width
		    h = height
		    
		  end
		  
		  if noBiggerThanH > 0 or noBiggerThanW > 0 then
		    
		    while w > noBiggerThanW or h > noBiggerThanH
		      xs = (w / 50) * ratio
		      ys = (h / 50) * ratio
		      if xs = 0 then xs = 1
		      if ys = 0 then ys = 1
		      w = w - xs
		      h = h - ys
		    wend
		    
		  end if
		  
		  // Draw resized image
		  
		  dim left as integer = 0
		  dim top as integer = 0
		  
		  if centerHorizontal = true then
		    left = (width - w) / 2
		  end if
		  
		  if centerVertical = true then
		    top = (height - h) / 2
		  end if
		  
		  thumb = new picture( width, h, 32 )
		  thumb.graphics.drawPicture p, left, top, w, h , 0, 0, p.width, p.height
		  
		  if mask <> nil then
		    mask2 = new Picture( width, h, 32 )
		    mask2.graphics.drawPicture mask, left, top, w, h , 0, 0, mask.Width, mask.Height
		    thumb.Mask = mask2
		  end if
		  
		  return thumb
		  
		End Function
	#tag EndMethod


End Module
#tag EndModule
