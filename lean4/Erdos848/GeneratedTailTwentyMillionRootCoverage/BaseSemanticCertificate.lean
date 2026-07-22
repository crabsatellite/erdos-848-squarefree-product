import Erdos848.GeneratedTailTwentyMillionRootCoverage.BaseSemanticGroup0000
import Erdos848.GeneratedTailTwentyMillionRootCoverage.BaseSemanticGroup0001
import Erdos848.GeneratedTailTwentyMillionRootCoverage.BaseSemanticGroup0002
import Erdos848.GeneratedTailTwentyMillionRootCoverage.BaseSemanticGroup0003
import Erdos848.GeneratedTailTwentyMillionRootCoverage.BaseSemanticGroup0004
import Erdos848.GeneratedTailTwentyMillionRootCoverage.BaseSemanticGroup0005
import Erdos848.GeneratedTailTwentyMillionRootCoverage.BaseSemanticGroup0006
import Erdos848.GeneratedTailTwentyMillionRootCoverage.BaseSemanticGroup0007
import Erdos848.GeneratedTailTwentyMillionRootCoverage.BaseSemanticGroup0008
import Erdos848.GeneratedTailTwentyMillionRootCoverage.BaseSemanticGroup0009
import Erdos848.GeneratedTailTwentyMillionRootCoverage.BaseSemanticGroup0010
import Erdos848.GeneratedTailTwentyMillionRootCoverage.BaseSemanticGroup0011
import Erdos848.GeneratedTailTwentyMillionRootCoverage.BaseSemanticGroup0012
import Erdos848.GeneratedTailTwentyMillionRootCoverage.BaseSemanticGroup0013
import Erdos848.GeneratedTailTwentyMillionRootCoverage.BaseSemanticGroup0014
import Erdos848.GeneratedTailTwentyMillionRootCoverage.BaseSemanticGroup0015

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

theorem rootBaseWords_pass
    (row : Erdos848.TwentyMillionRootRow) (squareCoset : Bool) :
    Erdos848.twentyMillionRootBaseWordsPassesWith
      rootBaseWords row squareCoset = true := by
  cases row <;> cases squareCoset
  · exact rootBaseWordsPass0000
  · exact rootBaseWordsPass0001
  · exact rootBaseWordsPass0002
  · exact rootBaseWordsPass0003
  · exact rootBaseWordsPass0004
  · exact rootBaseWordsPass0005
  · exact rootBaseWordsPass0006
  · exact rootBaseWordsPass0007
  · exact rootBaseWordsPass0008
  · exact rootBaseWordsPass0009
  · exact rootBaseWordsPass0010
  · exact rootBaseWordsPass0011
  · exact rootBaseWordsPass0012
  · exact rootBaseWordsPass0013
  · exact rootBaseWordsPass0014
  · exact rootBaseWordsPass0015

#print axioms rootBaseWords_pass

end Erdos848.GeneratedTailTwentyMillionRootCoverage
