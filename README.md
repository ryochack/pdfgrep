# pdfgrep.sh
grep script for pdf files.

## Requirements
pdfgrep scripts requires `pdftotext` command is included as part of the poppler-utils package.

## How to use
```
$ pdfgrep.sh <pattern> [path]
```

## Example
```
$ pdfgrep.sh "sleep"

AAA.pdf: - NVIC_LP_SLEEPDEEP: Low
AAA.pdf: Power DEEPSLEEP request.
AAA.pdf: - NVIC_LP_SLEEPONEXIT: Low
AAA.pdf: Power Sleep on Exit.
BBB.pdf: Step 6 (Sleep, DMA, ADC,RTC)
BBB.pdf: – Switch to Lower-power sleep mode (BAM mode)
BBB.pdf: • Sleep mode
BBB.pdf: • Low-power sleep mode
```
