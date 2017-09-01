<html>
  <body>
   <table border="1">
     <tr><th>Target</th>
	     <th>Successor</th>
		 <th>Frequency</th></tr>
          {
           let $string_has := "has",
		       $words := doc("wordspeech.xml")//w[lower-case(normalize-space()) = $string_has]
           for $distint_words in distinct-values($words/lower-case(normalize-space(following-sibling::w[1])))
		   let $num_words := $words/lower-case(normalize-space(following-sibling::w[1]))[. = $distint_words]
		   order by count($num_words) descending
		   return
		   <tr>
		     <td> { $string_has } </td>
			 <td> { $distint_words } </td>
			  <td> { count($num_words) } </td>
            </tr>
		  }
		 </table>
    </body>
</html>
