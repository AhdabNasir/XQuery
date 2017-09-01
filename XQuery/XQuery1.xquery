<html>
  <body>
   <table border="1">
     <tr><th>Target</th>
	     <th>Successor</th></tr>
          {
           for $words in doc("wordspeech.xml")//w
           let $string_has := 'has',
		       $word := normalize-space(lower-case($words)),
			   $next_word := $words/following-sibling::w[1],
			   $following := normalize-space(lower-case($next_word))
		   where $word = $string_has
		   return
		   <tr>
		     <td> { $word } </td>
			 <td> { $following } </td>
            </tr>
		  }
		 </table>
    </body>
</html>
