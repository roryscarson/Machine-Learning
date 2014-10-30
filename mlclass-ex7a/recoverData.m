function X_rec = recoverData(Z, U, K)
%RECOVERDATA Recovers an approximation of the original data when using the 
%projected data
%   X_rec = RECOVERDATA(Z, U, K) recovers an approximation the 
%   original data that has been reduced to K dimensions. It returns the
%   approximate reconstruction in X_rec.
%

% You need to return the following variables correctly.
X_rec = zeros(size(Z, 1), size(U, 1));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the approximation of the data by projecting back
%               onto the original space using the top K eigenvectors in U.
%
%               For the i-th example Z(i,:), the (approximate)
%               recovered data for dimension j is given as follows:
%                    v = Z(i, :)';
%                    recovered_j = v' * U(j, 1:K)';
%
%               Notice that U(j, 1:K) is a row vector.
%               

%Submission Case
% K = 5
% U_reduce 11x5
% v = 5xK
% recover = 11x5

U_reduce = U(:, 1:K);
size(U_reduce) %2xK

v = Z(1:K, :)';
size(v) %50xK
              %2xK  *  Kx50
recovered_j = v' * U_reduce';
size(recovered_j) %1x2

%50x2
X_rec = recovered_j';


%for i = 1:K
%	v = Z(i, :)';
%	for j = 1:K
%		recovered_j = v' * U_reduce(j, 1:K)';
%	X_rec(:,i) = recovered_j;
%end


% =============================================================

end
