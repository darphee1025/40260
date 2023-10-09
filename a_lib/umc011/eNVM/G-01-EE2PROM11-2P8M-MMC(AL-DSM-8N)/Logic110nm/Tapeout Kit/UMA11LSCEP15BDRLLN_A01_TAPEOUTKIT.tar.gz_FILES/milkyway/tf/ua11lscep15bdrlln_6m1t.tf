
Technology	{
		name				= "ua11lscep15bdrlln"
		dielectric			= 2.9e-05
		unitTimeName			= "ns"
		timePrecision			= 1000
		unitLengthName			= "micron"
		lengthPrecision			= 1000
		gridResolution			= 5
		unitVoltageName			= "V"
		voltagePrecision		= 1000
		unitCurrentName			= "mA"
		currentPrecision		= 1000
		unitPowerName			= "uw"
		powerPrecision			= 10000
		unitResistanceName		= "kohm"
		resistancePrecision		= 10000000
		unitCapacitanceName		= "pf"
		capacitancePrecision		= 10000000
		unitInductanceName		= "nh"
		inductancePrecision		= 100
}

Color		7 {
		name				= "7"
		rgbDefined			= 1
		redIntensity			= 0
		greenIntensity			= 80
		blueIntensity			= 255
}

Color		8 {
		name				= "8"
		rgbDefined			= 1
		redIntensity			= 0
		greenIntensity			= 175
		blueIntensity			= 0
}

Color		9 {
		name				= "9"
		rgbDefined			= 1
		redIntensity			= 0
		greenIntensity			= 175
		blueIntensity			= 100
}

Color		18 {
		name				= "18"
		rgbDefined			= 1
		redIntensity			= 90
		greenIntensity			= 0
		blueIntensity			= 190
}

Color		19 {
		name				= "19"
		rgbDefined			= 1
		redIntensity			= 90
		greenIntensity			= 0
		blueIntensity			= 255
}

Color		23 {
		name				= "23"
		rgbDefined			= 1
		redIntensity			= 90
		greenIntensity			= 80
		blueIntensity			= 255
}

Color		28 {
		name				= "28"
		rgbDefined			= 1
		redIntensity			= 90
		greenIntensity			= 255
		blueIntensity			= 0
}

Color		33 {
		name				= "33"
		rgbDefined			= 1
		redIntensity			= 180
		greenIntensity			= 0
		blueIntensity			= 100
}

Color		38 {
		name				= "38"
		rgbDefined			= 1
		redIntensity			= 180
		greenIntensity			= 80
		blueIntensity			= 190
}

Color		40 {
		name				= "40"
		rgbDefined			= 1
		redIntensity			= 180
		greenIntensity			= 175
		blueIntensity			= 0
}

Color		41 {
		name				= "41"
		rgbDefined			= 1
		redIntensity			= 180
		greenIntensity			= 175
		blueIntensity			= 100
}

Color		42 {
		name				= "42"
		rgbDefined			= 1
		redIntensity			= 180
		greenIntensity			= 175
		blueIntensity			= 190
}

Color		47 {
		name				= "47"
		rgbDefined			= 1
		redIntensity			= 180
		greenIntensity			= 255
		blueIntensity			= 255
}

Color		50 {
		name				= "50"
		rgbDefined			= 1
		redIntensity			= 255
		greenIntensity			= 0
		blueIntensity			= 190
}

Color		55 {
		name				= "55"
		rgbDefined			= 1
		redIntensity			= 255
		greenIntensity			= 80
		blueIntensity			= 255
}

Color		59 {
		name				= "59"
		rgbDefined			= 1
		redIntensity			= 255
		greenIntensity			= 175
		blueIntensity			= 255
}

Color		61 {
		name				= "61"
		rgbDefined			= 1
		redIntensity			= 255
		greenIntensity			= 255
		blueIntensity			= 100
}

Color		62 {
		name				= "62"
		rgbDefined			= 1
		redIntensity			= 255
		greenIntensity			= 255
		blueIntensity			= 190
}

