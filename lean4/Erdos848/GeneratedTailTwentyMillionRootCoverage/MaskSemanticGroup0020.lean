import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0020Part00
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0020Part01
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0020Part02
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0020Part03
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0020Part04
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0020Part05
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0020Part06
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0020Part07
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0020Part08
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0020Part09
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0020Part10
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0020Part11
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0020Part12
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0020Part13
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0020Part14
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskSemanticGroup0020Part15
import Erdos848.GeneratedTailTwentyMillionRootCoverage.MaskDataGroup0020
import Erdos848.TailTwentyMillionRootMaskCongr

namespace Erdos848.GeneratedTailTwentyMillionRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem rootMaskSemanticGroup0020Part00_group_passes :
    rootMaskSemanticGroup0020Part00.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0020
        rootTwistQrMaskWords0020) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0020Part00_passes) p hp
  have hnormal : rootNormalQrMaskWords0020 p =
      rootNormalQrMaskWords0020Part00 p := by
    simp only [rootMaskSemanticGroup0020Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0020 p =
      rootTwistQrMaskWords0020Part00 p := by
    simp only [rootMaskSemanticGroup0020Part00, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0020Part01_group_passes :
    rootMaskSemanticGroup0020Part01.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0020
        rootTwistQrMaskWords0020) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0020Part01_passes) p hp
  have hnormal : rootNormalQrMaskWords0020 p =
      rootNormalQrMaskWords0020Part01 p := by
    simp only [rootMaskSemanticGroup0020Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0020 p =
      rootTwistQrMaskWords0020Part01 p := by
    simp only [rootMaskSemanticGroup0020Part01, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0020Part02_group_passes :
    rootMaskSemanticGroup0020Part02.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0020
        rootTwistQrMaskWords0020) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0020Part02_passes) p hp
  have hnormal : rootNormalQrMaskWords0020 p =
      rootNormalQrMaskWords0020Part02 p := by
    simp only [rootMaskSemanticGroup0020Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0020 p =
      rootTwistQrMaskWords0020Part02 p := by
    simp only [rootMaskSemanticGroup0020Part02, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0020Part03_group_passes :
    rootMaskSemanticGroup0020Part03.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0020
        rootTwistQrMaskWords0020) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0020Part03_passes) p hp
  have hnormal : rootNormalQrMaskWords0020 p =
      rootNormalQrMaskWords0020Part03 p := by
    simp only [rootMaskSemanticGroup0020Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0020 p =
      rootTwistQrMaskWords0020Part03 p := by
    simp only [rootMaskSemanticGroup0020Part03, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0020Part04_group_passes :
    rootMaskSemanticGroup0020Part04.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0020
        rootTwistQrMaskWords0020) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0020Part04_passes) p hp
  have hnormal : rootNormalQrMaskWords0020 p =
      rootNormalQrMaskWords0020Part04 p := by
    simp only [rootMaskSemanticGroup0020Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0020 p =
      rootTwistQrMaskWords0020Part04 p := by
    simp only [rootMaskSemanticGroup0020Part04, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0020Part05_group_passes :
    rootMaskSemanticGroup0020Part05.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0020
        rootTwistQrMaskWords0020) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0020Part05_passes) p hp
  have hnormal : rootNormalQrMaskWords0020 p =
      rootNormalQrMaskWords0020Part05 p := by
    simp only [rootMaskSemanticGroup0020Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0020 p =
      rootTwistQrMaskWords0020Part05 p := by
    simp only [rootMaskSemanticGroup0020Part05, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0020Part06_group_passes :
    rootMaskSemanticGroup0020Part06.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0020
        rootTwistQrMaskWords0020) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0020Part06_passes) p hp
  have hnormal : rootNormalQrMaskWords0020 p =
      rootNormalQrMaskWords0020Part06 p := by
    simp only [rootMaskSemanticGroup0020Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0020 p =
      rootTwistQrMaskWords0020Part06 p := by
    simp only [rootMaskSemanticGroup0020Part06, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0020Part07_group_passes :
    rootMaskSemanticGroup0020Part07.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0020
        rootTwistQrMaskWords0020) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0020Part07_passes) p hp
  have hnormal : rootNormalQrMaskWords0020 p =
      rootNormalQrMaskWords0020Part07 p := by
    simp only [rootMaskSemanticGroup0020Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0020 p =
      rootTwistQrMaskWords0020Part07 p := by
    simp only [rootMaskSemanticGroup0020Part07, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0020Part08_group_passes :
    rootMaskSemanticGroup0020Part08.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0020
        rootTwistQrMaskWords0020) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0020Part08_passes) p hp
  have hnormal : rootNormalQrMaskWords0020 p =
      rootNormalQrMaskWords0020Part08 p := by
    simp only [rootMaskSemanticGroup0020Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0020 p =
      rootTwistQrMaskWords0020Part08 p := by
    simp only [rootMaskSemanticGroup0020Part08, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0020Part09_group_passes :
    rootMaskSemanticGroup0020Part09.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0020
        rootTwistQrMaskWords0020) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0020Part09_passes) p hp
  have hnormal : rootNormalQrMaskWords0020 p =
      rootNormalQrMaskWords0020Part09 p := by
    simp only [rootMaskSemanticGroup0020Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0020 p =
      rootTwistQrMaskWords0020Part09 p := by
    simp only [rootMaskSemanticGroup0020Part09, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0020Part10_group_passes :
    rootMaskSemanticGroup0020Part10.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0020
        rootTwistQrMaskWords0020) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0020Part10_passes) p hp
  have hnormal : rootNormalQrMaskWords0020 p =
      rootNormalQrMaskWords0020Part10 p := by
    simp only [rootMaskSemanticGroup0020Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0020 p =
      rootTwistQrMaskWords0020Part10 p := by
    simp only [rootMaskSemanticGroup0020Part10, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0020Part11_group_passes :
    rootMaskSemanticGroup0020Part11.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0020
        rootTwistQrMaskWords0020) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0020Part11_passes) p hp
  have hnormal : rootNormalQrMaskWords0020 p =
      rootNormalQrMaskWords0020Part11 p := by
    simp only [rootMaskSemanticGroup0020Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0020 p =
      rootTwistQrMaskWords0020Part11 p := by
    simp only [rootMaskSemanticGroup0020Part11, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0020Part12_group_passes :
    rootMaskSemanticGroup0020Part12.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0020
        rootTwistQrMaskWords0020) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0020Part12_passes) p hp
  have hnormal : rootNormalQrMaskWords0020 p =
      rootNormalQrMaskWords0020Part12 p := by
    simp only [rootMaskSemanticGroup0020Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0020 p =
      rootTwistQrMaskWords0020Part12 p := by
    simp only [rootMaskSemanticGroup0020Part12, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0020Part13_group_passes :
    rootMaskSemanticGroup0020Part13.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0020
        rootTwistQrMaskWords0020) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0020Part13_passes) p hp
  have hnormal : rootNormalQrMaskWords0020 p =
      rootNormalQrMaskWords0020Part13 p := by
    simp only [rootMaskSemanticGroup0020Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0020 p =
      rootTwistQrMaskWords0020Part13 p := by
    simp only [rootMaskSemanticGroup0020Part13, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0020Part14_group_passes :
    rootMaskSemanticGroup0020Part14.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0020
        rootTwistQrMaskWords0020) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0020Part14_passes) p hp
  have hnormal : rootNormalQrMaskWords0020 p =
      rootNormalQrMaskWords0020Part14 p := by
    simp only [rootMaskSemanticGroup0020Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0020 p =
      rootTwistQrMaskWords0020Part14 p := by
    simp only [rootMaskSemanticGroup0020Part14, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

theorem rootMaskSemanticGroup0020Part15_group_passes :
    rootMaskSemanticGroup0020Part15.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0020
        rootTwistQrMaskWords0020) = true := by
  apply List.all_eq_true.mpr
  intro p hp
  have hlocal := (List.all_eq_true.mp
    rootMaskSemanticGroup0020Part15_passes) p hp
  have hnormal : rootNormalQrMaskWords0020 p =
      rootNormalQrMaskWords0020Part15 p := by
    simp only [rootMaskSemanticGroup0020Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  have htwist : rootTwistQrMaskWords0020 p =
      rootTwistQrMaskWords0020Part15 p := by
    simp only [rootMaskSemanticGroup0020Part15, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    rcases hp with rfl <;> rfl
  rw [Erdos848.twentyMillionRootMaskPassesWith_congr_at
    hnormal htwist]
  exact hlocal

def rootMaskSemanticGroup0020 : List ℕ :=
  [2141, 2143, 2153, 2161, 2179, 2203, 2207, 2213, 2221, 2237, 2239, 2243, 2251, 2267, 2269, 2273]

theorem rootMaskSemanticGroup0020_passes :
    rootMaskSemanticGroup0020.all
      (Erdos848.twentyMillionRootMaskPassesWith
        rootNormalQrMaskWords0020
        rootTwistQrMaskWords0020) = true := by
  rw [show rootMaskSemanticGroup0020 =
      rootMaskSemanticGroup0020Part00 ++
      rootMaskSemanticGroup0020Part01 ++
      rootMaskSemanticGroup0020Part02 ++
      rootMaskSemanticGroup0020Part03 ++
      rootMaskSemanticGroup0020Part04 ++
      rootMaskSemanticGroup0020Part05 ++
      rootMaskSemanticGroup0020Part06 ++
      rootMaskSemanticGroup0020Part07 ++
      rootMaskSemanticGroup0020Part08 ++
      rootMaskSemanticGroup0020Part09 ++
      rootMaskSemanticGroup0020Part10 ++
      rootMaskSemanticGroup0020Part11 ++
      rootMaskSemanticGroup0020Part12 ++
      rootMaskSemanticGroup0020Part13 ++
      rootMaskSemanticGroup0020Part14 ++
      rootMaskSemanticGroup0020Part15 by rfl]
  simp only [List.all_append]
  rw [rootMaskSemanticGroup0020Part00_group_passes]
  rw [rootMaskSemanticGroup0020Part01_group_passes]
  rw [rootMaskSemanticGroup0020Part02_group_passes]
  rw [rootMaskSemanticGroup0020Part03_group_passes]
  rw [rootMaskSemanticGroup0020Part04_group_passes]
  rw [rootMaskSemanticGroup0020Part05_group_passes]
  rw [rootMaskSemanticGroup0020Part06_group_passes]
  rw [rootMaskSemanticGroup0020Part07_group_passes]
  rw [rootMaskSemanticGroup0020Part08_group_passes]
  rw [rootMaskSemanticGroup0020Part09_group_passes]
  rw [rootMaskSemanticGroup0020Part10_group_passes]
  rw [rootMaskSemanticGroup0020Part11_group_passes]
  rw [rootMaskSemanticGroup0020Part12_group_passes]
  rw [rootMaskSemanticGroup0020Part13_group_passes]
  rw [rootMaskSemanticGroup0020Part14_group_passes]
  rw [rootMaskSemanticGroup0020Part15_group_passes]
  rfl

end Erdos848.GeneratedTailTwentyMillionRootCoverage
