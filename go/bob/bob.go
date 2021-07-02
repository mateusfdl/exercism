
package bob

import "strings"

// Hey should have a comment documenting it.
func Hey(remark string) string {
	trimRemark := strings.TrimSpace(remark)

	switch {
	  case trimRemark == "":
	    return "Fine. Be that way!"
	  case isUpperCase(trimRemark) && strings.HasSuffix(trimRemark, "?"):
	    return "Calm down, I know what I'm doing!"
	  case isUpperCase(trimRemark):
	    return "Whoa, chill out!"
	  case strings.HasSuffix(trimRemark, "?"):
	    return "Sure."
	  default: 
	    return "Whatever."
	}
}


func isUpperCase(remark string) bool {
  return someLetter(remark) && strings.ToUpper(remark) == remark;
}

func someLetter(remark string) bool {
  return strings.ToUpper(remark) != strings.ToLower(remark)
}