Layer		"ME1" {
		layerNumber			= 46
		maskName			= "metal1"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "cyan"
		lineStyle			= "solid"
		pattern				= "backSlash"
		pitch				= 0.40
		defaultWidth			= 0.20
		minWidth			= 0.16
		minSpacing			= 0.16
		unitMinResistance               = 0.000131
		unitNomResistance               = 0.000196
		unitMaxResistance               = 0.000251
		unitMinThickness		= 0.23
		unitNomThickness		= 0.26
		unitMaxThickness		= 0.29
		endOfLine3NeighborThreshold	= 0.175
		endOfLine3NeighborMinSpacing    = 0.185
	       endOfLine3NeighborSideMinSpacing = 0.185
	       endOfLine3NeighborSideKeepoutLength  = 0.1
	  endOfLine3NeighborCornerKeepoutWidth  = 0.005
		fatContactThreshold		= 10
		fatTblDimension			= 3
		fatTblThreshold			= (0.16,2,5.005)
		fatTblSpacing			= (0.16,0.22,0.26,
						   0.22,0.22,0.26,
						   0.26,0.26,0.26)
		minArea				= 0.1024
		minEnclosedArea			= 0.3072
		maxCurrDensity                  = 10.1
}

Layer		"VI1" {
		layerNumber			= 47
		maskName			= "via1"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "magenta"
		lineStyle			= "solid"
		pattern				= "rectangleX"
		pitch				= 0
		defaultWidth			= 0.2
		minWidth			= 0.2
		minSpacing			= 0.2
		maxStackLevel			= 4
		maxNumAdjacentCut		= 2
		adjacentCutRange		= 0.24
		fatTblDimension			= 2
		fatTblThreshold                 = (0,1.4)
		fatTblFatContactNumber		= (21,29)
		fatTblFatContactMinCuts		= (1,2)
		maxCurrDensity                  = 5.25e5
}

DesignRule {
		layer1 = "ME1"
		layer2 = "VI1"
		endOfLineEnc3NeighborThreshold     = 0.175
		endOfLineEnc3NeighborMinSpacing    = 0.185
		endOfLineEnc3NeighborSideMinSpacing = 0.185
		endOfLineEnc3NeighborMinEnclosure  = 0.04
	endOfLineEnc3NeighborCornerKeepoutWidth    = 0.005
	endOfLineEnc3NeighborSideKeepoutLength   = 0.04
}


Layer		"ME2" {
		layerNumber			= 48
		maskName			= "metal2"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "slash"
		pitch				= 0.4
		defaultWidth			= 0.2
		minWidth			= 0.2
		minSpacing			= 0.2
		unitMinResistance               = 0.000102
		unitNomResistance               = 0.000147
		unitMaxResistance               = 0.000192
		unitMinThickness		= 0.28
		unitNomThickness		= 0.31
		unitMaxThickness		= 0.34
		fatContactThreshold		= 10
		fatTblDimension			= 3
		fatTblThreshold			= (0.2,2,5.005)
		fatTblSpacing			= (0.2,0.22,0.26,
						   0.22,0.22,0.26,
						   0.26,0.26,0.26)
		minArea				= 0.1024
		minEnclosedArea			= 0.3072		
		maxCurrDensity                  = 12.7
}

Layer		"VI2" {
		layerNumber			= 49
		maskName			= "via2"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "59"
		lineStyle			= "solid"
		pattern				= "rectangleX"
		pitch				= 0
		defaultWidth			= 0.2
		minWidth			= 0.2
		minSpacing			= 0.2
		maxStackLevel			= 4
		maxNumAdjacentCut		= 2
		adjacentCutRange		= 0.24
		fatTblDimension			= 2
		fatTblThreshold                 = (0,1.4)
		fatTblFatContactNumber		= (31,39)
		fatTblFatContactMinCuts		= (1,2)
		maxCurrDensity                  = 6.75e5
}

Layer		"ME3" {
		layerNumber			= 50
		maskName			= "metal3"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "red"
		lineStyle			= "solid"
		pattern				= "backSlash"
		pitch				= 0.40
		defaultWidth			= 0.2
		minWidth			= 0.2
		minSpacing			= 0.2
		unitMinResistance               = 0.000102
		unitNomResistance               = 0.000147
		unitMaxResistance               = 0.000192
		unitMinThickness		= 0.28
		unitNomThickness		= 0.31
		unitMaxThickness		= 0.34
		fatContactThreshold		= 10
		fatTblDimension			= 3
		fatTblThreshold			= (0.2,2,5.005)
		fatTblSpacing			= (0.2,0.22,0.26,
						   0.22,0.22,0.26,
						   0.26,0.26,0.26)
		minArea				= 0.1024
		minEnclosedArea			= 0.3072	
		maxCurrDensity                  = 12.7	
}

