# loading image data
load('image_data.mat');
m = size(X, 1);
rp = randperm(m);
load('weights.mat');
for i = 1:m
    % Display image
    displayData(X(rp(i), :));
    % Predict 
    pred = predict(Theta1, Theta2, X(rp(i),:));
    % Display Prediction
    fprintf('\nNeural Network Prediction: %d \n', pred);
    % Next input
    s = input('','s');
    if s == 'q'
      break
    end
end

