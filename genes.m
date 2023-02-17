
vidObje = VideoWriter("Genes.avi");
open(vidObje);
clf;
str = 'ATCG';
for i = 1:10 
   r = randi(4,1,25);
   DNAs = str(r)
   hold on;
   figure(1)
   text(0.1,0.5,DNAs,'FontSize',28)
   axis off
   wid = [400,400,800,100]
   set(gcf, 'Position',  wid)
   drawnow
   pause(0.5)
   for x = 1:20
    currFrame = getframe(gcf);
    writeVideo(vidObje,currFrame);
   end
   clf
end
A = [0.4 0.1 0.2 0.3 ;
   0.2 0.3 0.3 0.2;
   0.1 0.4 0.3 0.2;
   0.3 0.2 0.4 0.1]; 
[V,D] = eig(A)
close(vidObje);