Layer		"VI3" {
		layerNumber			= 51
		maskName			= "via3"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "rectangleX"
		pitch				= 0
		defaultWidth			= 0.2
		minWidth			= 0.2
		minSpacing			= 0.2
		maxStackLevel			= 4
		maxNumAdjacentCut		= 2
		adjacentCutRange		= 0.24
		fatTblDimension			= 2
		fatTblThreshold                 = (0,1.4)
		fatTblFatContactNumber		= (41,49)
		fatTblFatContactMinCuts		= (1,2)
		maxCurrDensity                  = 6.75e5
}

Layer		"ME4" {
		layerNumber			= 52
		maskName			= "metal4"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "green"
		lineStyle			= "solid"
		pattern				= "backSlash"
		pitch				= 0.4
		defaultWidth			= 0.2
		minWidth			= 0.2
		minSpacing			= 0.2
		unitMinResistance               = 0.000102
		unitNomResistance               = 0.000147
		unitMaxResistance               = 0.000192
		unitMinThickness		= 0.28
		unitNomThickness		= 0.31
		unitMaxThickness		= 0.34
		fatContactThreshold		= 10
		fatTblDimension			= 3
		fatTblThreshold			= (0.2,2,5.005)
		fatTblSpacing			= (0.2,0.22,0.26,
						   0.22,0.22,0.26,
						   0.26,0.26,0.26)
		minArea				= 0.1024
		minEnclosedArea			= 0.3072	
		maxCurrDensity                  = 12.7	
}

Layer		"VI4" {
		layerNumber			= 53
		maskName			= "via4"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "rectangleX"
		pitch				= 0
		defaultWidth			= 0.2
		minWidth			= 0.2
		minSpacing			= 0.2
		maxStackLevel			= 4
		maxNumAdjacentCut		= 2
		adjacentCutRange		= 0.24
		fatTblDimension			= 2
		fatTblThreshold                 = (0,1.4)
		fatTblFatContactNumber		= (51,59)
		fatTblFatContactMinCuts		= (1,2)
		maxCurrDensity                  = 6.75e5
}

Layer		"ME5" {
		layerNumber			= 54
		maskName			= "metal5"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "59"
		lineStyle			= "solid"
		pattern				= "slash"
		pitch				= 0.40
		defaultWidth			= 0.2
		minWidth			= 0.2
		minSpacing			= 0.2
		unitMinResistance               = 0.000102
		unitNomResistance               = 0.000147
		unitMaxResistance               = 0.000192
		unitMinThickness		= 0.28
		unitNomThickness		= 0.31
		unitMaxThickness		= 0.34
		fatContactThreshold		= 10
		fatTblDimension			= 3
		fatTblThreshold			= (0.2,2,5.005)
		fatTblSpacing			= (0.2,0.22,0.26,
						   0.22,0.22,0.26,
						   0.26,0.26,0.26)
		minArea				= 0.1024
		minEnclosedArea			= 0.3072		
		maxCurrDensity                  = 12.7
}

Layer		"VI5" {
		layerNumber			= 55
		maskName			= "via5"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "cyan"
		lineStyle			= "solid"
		pattern				= "rectangleX"
		pitch				= 0
		defaultWidth			= 0.4
		minWidth			= 0.4
		minSpacing			= 0.4
		maxStackLevel			= 4
		maxNumAdjacentCut		= 2
		adjacentCutRange		= 0.5
		fatTblDimension			= 2
		fatTblThreshold                 = (0,1.4)
		fatTblFatContactNumber		= (61,69)
		fatTblFatContactMinCuts		= (1,2)
		maxCurrDensity                  = 2e5
}

Layer		"ME6" {
		layerNumber			= 56
		maskName			= "metal6"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "orange"
		lineStyle			= "solid"
		pattern				= "backSlash"
		pitch				= 0.88
		defaultWidth			= 0.44
		minWidth			= 0.44
		minSpacing			= 0.44
		unitMinResistance               = 0.000009
		unitNomResistance               = 0.000039
		unitMaxResistance               = 0.000079
		unitMinThickness                = 0.8
		unitNomThickness                = 0.885
		unitMaxThickness                = 0.97
		fatTblDimension			= 2
		fatTblThreshold			= (0.44,2)
		fatTblSpacing			= (0.44,0.5,
						   0.5,0.5)
		minArea				= 0.4075
		maxCurrDensity                  = 53.5
}


