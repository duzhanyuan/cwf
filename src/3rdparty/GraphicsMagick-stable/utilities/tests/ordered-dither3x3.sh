#!/bin/sh
# Copyright (C) 2004 GraphicsMagick Group
#
# This program is covered by multiple licenses, which are described in
# Copyright.txt. You should have received a copy of Copyright.txt with this
# package; otherwise see http://www.graphicsmagick.org/www/Copyright.html.
#
#  Test for 'gm' utility.
#

set -e # Exit on any error
. ${srcdir}/utilities/tests/common.sh

OUTFILE=TileOrderedDither3_out.miff
rm -f ${OUTFILE}
${GM} convert ${CONVERT_FLAGS} ${MODEL_MIFF} -equalize -ordered-dither intensity 3x3 -label Ordered3x3 ${OUTFILE}
