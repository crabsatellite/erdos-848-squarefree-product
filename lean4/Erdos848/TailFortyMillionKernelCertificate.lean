import Erdos848.TailFortyMillionKernelCertificateEven
import Erdos848.TailFortyMillionKernelCertificateOdd

namespace Erdos848

/-! Dispatch the compacted even and odd terminal-certificate builders. -/

noncomputable def fortyMillionKernelTerminalCertificate_of_branch
    {block : FortyMillionTenBranchBlock}
    {N : Nat} {B : Finset Nat} {branch : TwentyMillionBranch}
    (hcover : block.Covers N)
    (hBout : Erdos848OutsideSet N B)
    (hbranch : TwentyMillionBranchApplies N B branch) :
    FortyMillionKernelTerminalCertificate block N B := by
  cases branch with
  | evenOneGeneric | evenOneCommonThree
  | evenTwoGeneric | evenTwoCommonThree
  | evenThreeGeneric | evenThreeCommonThree =>
      exact FortyMillionKernelBuilder.ofEvenBranch
        (by simp [FortyMillionKernelBuilder.isEven]) hcover hBout hbranch
  | oddTwoGeneric | oddTwoCommonThree
  | oddOneGeneric | oddOneCommonThree =>
      exact FortyMillionKernelBuilder.ofOddBranch
        (by simp [FortyMillionKernelBuilder.isOdd]) hcover hBout hbranch

end Erdos848