Stipple		"rectangleX" {
		width			= 1
		height			= 1
		pattern			= (1) 
}

Stipple		"dots" {
		width			= 4
		height			= 4
		pattern			= (0, 1, 0, 1, 
					   0, 0, 0, 0, 
					   0, 1, 0, 1, 
					   0, 0, 0, 0) 
}

Tile		"unit" {
		width				= 0.4
		height				= 2.4
}

Layer		"DIFF" {
		layerNumber			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "brown"
		lineStyle			= "solid"
		pattern				= "slash"
}

Layer		"PWEL" {
		layerNumber			= 2
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "blank"
}

Layer		"NWEL" {
		layerNumber			= 3
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "blank"
}

Layer		"PPLUS" {
		layerNumber			= 11
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "brown"
		lineStyle			= "solid"
		pattern				= "blank"
}

Layer		"NPLUS" {
		layerNumber			= 12
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "orange"
		lineStyle			= "solid"
		pattern				= "blank"
}

Layer		"VTPH" {
		layerNumber			= 15
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "red"
		lineStyle			= "solid"
		pattern				= "blank"
}

Layer		"VTNH" {
		layerNumber			= 16
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "blank"
}

Layer		"PESD" {
		layerNumber			= 32
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "18"
		lineStyle			= "solid"
		pattern				= "blank"
}

Layer		"MG" {
		layerNumber			= 35
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "blank"
}

Layer		"SAB" {
		layerNumber			= 36
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "40"
		lineStyle			= "solid"
		pattern				= "enter"
}

Layer		"TG" {
		layerNumber			= 37
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "50"
		lineStyle			= "dot"
		pattern				= "blank"
}

Layer		"CONT" {
		layerNumber			= 39
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "9"
		lineStyle			= "solid"
		pattern				= "solid"
}

Layer		"PO1" {
		layerNumber			= 41
		maskName			= "poly"
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "9"
		lineStyle			= "solid"
		pattern				= "backSlash"
}

Layer		"TMV_RDL" {
		layerNumber			= 66
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "blue"
		lineStyle			= "solid"
		pattern				= "blank"
}

Layer		"AL_RDL" {
		layerNumber			= 67
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "red"
		lineStyle			= "solid"
		pattern				= "blank"
}

Layer		"PASV_RDL" {
		layerNumber			= 68
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "green"
		lineStyle			= "solid"
		pattern				= "blank"
}

Layer		"RSYMBOL" {
		layerNumber			= 81
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "blank"
}

Layer		"PSYMBOL" {
		layerNumber			= 82
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
}

Layer		"TEXT" {
		layerNumber			= 85
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "7"
		lineStyle			= "solid"
		pattern				= "blank"
}

Layer		"PADMARK" {
		layerNumber			= 90
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
}

Layer		"IOID" {
		layerNumber			= 91
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "blue"
		lineStyle			= "solid"
		pattern				= "blank"
}

Layer   	"XDIODE" {
		layerNumber			= 96
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
}

Layer		"SEPGND" {
		layerNumber			= 99
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
}

Layer		"M1_TEXT" {
		layerNumber			= 101
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "cyan"
		lineStyle			= "solid"
		pattern				= "blank"
}

Layer		"M2_TEXT" {
		layerNumber			= 102
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "blank"
}

Layer		"M3_TEXT" {
		layerNumber			= 103
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "red"
		lineStyle			= "solid"
		pattern				= "blank"
}

Layer		"M4_TEXT" {
		layerNumber			= 104
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "green"
		lineStyle			= "solid"
		pattern				= "blank"
}

Layer		"M5_TEXT" {
		layerNumber			= 105
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "59"
		lineStyle			= "solid"
		pattern				= "blank"
}

Layer		"M6_TEXT" {
		layerNumber			= 106
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "23"
		lineStyle			= "solid"
		pattern				= "blank"
}

Layer		"M7_TEXT" {
		layerNumber			= 107
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "62"
		lineStyle			= "solid"
		pattern				= "blank"
}

