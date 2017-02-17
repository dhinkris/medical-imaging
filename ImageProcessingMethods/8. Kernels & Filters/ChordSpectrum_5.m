clear;
fp = fopen('c_piano.raw','r');
chord=zeros(240630,1);
chord(:)=fread(fp,240630,'short');
fclose(fp);
plot(chord)
ylim([-22000 22000]);
foo=input('Now proceed to the spectrum of the chord played on piano...');
kpchord=abs(fftshift(fft(chord)));
plot(kpchord);
xlim([100000 140000])
foo=input('Now look at the chord played on acoustic guitar...');
fp = fopen('c_aguitar.raw','r');
chord=zeros(239616,1);
chord(:)=fread(fp,239616,'short');
fclose(fp);
plot(chord)
ylim([-22000 22000]);
foo=input('Now proceed to the spectrum of the chord played on acoustic guitar...');
kagchord=abs(fftshift(fft(chord)));
plot(kagchord);
xlim([100000 140000])
foo=input('Now look at the chord played on electric guitar...');
fp = fopen('c_eguitar.raw','r');
chord=zeros(239616,1);
chord(:)=fread(fp,239616,'short');
fclose(fp);
plot(chord)
ylim([-22000 22000]);
foo=input('Now proceed to the spectrum of the chord played on acoustic guitar...');
kegchord=abs(fftshift(fft(chord)));
plot(kegchord);
xlim([100000 140000])


