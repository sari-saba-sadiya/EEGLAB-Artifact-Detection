function eeglab_to_mat()

fullpath = '/home/sadisari/Projects/attention-capacity-eeg/';
datfolder = '/sl_from_raw/';
rjctfolder = '/outlier-mat/';
files = dir(fullfile([fullpath,datfolder], '*.set'));
for fileIdx=1:numel(files)
    [EEG, command] = pop_loadset(files(fileIdx).name,[fullpath,datfolder]);
    eegmat = EEG.data;
    [p,f,e]=fileparts(files(fileIdx).name);
    load([fullpath,rjctfolder,'rjct_',f,'.mat']);
    newEEG = pop_rejepoch( EEG, reject_list, 0);
    newEEG = pop_saveset( newEEG,'filename',files(fileIdx).name,'filepath','./sl_from_raw_rjct/');
end
end