LayerDataType   "DNW_LV" {
		dataTypeNumber			= 2
		layerNumber			= 4
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "red"
		lineStyle			= "solid"
		pattern				= "blank"
}

LayerDataType   "DIMPBK" {
		dataTypeNumber			= 1
		layerNumber			= 7
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "green"
		lineStyle			= "solid"
		pattern				= "blank"
}

LayerDataType	"SBLK" {
		dataTypeNumber			= 71
		layerNumber			= 36
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "18"
		lineStyle			= "solid"
		pattern				= "blank"
}

LayerDataType	"GOX523P3VIMPMK" {
		dataTypeNumber			= 71
		layerNumber			= 85
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "blue"
		lineStyle			= "solid"
		pattern				= "blank"
}

LayerDataType	"DIFDMBK" {
		dataTypeNumber			= 1
		layerNumber			= 70
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
}

LayerDataType	"PLYDMBK" {
		dataTypeNumber			= 1
		layerNumber			= 71
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
}

LayerDataType	"M1DMBK" {
		dataTypeNumber			= 1
		layerNumber			= 72
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
}

LayerDataType	"M2DMBK" {
		dataTypeNumber			= 1
		layerNumber			= 73
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
}

LayerDataType	"M3DMBK" {
		dataTypeNumber			= 1
		layerNumber			= 74
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
}

LayerDataType	"M4DMBK" {
		dataTypeNumber			= 1
		layerNumber			= 75
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
}

LayerDataType	"M5DMBK" {
		dataTypeNumber			= 1
		layerNumber			= 76
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
}

LayerDataType	"M6DMBK" {
		dataTypeNumber			= 1
		layerNumber			= 77
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
}

LayerDataType	"M7DMBK" {
		dataTypeNumber			= 1
		layerNumber			= 78
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
}

LayerDataType	"BOACMK" {
		dataTypeNumber			= 1
		layerNumber			= 90
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "red"
		lineStyle			= "solid"
		pattern				= "blank"
}

LayerDataType	"LOGOMK" {
		dataTypeNumber			= 1
		layerNumber			= 91
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
}

LayerDataType	"M1SLBK" {
		dataTypeNumber			= 2
		layerNumber			= 72
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
}

LayerDataType	"M2SLBK" {
		dataTypeNumber			= 2
		layerNumber			= 73
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
}

LayerDataType	"M3SLBK" {
		dataTypeNumber			= 2
		layerNumber			= 74
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
}

LayerDataType	"M4SLBK" {
		dataTypeNumber			= 2
		layerNumber			= 75
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
}

LayerDataType	"M5SLBK" {
		dataTypeNumber			= 2
		layerNumber			= 76
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
}

LayerDataType	"M6SLBK" {
		dataTypeNumber			= 2
		layerNumber			= 77
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
}

LayerDataType	"M7SLBK" {
		dataTypeNumber			= 2
		layerNumber			= 78
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
}

LayerDataType  	"BOUNDMK" {
		dataTypeNumber			= 2
		layerNumber			= 121
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "cyan"
		lineStyle			= "solid"
		pattern				= "blank"
}

LayerDataType	"M1SLOT" {
		dataTypeNumber			= 9
		layerNumber			= 72
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
}

LayerDataType	"M2SLOT" {
		dataTypeNumber			= 9
		layerNumber			= 73
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
}

LayerDataType	"M3SLOT" {
		dataTypeNumber			= 9
		layerNumber			= 74
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
}

LayerDataType	"M4SLOT" {
		dataTypeNumber			= 9
		layerNumber			= 75
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
}

LayerDataType	"M5SLOT" {
		dataTypeNumber			= 9
		layerNumber			= 76
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
}

LayerDataType	"M6SLOT" {
		dataTypeNumber			= 9
		layerNumber			= 77
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
}

LayerDataType	"M7SLOT" {
		dataTypeNumber			= 9
		layerNumber			= 78
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
}

LayerDataType	"IPWM" {
		dataTypeNumber			= 63
		layerNumber			= 63
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "7"
		lineStyle			= "solid"
		pattern				= "blank"
}






