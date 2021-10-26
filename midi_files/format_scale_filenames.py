import os

base_path = "/home/lcchy/repos/orac_modules/MIDI_Scales_Reference_Pack/Midi_Scales_Pack/More_Scales/"
dirs = os.listdir(base_path)
print(dirs)
for dir in dirs:
    for filename in os.listdir(base_path + dir):
        new_filename = filename.split(" - ")[0] + "-" + filename.split(" - ")[1].replace(" ", "_")
        filepath = base_path + dir + "/"
        os.rename(filepath + filename, filepath + new_filename)
        # print(filepath + new_filename)