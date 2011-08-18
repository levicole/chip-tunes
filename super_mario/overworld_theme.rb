require 'rubygems'
require 'bloops'

b = Bloops.new
b.tempo = 200

lead = b.sound Bloops::SQUARE
alto = b.sound Bloops::SQUARE
bass = b.sound Bloops::SINE

instruments = {:lead => lead, :alto => alto, :bass => bass}
# instruments = {:alto => alto}

phrases = {}

phrases[:lead] = {}
phrases[:lead][:intro] = <<EOF
8e5 8e5 8 8e5 8 8c5 8e5 8
g5 4 g4 4
EOF

phrases[:lead][:chorus] = <<EOF
8c5 8 8 8g4 8 8 8e4 8
8 8a 8 8b 8 8a# 8a 8
6g 6e5 6g 8a 8 8f 8g
8 8e5 8 8c 8d 8b4 4
EOF
phrases[:lead][:b] = <<EOF
4 8g5 8f# 8f 8d 8 8e
8 8g#4 8a 8c5 8 8a4 8c5 8d5
4 8g5 8f# 8f 8d 8 8e
8 8c6 8 8c6 8c6 8 4
4 8g5 8f# 8f 8d 8 8e
8 8g#4 8a 8c5 8 8a4 8c5 8d5
8 8 8d#5 8 8 8d5 8 8
8c5 8 8 8 8 8 8 8
EOF

phrases[:lead][:c] = <<EOF
8c5 8c5 8 8c5 8 8c5 8d5 8
8e5 8c5 8 8a4 8g4 8 8 8
8c5 8c5 8 8c5 8 8c5 8d5 8e5
1
8c5 8c5 8 8c5 8 8c5 8d5 8
8e5 8c5 8 8a4 8g4 8 8 8
EOF

phrases[:lead][:d] = <<EOF
8e5 8c5 8 8g4 8 8 8g# 8
8a  8f5 8 8f5 8a4 8 8 8
6b4 6a5 6a5 6a5 6g5 6f5
8e5 8c5 8 8a4 8g 8 8 8
8e5 8c5 8 8g4 8 8 8g# 8
8a  8f5 8 8f5 8a4 8 8 8
8b  8f5 8 8f5 6f 6e 6d
8c5 8e4 8 8e4 8c4 8 8 8
EOF

phrases[:alto] = {}
phrases[:alto][:intro] = <<EOF
8f# 8f# 8 8f# 8 8f# 8f# 8
b 4 g3 4
EOF

phrases[:alto][:chorus] = <<EOF
8e4 8 8 8c4 8 8 8g3 8
8 8c4 8 8d 8 8c# 8c 8
6c 6g4 6b4 8c5 8 8a4 8b4
8 8g4 8 8e4 8f 8d 4
EOF

phrases[:alto][:b] = <<EOF
4 8e5 8d# 8d 8b4 8 8c5
8 8e4 8f 8g 8 8c4 8e4 8f4
4 8e5 8d# 8d 8b4 8 8c5
8 8g5 8 8g5 8g5 8 4
4 8e5 8d# 8d 8b4 8 8c5
8 8e4 8f 8g 8 8c4 8e4 8f4
8 8 8g#4 8 8 8f4 8 8
8e4 8 8 8 8 8 8 8
EOF

phrases[:alto][:c] = <<EOF
8g#4 8g# 8 8g# 8 8g# 8a# 8
8g4 8e4 8 8e4 8c4 8 8 8
8g#4 8g# 8 8g# 8 8g# 8a# 8g
1
8g#4 8g# 8 8g# 8 8g# 8a# 8
8g4 8e4 8 8e4 8c4 8 8 8
EOF

phrases[:alto][:d] = <<EOF
8c5 8a4 8 8e4 8 8 8e  8
8f  8c5 8 8c5 8f4 8 8 8
6g4 6f5 6f5 6f5 6e5 6d5
8c5 8a4 8 8f4 8e 8 8 8
8c5 8a4 8 8e4 8 8 8e  8
8f  8c5 8 8c5 8f4 8 8 8
8g  8d5 8 8d5 6d 6c 6b4
8g 8e4 8 8   8   8 8 8
EOF

phrases[:bass] = {}
phrases[:bass][:intro] = <<EOF
8d3 8d3 8 8d3 8 8d 8d 8
g4 4 g3 4
EOF

phrases[:bass][:chorus] = <<EOF
8g3 8 8 8e 8 8 8c3 8
8 8f3 8 8g 8 8f# 8f 8
6e3 6c4 6e4 8f4 8 8d4 8e4
8 8c4 8 8a3 8b3 8g 4
EOF

phrases[:bass][:b] = <<EOF
8c3 8 8 8g3 8 8 8c4 8
8f3 8 8 8c4 8c4 8 8f3 8
8c3 8 8 8e3 8 8 8g3 8c4
4     4     4   8g3 8
8c3 8 8 8g3 8 8 8c4 8
8f3 8 8 8c4 8c4 8 8f3 8
8c3 8 8g#3 8 8 8a#3 8 8
8c4 8 8 8g3 8g3 8 8c3 8
EOF

phrases[:bass][:c] = <<EOF
8g#2 8 8 8d#3 8 8 8g#3 8
8g3 8 8 8c3 8 8 8g2 8
8g#2 8 8 8d#3 8 8 8g#3 8
8g3 8 8 8c3 8 8 8g2 8
8g#2 8 8 8d#3 8 8 8g#3 8
8g3 8 8 8c3 8 8 8g2 8
EOF

phrases[:bass][:d] = <<EOF
8c3 8 8 8f# 8g 8 8c4 8
8f3 8 8f3 8 8c4 8c4 8f3 8
8d3 8 8 8f 8g 8 8b 8
8g3 8 8g3 8 8c4 8c4 8g3 8
8c3 8 8 8f# 8g 8 8c4 8
8f3 8 8f3 8 8c4 8c4 8f3 8
8g3 8 8 8g3 6g3 6a3 6b3
8c4 8 8g3 8 8c3 8 8 8
EOF

sequence = [:intro, :chorus, :chorus, :b, :b, :c, :intro, :d, :d]

instruments.each do |name, instrument|
  b.tune instrument, sequence.collect{ |section| phrases[name][section] }.join("\n")
end

# b.record('mario.wav')
b.play
sleep 1 while !b.stopped?