ContactCode	"VI1_1_HV" {
		contactCodeNumber		= 21
		cutLayer			= "VI1"
		lowerLayer			= "ME1"
		upperLayer			= "ME2"
		isDefaultContact		= 1
		cutWidth			= 0.2
		cutHeight			= 0.2
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.06
		lowerLayerEncWidth		= 0.06
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.2
		unitMinResistance		= 0.004
		unitNomResistance		= 0.010
		unitMaxResistance		= 0.03
}

ContactCode	"VI1_2_VV" {
		contactCodeNumber		= 22
		cutLayer			= "VI1"
		lowerLayer			= "ME1"
		upperLayer			= "ME2"
		cutWidth			= 0.2
		cutHeight			= 0.2
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.06
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.06
		minCutSpacing			= 0.2
		unitMinResistance		= 0.004
		unitNomResistance		= 0.010
		unitMaxResistance		= 0.03
}

ContactCode	"VI1_FAT" {
		contactCodeNumber		= 28
		cutLayer			= "VI1"
		lowerLayer			= "ME1"
		upperLayer			= "ME2"
		isFatContact			= 1
		cutWidth			= 0.2
		cutHeight			= 0.2
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.06
		lowerLayerEncWidth		= 0.06
		lowerLayerEncHeight		= 0.18
		minCutSpacing			= 0.24
		unitMinResistance		= 0.004
		unitNomResistance		= 0.010
		unitMaxResistance		= 0.03
}

ContactCode	"VI1_FRAM" {
		contactCodeNumber		= 29
		cutLayer			= "VI1"
		lowerLayer			= "ME1"
		upperLayer			= "ME2"
		cutWidth			= 0.2
		cutHeight			= 0.2
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.06
		lowerLayerEncWidth		= 0.06
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.24
		unitMinResistance		= 0.004
		unitNomResistance		= 0.010
		unitMaxResistance		= 0.03
}

ContactCode	"VI2_1_VH" {
		contactCodeNumber		= 31
		cutLayer			= "VI2"
		lowerLayer			= "ME2"
		upperLayer			= "ME3"
		isDefaultContact		= 1
		cutWidth			= 0.2
		cutHeight			= 0.2
		upperLayerEncWidth		= 0.06
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.06
		minCutSpacing			= 0.2
		unitMinResistance		= 0.004
		unitNomResistance		= 0.007
		unitMaxResistance		= 0.03
}

ContactCode	"VI2_FAT" {
		contactCodeNumber		= 38
		cutLayer			= "VI2"
		lowerLayer			= "ME2"
		upperLayer			= "ME3"
		isFatContact			= 1
		cutWidth			= 0.2
		cutHeight			= 0.2
		upperLayerEncWidth		= 0.06
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0.18
		lowerLayerEncHeight		= 0.06
		minCutSpacing			= 0.24
		unitMinResistance		= 0.004
		unitNomResistance		= 0.007
		unitMaxResistance		= 0.03
}

ContactCode	"VI2_FARM" {
		contactCodeNumber		= 39
		cutLayer			= "VI2"
		lowerLayer			= "ME2"
		upperLayer			= "ME3"
		cutWidth			= 0.2
		cutHeight			= 0.2
		upperLayerEncWidth		= 0.06
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.06
		minCutSpacing			= 0.24
		unitMinResistance		= 0.004
		unitNomResistance		= 0.007
		unitMaxResistance		= 0.03
}

ContactCode	"VI3_1_HV" {
		contactCodeNumber		= 41
		cutLayer			= "VI3"
		lowerLayer			= "ME3"
		upperLayer			= "ME4"
		isDefaultContact		= 1
		cutWidth			= 0.2
		cutHeight			= 0.2
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.06
		lowerLayerEncWidth		= 0.06
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.2
		unitMinResistance		= 0.004
		unitNomResistance		= 0.007
		unitMaxResistance		= 0.03
}

ContactCode	"VI3_FAT" {
		contactCodeNumber		= 48
		cutLayer			= "VI3"
		lowerLayer			= "ME3"
		upperLayer			= "ME4"
		isFatContact			= 1
		cutWidth			= 0.2
		cutHeight			= 0.2
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.06
		lowerLayerEncWidth		= 0.06
		lowerLayerEncHeight		= 0.18
		minCutSpacing			= 0.24
		unitMinResistance		= 0.004
		unitNomResistance		= 0.007
		unitMaxResistance		= 0.03
}

