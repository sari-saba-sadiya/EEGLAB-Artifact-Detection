function eeglab_to_mat()

fullpath = '/home/sadisari/Projects/attention-capacity-eeg/';
datfolder = '/sl_from_raw/';
outfolder = '/mat-files/';
files = dir(fullfile([fullpath,datfolder], '*.set'));
for fileIdx=1:numel(files)
    [EEG, command] = pop_loadset(files(fileIdx).name,[fullpath,datfolder]);
    eegmat = EEG.data;
    [p,f,e]=fileparts(files(fileIdx).name);
    save([fullpath,outfolder,f,'.mat'],'eegmat');
end
end