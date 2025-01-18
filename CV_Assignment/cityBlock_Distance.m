Cx = 50; % Center x-coordinate
Cy = 50; % Center y-coordinate
Radius = 20; % Radius for the City Block distance threshold

A = zeros(100, 100); % Initialize the matrix to all zeros

for i = 1:100
    for j = 1:100
        % Calculate City Block (Manhattan) distance
        if abs(i - Cx) + abs(j - Cy) <= Radius
            A(i, j) = 255; % Set pixel to white if within the radius
        end
    end
end

imshow(A, []); % Display the result