ContactCode	"VI3_FARM" {
		contactCodeNumber		= 49
		cutLayer			= "VI3"
		lowerLayer			= "ME3"
		upperLayer			= "ME4"
		cutWidth			= 0.2
		cutHeight			= 0.2
		upperLayerEncWidth		= 0
		upperLayerEncHeight		= 0.06
		lowerLayerEncWidth		= 0.06
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.24
		unitMinResistance		= 0.004
		unitNomResistance		= 0.007
		unitMaxResistance		= 0.03
}

ContactCode	"VI4_1_VH" {
		contactCodeNumber		= 51
		cutLayer			= "VI4"
		lowerLayer			= "ME4"
		upperLayer			= "ME5"
		isDefaultContact		= 1
		cutWidth			= 0.2
		cutHeight			= 0.2
		upperLayerEncWidth		= 0.06
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.06
		minCutSpacing			= 0.2
		unitMinResistance		= 0.004
		unitNomResistance		= 0.007
		unitMaxResistance		= 0.03
}

ContactCode	"VI4_FAT" {
		contactCodeNumber		= 58
		cutLayer			= "VI4"
		lowerLayer			= "ME4"
		upperLayer			= "ME5"
		isFatContact			= 1
		cutWidth			= 0.2
		cutHeight			= 0.2
		upperLayerEncWidth		= 0.06
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0.18
		lowerLayerEncHeight		= 0.06
		minCutSpacing			= 0.24
		unitMinResistance		= 0.004
		unitNomResistance		= 0.007
		unitMaxResistance		= 0.03
}

ContactCode	"VI4_FARM" {
		contactCodeNumber		= 59
		cutLayer			= "VI4"
		lowerLayer			= "ME4"
		upperLayer			= "ME5"
		cutWidth			= 0.2
		cutHeight			= 0.2
		upperLayerEncWidth		= 0.06
		upperLayerEncHeight		= 0
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.06
		minCutSpacing			= 0.24
		unitMinResistance		= 0.004
		unitNomResistance		= 0.007
		unitMaxResistance		= 0.03
}

ContactCode	"VI5_1_HV" {
		contactCodeNumber		= 61
		cutLayer			= "VI5"
		lowerLayer			= "ME5"
		upperLayer			= "ME6"
		isDefaultContact		= 1
		cutWidth			= 0.4
		cutHeight			= 0.4
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.06
		lowerLayerEncWidth		= 0.06
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.4
		unitMinResistance		= 0.002
		unitNomResistance		= 0.0055
		unitMaxResistance		= 0.0095
}

ContactCode	"VI5_FAT" {
		contactCodeNumber		= 68
		cutLayer			= "VI5"
		lowerLayer			= "ME5"
		upperLayer			= "ME6"
		isFatContact			= 1
		cutWidth			= 0.4
		cutHeight			= 0.4
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.06
		lowerLayerEncWidth		= 0.06
		lowerLayerEncHeight		= 0.18
		minCutSpacing			= 0.45
		unitMinResistance		= 0.002
		unitNomResistance		= 0.0055
		unitMaxResistance		= 0.0095
}

ContactCode	"VI5_FARM" {
		contactCodeNumber		= 69
		cutLayer			= "VI5"
		lowerLayer			= "ME5"
		upperLayer			= "ME6"
		cutWidth			= 0.4
		cutHeight			= 0.4
		upperLayerEncWidth		= 0.02
		upperLayerEncHeight		= 0.06
		lowerLayerEncWidth		= 0.06
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.45
		unitMinResistance		= 0.002
		unitNomResistance		= 0.0055
		unitMaxResistance		= 0.0095
}


DesignRule	{
		layer1				= "VI2"
		layer2				= "VI1"
		minSpacing			= 0
		stackable			= 1
}

DesignRule	{
		layer1				= "VI3"
		layer2				= "VI2"
		minSpacing			= 0
		stackable			= 1
}

DesignRule	{
		layer1				= "VI4"
		layer2				= "VI3"
		minSpacing			= 0
		stackable			= 1
}

DesignRule	{
		layer1				= "VI5"
		layer2				= "VI4"
		minSpacing			= 0
		stackable			= 1
}

PRRule		{
		rowSpacingTopTop		= 0
		rowSpacingBotBot		= 0
		abuttableTopTop			= 1
		abuttableBotBot			= 1
}
		
