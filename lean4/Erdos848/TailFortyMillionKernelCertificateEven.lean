import Erdos848.TailFortyMillionKernelCertificateEvenOne
import Erdos848.TailFortyMillionKernelCertificateEvenTwo
import Erdos848.TailFortyMillionKernelCertificateEvenThree

namespace Erdos848

def FortyMillionKernelBuilder.isEven : TwentyMillionBranch → Prop
  | .evenOneGeneric | .evenOneCommonThree
  | .evenTwoGeneric | .evenTwoCommonThree
  | .evenThreeGeneric | .evenThreeCommonThree => True
  | _ => False

noncomputable def FortyMillionKernelBuilder.ofEvenBranch
    {block : FortyMillionTenBranchBlock}
    {N : Nat} {B : Finset Nat} {branch : TwentyMillionBranch}
    (heven : FortyMillionKernelBuilder.isEven branch)
    (hcover : block.Covers N)
    (hBout : Erdos848OutsideSet N B)
    (hbranch : TwentyMillionBranchApplies N B branch) :
    FortyMillionKernelTerminalCertificate block N B := by
  cases branch with
  | evenOneGeneric | evenOneCommonThree =>
      exact FortyMillionKernelBuilder.ofEvenOneBranch
        (by simp [FortyMillionKernelBuilder.isEvenOne]) hcover hBout hbranch
  | evenTwoGeneric | evenTwoCommonThree =>
      exact FortyMillionKernelBuilder.ofEvenTwoBranch
        (by simp [FortyMillionKernelBuilder.isEvenTwo]) hcover hBout hbranch
  | evenThreeGeneric | evenThreeCommonThree =>
      exact FortyMillionKernelBuilder.ofEvenThreeBranch
        (by simp [FortyMillionKernelBuilder.isEvenThree]) hcover hBout hbranch
  | oddTwoGeneric | oddTwoCommonThree
  | oddOneGeneric | oddOneCommonThree =>
      simp [FortyMillionKernelBuilder.isEven] at heven

end Erdos848
