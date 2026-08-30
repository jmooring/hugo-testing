+++
title = 'Home'
date = 2026-08-30T09:19:56-07:00
draft = false
details = 'https://github.com/gohugoio/hugo/issues/15257'
description = "--minify produces invalid markup with SVG"
+++

<svg width="0" height="0" style="margin: 0; padding: 0">
	<defs>
		<filter id="distort1">
			<feTurbulence baseFrequency="0.01 0.01" numOctaves="1" result="noise"  />
			<feDisplacementMap in="SourceGraphic" in2="noise" scale="10" xChannelSelector="R" yChannelSelector="R" />
		</filter>
		<filter id="distort2">
			<feTurbulence baseFrequency="0.11 0.01" numOctaves="1" result="noise"  />
			<feDisplacementMap in="SourceGraphic" in2="noise" scale="20" xChannelSelector="R" yChannelSelector="R" />
		</filter>
	</defs>
</svg>
