function g = sigmoid(z)
% Compute sigmoid functoon for given input

g = 1.0 ./ (1.0 + exp(-z));
end
