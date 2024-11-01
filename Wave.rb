# Welcome to Sonic Pi

use_synth :saw
10.times do |i|
  play 62, release: i / 10.0
  sleep 1 - i / 10.0
end

2.times do
  play 38
  sleep 0.25
  play 50
  sleep 0.25
  play 62
  sleep 0.5
  use_synth_defaults amp: 0.75
  play 62
  sleep 0.25
  use_synth_defaults amp: 1
  play 62
  sleep 1
end

2.times do
  play 62
  sleep 0.25
  play 50
  sleep 0.25
  play 38
  sleep 0.5
  use_synth_defaults amp: 0.75
  play 38
  sleep 0.25
  use_synth_defaults amp: 1
  play 38
  sleep 1
end

6.times do |i|
  play 38 + i * 4,release: 0.5
  sleep 0.2 + i / 18.0
end

6.times do |i|
  play 62 - i * 4,release: 0.5
  sleep 0.2 + i / 18.0
end

sleep 0.5
use_synth_defaults amp: 0.75
play 38
sleep 0.25
use_synth_defaults amp: 1
play 38, release: 2
sleep 1