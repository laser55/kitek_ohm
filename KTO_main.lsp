					;[                                                           ]
					;[            KTO_main.MNL                                   ]
					;[                                                           ]
					;[        KiTek Ohm voor acad                                ]
					;[                                                           ]
					;[by Joakin Kirschen Special thanks to LeeMac and TerryCAD   ]

(vl-load-com)
;;Initialise Functions
(if (not L12_SUPPORT)
  (load "L12_SUPPORT.LSP")
)
(if (not L12_LABVARS)
  (load "L12_LABVARS.LSP")
)
(if (not L12_ERRORTRAP)
  (load "L12_ERRORTRAP.LSP")
)
(if (not L12_TEKST)
  (load "L12_TEKST.LSP")
)
(if (not L12_ARCERING)
  (load "L12_ARCERING.LSP")
)
(if (not L12_PLOT)
  (load "L12_PLOT.LSP")
)
(if (not L12_DIMENSIONS)
  (load "L12_DIMENSIONS.LSP")
)
(if (not L12_BLOCKS)
  (load "L12_BLOCKS.LSP")
)
(if (not L12_TEKEN)
  (load "L12_TEKEN.LSP")
)
(if (not L12_PREUPDATE)
  (load "L12_PREUPDATE.LSP")
)
(if (not L12_STANDARD)
  (load "L12_STANDARD.LSP")
)
(if (not L12_INSTEL)
  (load "L12_INSTEL.LSP")
)
(if (not L12_SETTINGS)
  (load "L12_SETTINGS.LSP")
)
(if (not L12_EXCEL)
  (load "L12_EXCEL.LSP")
)
(if (not L12_STEAL)
  (load "L12_STEAL.LSP")
)
(if (not L12_AMG_READEXCEL.LSP)
  (load "L12_AMG_READEXCEL.LSP")
)

(if (not L12_AUTOTRAP.LSP)
  (load "L12_AUTOTRAP.LSP")
)

;;-----[ Globale variabelen ]-------------
(setq L12_Lab_version 2012.52)
(setq L12_GMI_stamp 7139)
(setq LabPathDest (vl-filename-directory (findfile "Lab2012.MNL")))
(if (not(getenv "L12_Disipline"))(setenv "L12_Disipline" "AC-"))			;register presets
(if (not(getenv "L12_UpdateSettings"))(setenv "L12_UpdateSettings" "2"))	;register presets
(if (not(getenv "L12_AutosaveSettings"))(setenv "L12_AutosaveSettings" "50"))
(setq gl_autosave (atoi (getenv "L12_AutosaveSettings")))

;;-----[ Preset LAB2012 ]-----------------------------
(princ "\n\nPreset Lab2012...\n")
(menucmd "p30=+Lab2012.POPL1")
(menucmd "p30=+Lab2012.POPL2")
(menucmd "p30=+Lab2012.POPL3")
(menucmd "p30=+Lab2012.POP1")
(setq ccCurColor "1")
(setq ccCurLType "CONTINUOUS")
(setq arctoggle "0")
(setvar "PEDITACCEPT" 1)
(setvar "layernotify" 0)
(setvar "cmdecho" 0)
(setvar "annoautoscale" 0)
(if (> (atof (getvar 'AcadVer))  18.2) (setvar "startmode" 0))
(setvar "annoallvisible" 1)
(setvar "hpcolor" "bylayer")
(setvar "hplayer" ".")
(setvar "cetransparency" 0)
;(L12_basecheck)
(setvar "UCSICON" 1)
;(command "nwload")
(L12_moveparmeters)
(L12_statusb)				;	(lees)
(L12_moveparmeters)
(setvar "cmdecho" 1)
(princ "\n Done!\n")





