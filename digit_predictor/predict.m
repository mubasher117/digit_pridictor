function p = predict(Theta1, Theta2, X)

m = size(X, 1);
num_labels = size(Theta2, 1);
p = zeros(size(X, 1), 1);

X = [ones(m, 1) X];
h2 = sigmoid(X*Theta1');

h2 = [ones(m, 1) h2];
for j = 1 : m
  predictions = size(num_labels,1);
  for i=1:num_labels
    predictions(i) = sigmoid(h2(j,:)* Theta2(i,:)');
  endfor
  [val, idx] = max(predictions);
  p(j) = idx;
endfor










% =========================================================================


end
