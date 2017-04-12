% By Efe Ulas Akay Seyitoglu, Evren Ergen, Huseyin Beyan

fun = 'sin2x';
dx = [0];
x = [0];

for i = 1:63
    dx = [dx sin(2*i*0.1)];
end
for i = 1:63
    x = [x i*0.1];
end
x = x';
units=6;

makerbf
Phi = calcPhi(x,m,var);
tPhi = Phi';
% for t = 1:20
%     for k = 1:64
%         deltaW = etha*exp(1)*Phi(:,k);
%         w = w +deltaW;
%     end
% end
% Phi = Phi';
% y = Phi * w;
w = dx/tPhi; 
y = Phi *w';
% 
% rbfplot1(x,y,dx,units);
res = dx - y';
r = sum(abs(res)); 