# Formats the midi file for KeitMcmillan Qunexus LED control
# RUN berforehand: rm MIDI_Scales_Reference_Pack/Midi_Scales_Pack/More_Scales/*-Scales/new_*
import os
import mido

base_path = "/home/lcchy/repos/orac_modules/keith_scales/midi_stuff/MIDI_Scales_Reference_Pack/Midi_Scales_Pack/More_Scales/"
dirs = os.listdir(base_path)
for (i, dir) in enumerate(dirs):
    scales = os.listdir(base_path + dir)
    off_name = dir.split("-")[0] + "-Off.mid"
    scales.append(off_name)
    for (j, filename) in enumerate(scales):
        filepath = base_path + dir + "/" + filename
        new_filepath = base_path + dir + "/new_" + filename

        print(filepath)
        new_midi = mido.MidiFile()
        new_track = mido.MidiTrack()
        new_midi.tracks.append(new_track)

        if filename != off_name:
            midi = mido.MidiFile(filepath)
            for msg in midi.tracks[1]:
                if not(msg.is_meta):
                    msg.note -= 12
                    if msg.type == "note_on" and 48 <= msg.note <= 72:
                        print(msg)
                        new_track.append(msg)
                    if msg.type == "note_off":
                        break

        new_midi.save(new_filepath)